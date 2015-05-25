'use strict'

###*
 # @ngdoc directive
 # @name timeApp.directive:timeslot
 # @description time select directive
###
angular.module 'timeApp'
  .directive 'timeslot', ($compile, timeResource) ->
    restrict: 'EA'
    link: (scope, element, attrs) ->
      scope.defaultNoonSettings = -> scope.filterBegin = 0
      scope.currentDay = 0
      scope.days = timeResource.allDays()
      scope.defaultNoonSettings()

      scope.toggleNoon = (beforeNoon=false) ->
        scope.filterBegin = if beforeNoon then 0 else 12

      scope.addToList = (index) ->
        hour = scope._twoDigHour(index + scope.filterBegin)
        data = scope.days[scope.currentDay].slots

        slot = (i for i in data when i.start is "#{hour}:00")[0]

        slot.status = 'reserved' if slot.status isnt 'unavailable'
        console.log slot

      scope._twoDigHour = (hour) ->
        (parseInt(hour, 10) + 100).toString().substr(1)

      scope.prevDay = ->
        # @TODO: add limit
        scope.currentDay -= 1
        scope.defaultNoonSettings()

      scope.nextDay = ->
        # @TODO: add limit
        scope.currentDay += 1
        scope.defaultNoonSettings()

      scope.formatDate = (date) ->
        format = 'YYYY-MM-DD'
        fecha.format(fecha.parse(date, format), 'mediumDate')

      scope.whichHalfOfTheDay = ->
        if scope.filterBegin is 12 then 'PM' else 'AM'

      # @TODO: move to template
      template = "
        <div class='current-day'>
          <span class='current-day-change' ng-click='prevDay()'>&larr;</span>
          <span>{{ formatDate(days[currentDay].date) }}</span>
          <span>{{whichHalfOfTheDay()}}</span>
          <span class='current-day-change' ng-click='nextDay()'>&rarr;</span>
        </div>
        <div class='wheel' ng-swipe-left='prevDay()' ng-swipe-right='nextDay()'>
          <ul class='umbrella'>
            <li class='color'
              ng-class='slot.status'
              ng-repeat='slot in days[currentDay].slots | slice:filterBegin:24'
              ng-click='addToList($index)'>
            </li>
          </ul>
        </div>
        <div class='noon-toggle'>
          <a ng-click='toggleNoon(true)'> AM
          <a ng-click='toggleNoon()'> PM
        </div>"

      newElement = angular.element(template)
      $compile(newElement) scope
      element.replaceWith newElement

