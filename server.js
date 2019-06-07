let http = require('http');
let fs = require('fs');
let express = require('express');
let path = require('path');

// let app = require('./app');

const PORT = 8080;

let router = express();

router.use(express.urlencoded({ extended: true }));
router.use(express.json());

router.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

router.get('/tables', (req, res) => {
    res.sendFile(path.join(__dirname, 'tables.html'));
});

router.get('/reservations', (req, res) => {
    res.sendFile(path.join(__dirname, 'reservations.html'));
});

router.post('/api/reservations', (req, res) => {
    let reservation = req.body;

    console.log(req.body);
    res.json(reservation);
});

router.listen(PORT, () => {
    console.log('App listening on PORT ' + PORT);
});