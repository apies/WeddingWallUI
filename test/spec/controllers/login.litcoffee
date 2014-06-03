Login Controller 
----------------

    describe 'Controller: LoginCtrl', ->

load the controller's module
      
      beforeEach module 'weddingWallApp'

      LoginCtrl = {}
      scope = {}
      User = {}
      $httpBackend = {}
      $routeParams = {}
      $rootScope = {}


      # Initialize the controller and a mock scope
      beforeEach inject ($controller, _$rootScope_, _User_, _$routeParams_, _$httpBackend_) ->
        # $location = _$location_
        $httpBackend = _$httpBackend_
        $rootScope = _$rootScope_
        $routeParams = _$routeParams_
        User = _User_
        
        $routeParams.userId = 12345
        $httpBackend.whenGET('/api/users/12345').respond(user12345)
        scope = $rootScope.$new()

        
        user12345 = 
          _id: 12345
          username: 'Alan Pies'

        LoginCtrl = $controller 'LoginCtrl', {
          $scope: scope
        }
        # 



        $httpBackend.flush()

      it 'has assigned the logged in user to the $rootscope', ->
        user12345 = 
          _id: 12345
          username: 'Alan Pies'

        expect($rootScope.currentUser).toBe(user12345)
