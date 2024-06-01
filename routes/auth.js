const express = require('express');
const authController = require('../controllers/auth'); // Import 

// router instance create
const router = express.Router();

// route
router.post('/register', authController.register);
router.post('/login', authController.login);
router.get('/logout', authController.logout);

module.exports = router;