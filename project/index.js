const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  console.log(`New access`+ req);
  res.send('Hello from Node.js and Docker, also docker compose! App started on port 3000');
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
