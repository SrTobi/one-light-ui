root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'vs-blue-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'vs-blue-ui.layoutMode', (value) ->
      setLayoutMode(value)

    atom.config.observe 'vs-blue-ui.tabSizing', (value) ->
      setTabSizing(value)

  deactivate: ->
    unsetFontSize()
    unsetLayoutMode()
    unsetTabSizing()

# Font Size -----------------------
setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''

# Layout Mode -----------------------
setLayoutMode = (layoutMode) ->
  root.setAttribute('theme-vs-blue-ui-layoutmode', layoutMode.toLowerCase())

unsetLayoutMode = ->
  root.removeAttribute('theme-vs-blue-ui-layoutmode')

# Tab Sizing -----------------------
setTabSizing = (tabSizing) ->
  root.setAttribute('theme-vs-blue-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('theme-vs-blue-ui-tabsizing')
