const models = require('../models')

const getAllVillains = async (request, response) => {
  try {
    const villains = await models.villains.findAll()

    return response.send(villains)
  } catch (error) {
    return response.status(404).send('Sorry not found')
  }
}

const getVillainBySlug = async (request, response) => {
  try {
    const { slug } = request.params

    const villains = await models.villains.findOne({ where: { slug } })

    return response.send(villains)
  } catch (error) {
    return response.status(404).send('Sorry not found')
  }
}


/* const saveNewVillain = (request, response) => {
  const {
    name, movie, slug
  } = request.body
  if (!name || !movie || !slug) {
    return response.status(400).send('The following fields are required: name, movie, slug')
  }
  const newVillain = {
    name: 'Red Skull', movie: 'Captain America: The First Avenger', slug: 'red-skull',
  }
  villains.push(newVillain)
  return response.status(201).send(newVillain)
} */



module.exports = { getAllVillains, getVillainBySlug }
