
describe 'atom-writing-env', ->

  mainModule = null

  beforeEach ->

    waitsForPromise ->
      atom.packages.activatePackage 'atom-writing-env'
        .then (pack) ->
          mainModule = pack.mainModule
          return

    describe 'when the atom-writing-env package is activated', ->

      it 'activates successfully', ->
        expect(mainModule).toBeDefined()
        expect(mainModule).toBeTruthy()
        expect(mainModule.activate).toBeDefined()
        expect(mainModule.deactivate).toBeDefined()
