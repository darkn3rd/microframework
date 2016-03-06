'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// Application
const app = express();

// Multiple Route Scenario
app.get(['/', '/hello'], function (req, res) {
  res.send('Hello world!\n');
});

// Dynamic Route Scenario
app.get('/hello/:username', function(req , res){
  res.send("Why Hello " + req.params.username);
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
