describe "CssSnippets", ->
  promise = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('css-snippets')

  describe "when the package is activated", ->
    it "is active", ->
      expect(atom.packages.isPackageActive('css-snippets')).toBe true
