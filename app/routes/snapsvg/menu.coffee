`import Ember from 'ember'`

SnapsvgMenuRoute = Ember.Route.extend(

  setupController: (controller) ->
    controller.set('isChildVisible', false)

)

`export default SnapsvgMenuRoute`
