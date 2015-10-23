`import Ember from 'ember'`

SnapsvgNeonlightAnimComponent = Ember.Component.extend (

  didInsertElement: ->

    # Create snap.svg context
    @snapsvgInit()

    # 12th Hour - Neon Light
    s = @get('draw')
	
    context = @
    Snap.load("assets/12th-hour-neon.svg", (f) ->
      hour = f.select("#hour")
      iRing = f.select("#inner-ring")
      oRing = f.select("#outer-ring")
      context.animateNeonLight(hour, iRing, oRing)
      s.append(f)
    )

  snapsvgInit: ->
    draw = Snap('#snapsvg-neonlight-anim-wrapper')
    @set('draw', draw)

  animateNeonLight: (hour, iRing, oRing) ->
    # --- Show only the 12th-hour ---
    hour.attr({fill: '#000000'})

    # --- Hide inner & outer rings ---
    oRing.attr({opacity: 1}) #Default: 1
    iRing.attr({opacity: 0}) #Default: 1

    context = @

    # --- Flash the inner-ring ---
    context.changeColour_Stroke(2000, '#3399ff', iRing)
    context.flash(2000, iRing)

    # --- Repeat this entire routine every 5 seconds ---
    setTimeout ( ->
    	context.animateNeonLight(hour, iRing, oRing)
    ), 5000

  flash: (time, item) ->
    setTimeout ( ->
    	item.attr({opacity: 1})
    ), time

  changeColour_Stroke: (time, colour, item) ->
    setTimeout ( ->
        item.attr({stroke: colour})
    ), time
)

`export default SnapsvgNeonlightAnimComponent`
