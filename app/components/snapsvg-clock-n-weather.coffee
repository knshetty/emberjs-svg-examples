`import Ember from 'ember'`

SnapsvgClockNWeatherComponent = Ember.Component.extend (

  didInsertElement: ->
    # Create snap.svg context
    @snapsvgInit()

    # Clock
    s = @get('draw')

    context = @
    Snap.load("assets/clock-n-weather.svg", (f) ->

      # --- Get Clock Objects ----
      secondNeedle = f.select("#second")
      minuteNeedle = f.select("#minute")
      hourNeedle = f.select("#hour")

      # --- Get Temperature Objects ----
      seperatorNowFuture = f.select("#seperator-now-n-future")
      temperatureTextObjs = []
      for i in [1..12]
        temperatureTextObjs.push(f.select("#tmp_#{i}"))

      # Fire clock's animation
      context.animateTime(secondNeedle, minuteNeedle, hourNeedle, seperatorNowFuture, temperatureTextObjs)

      s.append(f)
    )

  snapsvgInit: ->
    draw = Snap('#snapsvg-clock-n-weather-wrapper')
    @set('draw', draw)

  animateTime: (secondNeedle, minuteNeedle, hourNeedle, seperatorNowFuture, temperatureTextObjs) ->
    # --- Get the current time ---
    timeNow = new Date()
    hours   = timeNow.getHours()
    minutes = timeNow.getMinutes()
    seconds = timeNow.getSeconds()

    # Clocks center
    clockCenterPosition = ',250,250'

    # --- Second-Needle Animation ---
    # Move second-needle halfway
    secondNeedle.transform('r' + (seconds*6-97) + clockCenterPosition)
    # Animate the second-needle to its resting position
    secondNeedle.animate({transform: 'r' + (seconds*6-94) + clockCenterPosition}, 500, mina.elastic)

    # --- Minute-Needle Animation ---
    # Move minute-needle
    minuteNeedle.transform('r' + (minutes*6) + clockCenterPosition)
    # Only animate the minute needle when the minute changes
    if seconds == 0
        minuteNeedle.transform('r' + (minutes*6-3) + clockCenterPosition)
        minuteNeedle.animate({transform: 'r' + (minutes*6) + clockCenterPosition}, 500, mina.elastic)

    # --- Hour-Needle Animation ---
    # Move the hour-needle when the minutes change
    hourNeedle.transform('r' + ((hours*27.4)+(minutes/2)) + clockCenterPosition)

    # --- Seperator-now-n-future Animation ---
    offset_Seperator = 20
    seperatorNowFuture.transform('r' + ((hours*27.4) - offset_Seperator + (minutes/2)) + ',200,200')

    # --- Repeat this entire routine every second ---
    context = @
    setTimeout ( ->
        context.animateTime(secondNeedle, minuteNeedle, hourNeedle, seperatorNowFuture, temperatureTextObjs)
    ), 1000

    if seconds == 0
        @updateTemperature(temperatureTextObjs)

  updateTemperature: (temperatureTextObjs) ->
    forcast_temperature = []
    for i in [1..12]
        forcast_temperature.push(@getRandomNumInRange(-15,15))
    for t, index in forcast_temperature
        tmp_text = temperatureTextObjs[index]
        tmp_text.selectAll('tspan')[0].node.textContent = t

  getRandomNumInRange: (min,max) ->
    length = (max-min) + 1
    rValue = Math.floor(Math.random()*length)
    min + rValue

)

`export default SnapsvgClockNWeatherComponent`
