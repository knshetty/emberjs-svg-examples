`import Ember from 'ember'`

SvgjsRoute = Ember.Route.extend(
  afterModel: ->
    @.transitionTo('svgjs.rectangle')
)

`export default SvgjsRoute`
