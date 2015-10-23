`import Ember from 'ember'`

SnapsvgRoute = Ember.Route.extend(
  afterModel: ->
    #@.transitionTo('snapsvg.clock')
    @.transitionTo('snapsvg.neonlight')
)

`export default SnapsvgRoute`
