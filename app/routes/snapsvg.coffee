`import Ember from 'ember'`

SnapsvgRoute = Ember.Route.extend(
  afterModel: ->
    #@.transitionTo('snapsvg.clock')
    @.transitionTo('snapsvg.clock-n-weather')
)

`export default SnapsvgRoute`
