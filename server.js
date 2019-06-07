let http = require('http');
let fs = require('fs');
let express = require('express');
let path = require('path');

// let app = require('./app');

const PORT = 8080;

let router = express();

router.use(express.urlencoded({ extended: true }));
router.use(express.json());

router.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, 'index.html'));
});

router.get('/tables', function (req, res) {
    res.sendFile(path.join(__dirname, 'tables.html'));
});

router.get('/reservations', function (req, res) {
    res.sendFile(path.join(__dirname, 'reservations.html'));
});

router.post('/api/reservations', function (req, res) {
    let reservation = req.body;

    console.log(req.body);
    res.json(reservation);
});

router.listen(PORT, () => {
    console.log('App listening on PORT ' + PORT);
});