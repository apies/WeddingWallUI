describe 'Controller: WeddingWallCtrl', ->

  # load the controller's module
  beforeEach module 'weddingWallApp'

  WeddingWallCtrl = {}
  scope = {}
  
  Post = {}
  $httpBackend = {}
  $resource = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _Post_, _$httpBackend_) ->
    Post = _Post_
    $httpBackend = _$httpBackend_
    scope = $rootScope.$new()
    WeddingWallCtrl = $controller 'WeddingWallCtrl', {
      $scope: scope
    }

  it 'should attach a list of posts to the scope', ->
    $httpBackend.expectGET('/api/posts').respond([1,2,3])
    $httpBackend.flush()
    expect(scope.posts.length).toBe 3

  it 'should attach a new post to the scope for writing on wall', ->
    expect(scope.posst).toBeDefined

  it 'should save a new post', ->
    $httpBackend.expectPOST('/api/posts').respond({})
    scope.postNow()
