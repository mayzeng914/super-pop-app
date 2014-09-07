popSearch.factory('Post', ['$resource', '$scope', function($resource, $scope){
  return $resource('https://api.instagram.com/v1/tags/' + $scope.mainsearch + '/media/recent?callback=?&amp;client_id=ce5ace1b89a749edafede0f742ef1edb',
      // {id: '@id'},
      { update: { method: 'PATCH' }});
}]);