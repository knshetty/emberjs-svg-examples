`import Ember from 'ember'`

SvgClockSwissrailwayComponent = Ember.Component.extend(

  svgInit: ->
    # Create svg.js context for later manipulations
    draw = SVG('svg-wrapper')
    @set('draw', draw)

  # --- We can initialize svg.js only after ember has ---
  # --- rendered its template into DOM ---
  didInsertElement: ->

    @svgInit()

    # --- Clock ---
    @get('draw').clock('80%').back().start().move('10%', '10%')

)

`export default SvgClockSwissrailwayComponent`
