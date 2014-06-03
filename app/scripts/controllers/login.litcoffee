 Login Controller
-----------------
The login controller handles client side auth, it is not completely
secure because the backend enforces the bulk of the security.


####Angular Controller Declaration *for more details see wedding_wall.litcoffee


    angular.module('weddingWallApp').controller 'LoginCtrl', ($scope, $rootScope, User, $routeParams) ->

### Controller setup

first we get the userId from the url paramater, a user with an 
id of 123 would login at *login/123*. This is not completely secure as you
can impersonate a user just by typing in their userId. However, we expect the
backend to handle encrypted session based auth preventing fake users from actually 
retreiving any real user data.

      id = $routeParams.userId

now we use the userId to retreive user info. Note that we use pattern matching
for style points, *{id} = {id:id}*.

      currentUser = User.get({id}) if id
      $rootScope.currentUser = currentUser

    
