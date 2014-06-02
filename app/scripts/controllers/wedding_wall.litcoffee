 
WeddingWall Controller
----------------------

To the angular controller interface we pass an anonymous function.
The arguments to the anonymous function are the controllers dependencies.
In this case our controller depends on the Post service to handle CRUD
operations for post objects, and the $scope service which provides access
to the controllers context.


    angular.module('weddingWallApp')
      .controller 'WeddingWallCtrl', ($scope, Post) ->

fetch all the posts from the posts json api service, the backend will have 
to limit the query to latest records
        
        $scope.posts = Post.query()

set up a new post on the page so the user can post a post
        
        $scope.newPost = new Post(content: 'comming soon')



controller method *postNow* will save the post currently being edited and 
post it to the posts json api service

        $scope.postNow = ->
          $scope.newPost.$save()


#### controllerAs Notes

In the current angular documentation they recommend using the 
controllerAs syntax but do not show how to test it. BIG TIME
LET DOWN GOOGLE! 