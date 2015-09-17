`import Ember from 'ember'`

ReflectionTechnologyStackComponent = Ember.Component.extend(

  snapsvgInit: ->
    draw = Snap('#techstack-svg')
    @set('draw', draw)

  # We can initialize snap.svg only after ember
  # has rendered its template into DOM
  didInsertElement: ->
    @snapsvgInit()
    s = @get('draw')

    Snap.load("assets/reflection-technology-stack.svg", (f) ->
      g = f.select("g")
      s.append(g)

      # On additon of this call will trigger animated intro sequence by CSS
      s.addClass("svgLoaded")
    )

)

`export default ReflectionTechnologyStackComponent`
