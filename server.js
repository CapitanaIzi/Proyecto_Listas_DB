const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Middleware para analizar el cuerpo de las solicitudes
app.use(bodyParser.json());

// Ruta GET
app.get('/api/tareas', (req, res) => {
    res.json([
        { id: 1, tarea: 'Aprender JavaScript' },
        { id: 2, tarea: 'Crear una API' }
    ]);
});

// Ruta POST
app.post('/api/tareas', (req, res) => {
    const nuevaTarea = req.body;
    // Aquí puedes agregar la lógica para guardar la nueva tarea
    // Por simplicidad, solo la devolvemos
    res.status(201).json(nuevaTarea);
});

// Iniciar el servidor
app.listen(port, () => {
    console.log(`API escuchando en http://localhost:${port}`);
});
