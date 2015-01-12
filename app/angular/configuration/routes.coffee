angular.module "newWays.configurations"
.config ($urlRouterProvider) ->

  #
  # For any unmatched url, redirect to /movies
  $urlRouterProvider.otherwise "/movies"
