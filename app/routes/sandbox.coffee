`import Ember from 'ember'`

SandboxRoute = Ember.Route.extend(
  afterModel: ->
    @.transitionTo('sandbox.worldpopulation')
)

`export default SandboxRoute`
