`import Ember from 'ember'`

SvgSnappyRectangleComponent = Ember.Component.extend(

  color: undefined

  rect: undefined

  svgInit: ->
    # Create svg.js context for later manipulations
    draw = SVG('svg-wrapper')
    @set('draw', draw)

  svgRender: ->
    # Manipulate your SVG dom tree here
    draw = @get('draw')
    rect = draw.rect(50,50).fill(@get('color'))
    @set('rect', rect)

  # --- We can initialize svg.js only after ember has ---
  # --- rendered its template into DOM ---
  didInsertElement: ->

    @svgInit()

    # --- Set the initial color value and trigger rendering ---
    # --- view the colorDidChange observer ---
    @set('color', '#f09')

    # --- Set the animation property
    @get('rect').mouseover( ->
      @animate(1000, SVG.easing.elastic)
        .move(550 * Math.random(), 550 * Math.random())
        .rotate(-45 + 90 * Math.random())
        .fill({
          r: ~~(Math.random() * 255),
          g: ~~(Math.random() * 255),
          b: ~~(Math.random() * 255)
        })
    )

  # --- Observes 'color' property and manipulates only the ---
  # --- SVG DOM tree with svg.js ---
  colorDidChange: ( ->
    @svgRender()
  ).observes('color')

)

`export default SvgSnappyRectangleComponent`
