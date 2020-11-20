const express = require('express')
// const bodyParser = require('body-parser')
const { getAllVillains, getVillainBySlug, saveNewVillain } = require('./controllers/villains')
const app = express()

app.get('/', getAllVillains)

app.get('/villains/:slug', getVillainBySlug)

// app.post('/', bodyParser.json(), saveNewVillain)

app.all('*', (request, response) => {
  return response.sendStatus(404)
})

app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
