// CAPA DE PRESENTACIÓN: rutas de areas (solo lectura, cualquier rol autenticado)
const { Router } = require('express');
const controller = require('../controllers/areas.controller');
const { verificarToken } = require('../middlewares/auth');

const router = Router();

router.use(verificarToken);                // todas las rutas exigen token

router.get('/', controller.listar);       // GET /areas  y  GET /areas?ids=1,3
router.get('/:id', controller.obtener);   // GET /areas/:id

module.exports = router;
