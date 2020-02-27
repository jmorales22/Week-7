const express = require('express');
const app = express();

app.listen(3333, ()=> {
    console.log('Server running on port 3333');
});

app.get('/', (request, response) => {
    const snippet = `<h1>Hello World<\h1>`
   response
   .status(200)
   .send(snippet)
   .end()
})

const catsController = (req, res) => {
    const snippet = `<h1>Meow</h1>`;
    res
      .status(200)
      .send(snippet)
      .end();
  };
  
  const dogsController = (req, res) => {
    const snippet = `<h1>Woof</h1>`;
    res
      .status(200)
      .send(snippet)
      .end();
  };

  const cats_and_dogsController = (req, res) => {
    const snippet = `<h1>Living together</h1>`;
    res
    .status(200)
    .send(snippet)
    .end();
  };
  
  app.get('/cats', catsController);
  app.get('/dogs', dogsController);
  app.get('/cats_and_dogs', cats_and_dogsController)