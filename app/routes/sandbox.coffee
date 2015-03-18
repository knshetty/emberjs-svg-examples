`import Ember from 'ember'`

SandboxRoute = Ember.Route.extend(
  afterModel: ->
    @.transitionTo('sandbox.one')
)

`export default SandboxRoute`
