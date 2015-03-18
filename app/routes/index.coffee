`import Ember from 'ember'`

IndexRoute = Ember.Route.extend(
  redirect: ->
    @transitionTo('svgjs')
)

`export default IndexRoute`
