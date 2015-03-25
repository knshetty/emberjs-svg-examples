`import Ember from 'ember'`

SandboxController = Ember.Controller.extend(
  tabs: [
    Ember.Object.create({ title: 'Infographic-World Population', linkTo: 'sandbox.worldpopulation' })
    Ember.Object.create({ title: 'Infographic-Day', linkTo: 'sandbox.infographic' })
  ]
)

`export default SandboxController`
