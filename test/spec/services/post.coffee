describe 'Service: Post', ->

  # load the service's module
  beforeEach module 'weddingWallApp:services'

  # instantiate service
  Post = {}
  $httpBackend = {}
  $resource = {}

  beforeEach inject (_$resource_, _$httpBackend_, _Post_) ->
    $resource = _$resource_
    $httpBackend = _$httpBackend_
    Post = _Post_

  it 'should instantiate a new Post', ->
    post = new Post(content: "Hello Alan")
    expect(post.content).toBe "Hello Alan"


  it 'should know that new saves are post actions', ->
    post = new Post(content: "Hello Alan")
    post.$save()
    $httpBackend.expectPOST('/api/posts').respond(200, post)
    $httpBackend.flush()

  xit 'should know that update saves are put actions'

