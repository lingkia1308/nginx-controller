const express = require('express');
const app = express();
const port = 80;

// Simple route to respond with "Hello, World!"
app.get('/', (req, res) => {
  res.send('Hello, YS Wong Yet Sheng!');
});

// Start the server and listen on port 80
app.listen(port, () => {
  console.log(`App running and listening on port ${port}`);
});

/// test ///