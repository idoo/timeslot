angular.module 'timeApp'
  .factory 'timeResource', ($http) ->

    allDays: ->
      [
        {
          "date": "2015-05-01",
          "slots": [
            {
              "start": "00:00",
              "end": "01:00",
              "status": "available"
            },
            {
              "start": "01:00",
              "end": "02:00",
              "status": "available"
            },
            {
              "start": "02:00",
              "end": "03:00",
              "status": "available"
            },
            {
              "start": "03:00",
              "end": "04:00",
              "status": "available"
            },
            {
              "start": "04:00",
              "end": "05:00",
              "status": "unavailable"
            },
            {
              "start": "05:00",
              "end": "06:00",
              "status": "reserved"
            },
            {
              "start": "06:00",
              "end": "07:00",
              "status": "available"
            },
            {
              "start": "07:00",
              "end": "08:00",
              "status": "unavailable"
            },
            {
              "start": "08:00",
              "end": "09:00",
              "status": "available"
            },
            {
              "start": "09:00",
              "end": "10:00",
              "status": "available"
            },
            {
              "start": "10:00",
              "end": "11:00",
              "status": "unavailable"
            },
            {
              "start": "11:00",
              "end": "12:00",
              "status": "available"
            },
            {
              "start": "12:00",
              "end": "13:00",
              "status": "available"
            },
            {
              "start": "13:00",
              "end": "14:00",
              "status": "unavailable"
            },
            {
              "start": "14:00",
              "end": "15:00",
              "status": "available"
            },
            {
              "start": "15:00",
              "end": "16:00",
              "status": "available"
            },
            {
              "start": "16:00",
              "end": "17:00",
              "status": "unavailable"
            },
            {
              "start": "17:00",
              "end": "18:00",
              "status": "available"
            },
            {
              "start": "18:00",
              "end": "19:00",
              "status": "available"
            },
            {
              "start": "19:00",
              "end": "20:00",
              "status": "unavailable"
            },
            {
              "start": "20:00",
              "end": "21:00",
              "status": "available"
            },
            {
              "start": "21:00",
              "end": "22:00",
              "status": "reserved"
            },
            {
              "start": "22:00",
              "end": "23:00",
              "status": "unavailable"
            },
            {
              "start": "23:00",
              "end": "00:00",
              "status": "available"
            }
          ]
        },
        {
          "date": "2015-05-02",
          "slots": [
            {
              "start": "00:00",
              "end": "01:00",
              "status": "unavailable"
            },
            {
              "start": "01:00",
              "end": "02:00",
              "status": "unavailable"
            },
            {
              "start": "02:00",
              "end": "03:00",
              "status": "unavailable"
            },
            {
              "start": "03:00",
              "end": "04:00",
              "status": "unavailable"
            },
            {
              "start": "04:00",
              "end": "05:00",
              "status": "unavailable"
            },
            {
              "start": "05:00",
              "end": "06:00",
              "status": "unavailable"
            },
            {
              "start": "06:00",
              "end": "07:00",
              "status": "unavailable"
            },
            {
              "start": "07:00",
              "end": "08:00",
              "status": "unavailable"
            },
            {
              "start": "08:00",
              "end": "09:00",
              "status": "available"
            },
            {
              "start": "09:00",
              "end": "10:00",
              "status": "available"
            },
            {
              "start": "10:00",
              "end": "11:00",
              "status": "unavailable"
            },
            {
              "start": "11:00",
              "end": "12:00",
              "status": "available"
            },
            {
              "start": "12:00",
              "end": "13:00",
              "status": "reserved"
            },
            {
              "start": "13:00",
              "end": "14:00",
              "status": "unavailable"
            },
            {
              "start": "14:00",
              "end": "15:00",
              "status": "available"
            },
            {
              "start": "15:00",
              "end": "16:00",
              "status": "available"
            },
            {
              "start": "16:00",
              "end": "17:00",
              "status": "unavailable"
            },
            {
              "start": "17:00",
              "end": "18:00",
              "status": "reserved"
            },
            {
              "start": "18:00",
              "end": "19:00",
              "status": "available"
            },
            {
              "start": "19:00",
              "end": "20:00",
              "status": "unavailable"
            },
            {
              "start": "20:00",
              "end": "21:00",
              "status": "unavailable"
            },
            {
              "start": "21:00",
              "end": "22:00",
              "status": "unavailable"
            },
            {
              "start": "22:00",
              "end": "23:00",
              "status": "unavailable"
            },
            {
              "start": "23:00",
              "end": "00:00",
              "status": "unavailable"
            }
          ]
        }
      ]

