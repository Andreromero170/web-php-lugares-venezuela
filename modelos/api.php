<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, PATCH");
header("Access-Control-Allow-Headers: Content-Type");

include "db.php"; // Tu conexión con PDO

$data = json_decode(file_get_contents("php://input"), true);
$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        // Si se pasa el parámetro 'nombre' se filtra por nombre
        if (isset($_GET['nombre'])) {
            $stmt = $pdo->prepare("
                SELECT lugares.*, categorias.nombre AS categoria_nombre 
                FROM lugares 
                JOIN categorias ON lugares.categoria_id = categorias.id 
                WHERE lugares.nombre LIKE ?
            ");
            $stmt->execute(['%' . $_GET['nombre'] . '%']);
        }
        // Si se pasa 'categorias=true', devolver todas las categorías
        elseif (isset($_GET['categorias']) && $_GET['categorias'] === 'true') {
            $stmt = $pdo->query("SELECT * FROM categorias");
            echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
            exit;
        }
        // Si no se pasa 'nombre' ni 'categorias', devolver todos los lugares
        else {
            $stmt = $pdo->query("
                SELECT lugares.*, categorias.nombre AS categoria_nombre 
                FROM lugares 
                JOIN categorias ON lugares.categoria_id = categorias.id
            ");
        }
        echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
        break;

        case 'POST':
            // Validar si se recibió una imagen
            if (isset($_FILES['imagen_principal']) && $_FILES['imagen_principal']['error'] === UPLOAD_ERR_OK) {
                $imagenTmp = $_FILES['imagen_principal']['tmp_name'];
                $nombreImagen = basename($_FILES['imagen_principal']['name']);
                $rutaDestino = '../uploads/' . $nombreImagen; // Asegúrate de que esta carpeta exista y tenga permisos
        
                // Mover la imagen a la carpeta de destino
                if (move_uploaded_file($imagenTmp, $rutaDestino)) {
                    // Insertar en la base de datos
                    $stmt = $pdo->prepare("
                        INSERT INTO lugares (nombre, descripcion, estado, categoria_id, imagen_principal) 
                        VALUES (?, ?, ?, ?, ?)
                    ");
                    $stmt->execute([
                        $_POST['nombre'],
                        $_POST['descripcion'],
                        $_POST['estado'],
                        $_POST['categoria_id'],
                        $rutaDestino // Guarda la ruta o nombre de la imagen en la BD
                    ]);
                    echo json_encode(["mensaje" => "Lugar creado"]);
                } else {
                    http_response_code(500);
                    echo json_encode(["error" => "Error al mover la imagen"]);
                }
            } else {
                http_response_code(400);
                echo json_encode(["error" => "Imagen no válida"]);
            }
            break;
        

    case 'PUT':
    case 'PATCH':
        parse_str($_SERVER['QUERY_STRING'], $params);
        $id = $params['id'] ?? null;
        if ($id) {
            $stmt = $pdo->prepare("
                UPDATE lugares 
                SET nombre = ?, descripcion = ?, estado = ?, categoria_id = ? 
                WHERE id = ?
            ");
            $stmt->execute([
                $data['nombre'],
                $data['descripcion'],
                $data['estado'],
                $data['categoria_id'],
                $id
            ]);
            echo json_encode(["mensaje" => "Lugar actualizado"]);
        } else {
            echo json_encode(["error" => "ID requerido para actualizar"]);
        }
        break;

    case 'DELETE':
        parse_str($_SERVER['QUERY_STRING'], $params);
        $id = $params['id'] ?? null;
        if ($id) {
            $stmt = $pdo->prepare("DELETE FROM lugares WHERE id = ?");
            $stmt->execute([$id]);
            echo json_encode(["mensaje" => "Lugar eliminado"]);
        } else {
            echo json_encode(["error" => "ID requerido para eliminar"]);
        }
        break;
}
