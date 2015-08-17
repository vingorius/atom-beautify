# Get Atom defaults
scope = ['source.js']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Jade"
  namespace: "jade"

  ###
  Supported Grammars
  ###
  grammars: [
    "Jade"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "jade"
  ]

  options:
    indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: defaultIndentChar
      minimum: 0
      description: "Indentation character"

}
