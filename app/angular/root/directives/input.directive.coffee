angular.module "newWays.root"
.directive "textInput", ->
  restrict: "EA"
  templateUrl: "directives/input.html"
  scope:
    controlname: "@nameattribute"
    controlmodel: "=modelattribute"
