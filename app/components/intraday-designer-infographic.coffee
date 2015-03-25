`import Ember from 'ember'`

IntradayDesignerInfographicComponent = Ember.Component.extend(

  snapsvgInit: ->
    draw = Snap('#svgstage-wrapper')
    @set('draw', draw)

  # --- We can initialize snap.svg only after ember has ---
  # --- rendered its template into DOM ---
  didInsertElement: ->
    @snapsvgInit()
    s = @get('draw')

    Snap.load("assets/intraday-designer-infographic.svg", (f) ->
      g = f.select("g")
      s.append(g)

      # On additon of this call will trigger animated intro sequence by CSS
      s.addClass("svgLoaded")
    )

)

`export default IntradayDesignerInfographicComponent`
