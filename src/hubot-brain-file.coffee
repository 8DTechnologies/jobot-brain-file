# Description:
#   File brain for hubot
#
# Dependencies:
#   None
#
# Configuration:
#   FILE_BRAIN_PATH
#
# Commands:
#   None
#
# Author:
#   dustyburwell, scboucher

fs   = require 'fs'
path = require 'path'

module.exports = (robot) ->
  brainPath = process.env.FILE_BRAIN_PATH or '/var/hubot'
  brainPath = path.join brainPath, 'brain-dump.json'
  try
    data = fs.readFileSync brainPath, 'utf-8'
    if data
      robot.brain.mergeData JSON.parse(data)
  catch error
    console.log('Unable to read file', error) unless error.code is 'ENOENT'
  # add the option Readable, will output an indented json
  robot.brain.on 'save', (data) ->
    fs.writeFileSync brainPath, JSON.stringify(data, null, 4), 'utf-8'

