`import Ember from 'ember'`

SnapsvgClockAaronNiezeComponent = Ember.Component.extend(

  didInsertElement: ->
    # Create snap.svg context
    @snapsvgInit()

    # Clock
    s = @get('draw')
	
    context = @    
    Snap.load("assets/clock-aaron-nieze.svg", (f) ->

      secondNeedle = f.select("#second")
      minuteNeedle = f.select("#minute")
      hourNeedle = f.select("#hour")

      # Fire clock's animation
      context.animateTime(secondNeedle, minuteNeedle, hourNeedle)

      s.append(f)
    )

  snapsvgInit: ->
    draw = Snap('#snapsvg-clock-aaron-nieze-wrapper')
    @set('draw', draw)

  animateTime: (secondNeedle, minuteNeedle, hourNeedle) ->
    # --- Get the current time ---
    timeNow = new Date()
    hours   = timeNow.getHours()
    minutes = timeNow.getMinutes()
    seconds = timeNow.getSeconds()

    # --- Second-Needle Animation ---
    # Move second-needle halfway
    secondNeedle.transform('r' + (seconds*6-3) + ',200,200')
    # Animate the second-needle to its resting position
    secondNeedle.animate({transform: 'r' + (seconds*6) + ',200,200'}, 500, mina.elastic)

    # --- Minute-Needle Animation ---
    # Move minute-needle                
    minuteNeedle.transform('r' + (minutes*6) + ',200,200')
    # Only animate the minute needle when the minute changes
    if seconds == 0
    	minuteNeedle.transform('r' + (minutes*6-3) + ',200,200')
    	minuteNeedle.animate({transform: 'r' + (minutes*6) + ',200,200'}, 500, mina.elastic)

    # --- Hour-Needle Animation ---
    # Move the hour-needle when the minutes change           
    hourNeedle.transform('r' + ((hours*30)+(minutes/2)) + ',200,200')

    # --- Repeat this entire routine every second ---
    context = @
    setTimeout ( ->
    	context.animateTime(secondNeedle, minuteNeedle, hourNeedle)
    ), 1000

)

`export default SnapsvgClockAaronNiezeComponent`
