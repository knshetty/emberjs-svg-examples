`import Ember from 'ember'`

IndexRoute = Ember.Route.extend(
  redirect: ->
    @transitionTo('sandbox')
)

`export default IndexRoute`
