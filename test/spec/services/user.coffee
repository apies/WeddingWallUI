'use strict'

describe 'Service: User', ->

  # load the service's module
  beforeEach module 'weddingWallApp:services'

  # instantiate service
  User = {}
  beforeEach inject (_User_, _UserBase_) ->
    UserBase = _UserBase_
    User = _User_

  it 'should do something', ->
    expect(!!User).toBe true
