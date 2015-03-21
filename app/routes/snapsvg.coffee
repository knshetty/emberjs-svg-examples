`import Ember from 'ember'`

SnapsvgRoute = Ember.Route.extend(
  afterModel: ->
    @.transitionTo('snapsvg.clock')
)

`export default SnapsvgRoute`
