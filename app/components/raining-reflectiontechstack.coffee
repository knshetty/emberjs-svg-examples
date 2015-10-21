`import Ember from 'ember'`

RainingReflectiontechstackComponent = Ember.Component.extend(

  # We can initialize Matterjs only after ember
  # has rendered its template into DOM
  didInsertElement: ->

    # --- Module aliases ---
    Engine = Matter.Engine
    World = Matter.World
    Body = Matter.Body
    Bodies = Matter.Bodies
    Common = Matter.Common
    Composites = Matter.Composites
    Events = Matter.Events
    Mouse = Matter.Mouse
    MouseConstraint = Matter.MouseConstraint
    Bounds = Matter.Bounds

    # --- Create Matterjs engine ---
    engine = Engine.create(@$('#raining-reflectiontechstack')[0], {
              render:
                options:
                  showAngleIndicator: true
                  wireframes: true
                  height: 400
                  width: 410
            })

    # -- Add a mouse controlled constraint to the world ---
    mouseConstraint = MouseConstraint.create(engine)
    World.add(engine.world, mouseConstraint)

    # --- Create bodies ---
    offset = 0
    options =
      isStatic: true
      render:
        visible: false

    engine.world.bodies = []

    # These static walls will not be rendered in this sprites example, see options
    ###
    World.add(engine.world, [
      Bodies.rectangle(400, -offset, 800.5 + 2 * offset, 50.5, options)
      Bodies.rectangle(400, 600 + offset, 800.5 + 2 * offset, 50.5, options)
      Bodies.rectangle(800 + offset, 300, 50.5, 600.5 + 2 * offset, options)
      Bodies.rectangle(-offset, 300, 50.5, 600.5 + 2 * offset, options)
    ])
    ###
    World.add(engine.world, [
        Bodies.rectangle(115, -offset, 215.5 + 2 * offset, 10.5, options)
        Bodies.rectangle(115, 260 + offset, 215.5 + 2 * offset, 10.5, options)
        Bodies.rectangle(217 + offset, 135, 10.5, 260.5 + 2 * offset, options)
        Bodies.rectangle(-offset, 135, 10.5, 260.5 + 2 * offset, options)
    ])

    counter = 1
    stack = Composites.stack(40, 20, 3, 5, 0, 0, (x, y) ->
              if counter == 1
                counter += 1
                Bodies.rectangle(x, y, 42, 44, {
                  render:
                    sprite:
                      texture: 'assets/emberjs-logo.svg'
                      url: 'http://emberjs.com/'
                      xScale: 0.36
                      yScale: 0.36
                })
              else if counter == 2
                counter += 1
                Bodies.circle(x, y, 22, {
                  density: 0.0005
                  frictionAir: 0.06
                  restitution: 0.3
                  friction: 0.01
                  render:
                    sprite:
                      texture: 'assets/coffeescript-logo.svg'
                      url: 'http://coffeescript.org/'
                      xScale: 0.3
                      yScale: 0.3
                })
              else if counter == 3
                counter += 1
                Bodies.circle(x, y, 22, {
                  density: 0.0005
                  frictionAir: 0.06
                  restitution: 0.3
                  friction: 0.01
                  render:
                    sprite:
                      texture: 'assets/broccoli-logo.svg'
                      url: 'http://broccolijs.com/'
                      xScale: 0.15
                      yScale: 0.15
                })
              else if counter == 4
                counter += 1
                Bodies.rectangle(x, y, 55, 20, {
                  render:
                    sprite:
                      texture: 'assets/ember-cli-logo.svg'
                      url: 'http://www.ember-cli.com/'
                      xScale: 0.65
                      yScale: 0.65
                })
              else if counter == 5
                counter += 1
                Bodies.circle(x, y, 22, {
                  density: 0.0005
                  frictionAir: 0.06
                  restitution: 0.3
                  friction: 0.01
                  render:
                    sprite:
                      texture: 'assets/bower-logo.svg'
                      url: 'http://bower.io/'
                      xScale: 0.09
                      yScale: 0.09
                })
              else if counter == 6
                counter += 1
                Bodies.rectangle(x, y, 35, 40, {
                  render:
                    sprite:
                      texture: 'assets/html5-logo.svg'
                      url: 'http://www.w3.org/html/'
                      xScale: 0.08
                      yScale: 0.08
                })
              else if counter == 7
                counter += 1
                Bodies.circle(x, y, 22, {
                  density: 0.0005
                  frictionAir: 0.06
                  restitution: 0.3
                  friction: 0.01
                  render:
                    sprite:
                      texture: 'assets/handlebars-logo.svg'
                      url: 'http://handlebarsjs.com/'
                      xScale: 0.18
                      yScale: 0.18
                })
              else if counter == 8
                counter += 1
                Bodies.rectangle(x, y, 30, 30, {
                  render:
                    sprite:
                      texture: 'assets/bootstrap-logo.svg'
                      url: 'http://getbootstrap.com/'
                      xScale: 0.21
                      yScale: 0.21
                })
              else if counter == 9
                counter += 1
                Bodies.rectangle(x, y, 72, 20, {
                  render:
                    sprite:
                      texture: 'assets/jquery-logo.svg'
                      url: 'http://jquery.com/'
                      xScale: 0.23
                      yScale: 0.23
                })
              else if counter == 10
                counter += 1
                Bodies.rectangle(x, y, 65, 18, {
                  render:
                    sprite:
                      texture: 'assets/impress-js-logo.svg'
                      url: 'https://github.com/impress/impress.js'
                      xScale: 0.19
                      yScale: 0.19
                })
              else if counter == 11
                counter += 1
                Bodies.rectangle(x, y, 45, 35, {
                  render:
                    sprite:
                      texture: 'assets/mapbox-logo.svg'
                      url: 'https://www.mapbox.com/'
                      xScale: 0.20
                      yScale: 0.20
                })
              else if counter == 12
                counter += 1
                Bodies.rectangle(x, y, 50, 30, {
                  render:
                    sprite:
                      texture: 'assets/matter-js-logo.svg'
                      url: 'http://brm.io/matter-js/'
                      xScale: 0.15
                      yScale: 0.15
                })
              else if counter == 13
                counter += 1
                Bodies.rectangle(x, y, 20, 31, {
                  render:
                    sprite:
                      texture: 'assets/snapsvg-logo.svg'
                      url: 'http://snapsvg.io/'
                      xScale: 0.13
                      yScale: 0.13
                })
          )

    # --- Add all bodies to the world ---
    World.add(engine.world, stack)

    # --- Setup render ---
    renderOptions = engine.render.options
    renderOptions.background = ''
    renderOptions.showAngleIndicator = false
    renderOptions.wireframes = false

    # --- Setup event handler ---
    Events.on(engine, 'mouseup', (event) ->
      if (!mouseConstraint.bodyB)
        for body in event.source.world.composites[0].bodies
          if Bounds.contains(body.bounds, mouseConstraint.mouse.position)
            bodyUrl = body.render.sprite.url
            if bodyUrl != undefined
              window.open(bodyUrl)
            break
    )

    # --- Run the engine ---
    Engine.run(engine)
)

`export default RainingReflectiontechstackComponent`
