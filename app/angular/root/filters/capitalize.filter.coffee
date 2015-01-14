angular.module "newWays.root"
.filter "capitalize", ->  (string, scope) ->
  text = string.substring(0, 1).toUpperCase() + string.substring(1).toLowerCase()
