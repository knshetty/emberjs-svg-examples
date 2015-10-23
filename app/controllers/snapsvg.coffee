`import Ember from 'ember'`

SnapsvgController = Ember.Controller.extend(
  tabs: [
    Ember.Object.create({ title: 'Clock-Offical E.g.', linkTo: 'snapsvg.clock' })
    Ember.Object.create({ title: 'Clock-AaronNieze E.g.', linkTo: 'snapsvg.clock-aaron-nieze' })
    Ember.Object.create({ title: 'Neon Light Anim.', linkTo: 'snapsvg.neonlight' })
    Ember.Object.create({ title: 'Menu Effects', linkTo: 'snapsvg.menu' })
  ]
)

`export default SnapsvgController`
