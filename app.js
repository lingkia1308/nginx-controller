const express = require('express');
const app = express();
const port = 80;

// Simple route to respond with "Hello, World!"
app.get('/', (req, res) => {
  res.send('Hello, FKER');
});

// Example of a route that could simulate an error
app.get('/error', (req, res) => {
  // Simulating an error
  const error = new Error('Something went wrong!');
  throw error; // This will trigger the error-handling middleware
});

// Error-handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack); // Log the error stack
  res.status(500).send('Something went wrong!'); // Send a generic error message
});

// Start the server and listen on port 80
app.listen(port, () => {
  console.log(`App running and listening on port ${port}`);
});
