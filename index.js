const express = require('express')
// const bodyParser = require('body-parser')
const { getAllVillains, getVillainBySlug } = require('./controllers/villains')
const app = express()

app.get('/', getAllVillains)

app.get('/villains/:input', getVillainBySlug)


app.all('*', (request, response) => {
  return response.sendStatus(404)
})

app.listen(1337, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port 1337..')
})
