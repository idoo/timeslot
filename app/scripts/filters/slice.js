angular.module('timeApp').filter('slice', function() {
  return function(arr, start, end) {
    return (arr || []).slice(start, end);
  };
});
