popSearch.controller('PostCtrl',
      ['$scope',
  function($scope){

    $scope.test = "please work";

      Post.query(function(json){
      $scope.posts = json;
    });

    $scope.newPost = new Post();

    this.add = function(){
      $scope.newPost.$save(function(){
        $scope.posts.push($scope.newPost);
        $scope.newPost = new Post();
      });
    }



  }]);