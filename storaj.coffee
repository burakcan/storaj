class Storaj
  constructor: (options = {}) ->
    options.name         or=  "defaultStorage"
    options.initialData  or=  {}
    @options               = options

    @_createStorage() if not localStorage.getItem(options.name)

  _createStorage : ->
    {name, initialData}    = @options
    initialData            = JSON.stringify initialData

    localStorage.setItem name, initialData

  set : (key, value) ->
    {name}                 = @options
    storageObject          = @getAll()
    storageObject[key]     = value
    storageObject          = JSON.stringify storageObject

    localStorage.setItem name, storageObject

  get : (key) -> @getAll()[key]

  remove : (key) ->
    {name}                 = @options
    storageObject          = @getAll()

    delete storageObject[key]

    storageObject          = JSON.stringify storageObject
    localStorage.setItem name, storageObject

  getAll : ->
    {name}                 = @options
    storageObject          = localStorage.getItem name
    storageObject          = JSON.parse storageObject

  removeAll : ->
    {name}                 = @options
    localStorage.setItem name, "{}"
