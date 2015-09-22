`import Ember from 'ember'`

SandboxController = Ember.Controller.extend(
  tabs: [
    Ember.Object.create({ title: 'Infographic-World Population', linkTo: 'sandbox.worldpopulation' })
    Ember.Object.create({ title: 'Infographic-Day', linkTo: 'sandbox.infographic' })
    Ember.Object.create({ title: 'Tech Stack-CSS Animation', linkTo: 'sandbox.techstack' })
  ]
)

`export default SandboxController`
