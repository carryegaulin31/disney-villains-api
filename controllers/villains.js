const villains = require('../villains')

const getAllVillains = (request, response) => {
  return response.send(villains)
}
const getVillainBySlug = (request, response) => {
  const { input } = request.params

  const foundVillain = villains.filter((villain) => {
    return villain.slug.includes(input)
  })

  return response.send(foundVillain)
}


module.exports = { getAllVillains, getVillainBySlug }
