'use strict'

describe 'Service: User', ->

  # load the service's module
  beforeEach module 'weddingWallApp:services'
  $httpBackend = {}

  # instantiate service
  User = {}
  beforeEach inject (_User_, _UserBase_, _$httpBackend_) ->
    $httpBackend = _$httpBackend_
    UserBase = _UserBase_
    User = _User_

  it 'should query the f***ing /api/users/:userId', ->
    $httpBackend.expectGET('/api/users/12345').respond({})
    User.get(id: 12345)
    $httpBackend.flush()
