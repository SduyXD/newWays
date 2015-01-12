angular.module "module.movies", []

angular.module "module.movies"
.config ($stateProvider) ->

  $stateProvider
   .state "movies",
    url: "/movies"
    templateUrl: "shared/home.html"
    abstract: true
    controller: 'MovieController'

  .state "movies.index",
    url: ""
    templateUrl: "movies/index.html"

  .state "movies.new",
    url: "/new"
    templateUrl: "movies/new.html"

  .state "movies.show",
    url: "/:id"
    templateUrl: "movies/show.html"

  .state "movies.edit",
    url: "/:id/edit"
    templateUrl: "movies/edit.html"
