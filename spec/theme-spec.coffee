describe "VS Blue UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('vs-blue-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('vs-blue-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('vs-blue-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-vs-blue-ui-layoutmode')).toBe 'auto'

    atom.config.set('vs-blue-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-vs-blue-ui-layoutmode')).toBe 'spacious'

  it "allows the tab sizing to be set via config", ->
    expect(document.documentElement.getAttribute('theme-vs-blue-ui-tabsizing')).toBe 'auto'

    atom.config.set('vs-blue-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-vs-blue-ui-tabsizing')).toBe 'minimum'
