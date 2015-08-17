"use strict"
Beautifier = require('./beautifier')

module.exports = class JadeBeautify extends Beautifier
  name: "Jade"

  options: {
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) =>
      text = 'hello world'
      resolve text

    )
