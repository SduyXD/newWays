angular.module "module.movies"
.factory "Movie", (restmod) ->
  restmod.model "/movies"
