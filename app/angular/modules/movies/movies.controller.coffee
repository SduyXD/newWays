# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module "module.movies"
.controller "MovieController", ($scope, $state, $stateParams, Movie) ->

  $scope.view = {header: "Movies Index"}

  $scope.index = ->
    $scope.movies = Movie.$search()

  $scope.new = ->
    $scope.movie = {}
    $state.go "movies.new"

  $scope.create = ->
    movie = Movie.$build($scope.movie)
    movie.$save().$then ->
      $scope.index()
      $state.go "movies.index"

  $scope.show = (movie) ->
    $scope.movie = Movie.$find(movie)
    $state.go "movies.show",
      id: $scope.movie.id

  $scope.edit = (movie) ->
    $scope.show(movie)
    $state.go "movies.edit",
      id: movie

  $scope.update = (movie) ->
    movie = $scope.movie
    movie.$save()
    $state.go "movies.index"

  $scope.delete = (movie) ->
    movie = Movie.$find(movie)
    movie.$destroy().$then ->
      $scope.index()

  $scope.index()
