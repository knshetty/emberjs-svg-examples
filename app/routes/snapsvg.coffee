`import Ember from 'ember'`

SnapsvgRoute = Ember.Route.extend(
  afterModel: ->
    @.transitionTo('snapsvg.menu')
)

`export default SnapsvgRoute`
