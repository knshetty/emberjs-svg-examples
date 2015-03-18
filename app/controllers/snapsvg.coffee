`import Ember from 'ember'`

SnapsvgController = Ember.Controller.extend(
  tabs: [
    Ember.Object.create({ title: 'Clock', linkTo: 'snapsvg.clock' })
    Ember.Object.create({ title: 'Menu Effects', linkTo: 'snapsvg.menu' })
  ]
)

`export default SnapsvgController`
