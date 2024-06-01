const express = require('express');
const authController = require('../controllers/auth'); // Import path module

const router = express.Router();

// Route for serving the root URL ("/") to get profile
router.get('/', authController.isLoggedIn, (req, res) => {
  res.render('profile', {
    user: req.user
  });
});

// Route for serving the root URL ("/") to get registration
router.get('/register', (req, res) => {
  res.render('register');
});

// Route for serving the root URL ("/") to get login
router.get('/login', (req, res) => {
  res.render('login');
});

// Route for serving the root URL ("/") to get resetpass
router.get('/resetpass', (req, res) => {
  res.render('resetpass');
});

// Route for serving the root URL ("/") to get isLogin check
router.get('/profile', authController.isLoggedIn, (req, res) => {
  console.log(req.user);
  if (req.user) {
    res.render('profile', {
      user: req.user
    });
  } else {
    res.redirect('/login');
  }

})

module.exports = router;