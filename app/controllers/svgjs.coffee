`import Ember from 'ember'`

SvgjsController = Ember.Controller.extend(
  tabs: [
    Ember.Object.create({ title: 'Animation-Rect', linkTo: 'svgjs.rectangle' })
    Ember.Object.create({ title: 'Clock', linkTo: 'svgjs.clock' })
  ]
)

`export default SvgjsController`
