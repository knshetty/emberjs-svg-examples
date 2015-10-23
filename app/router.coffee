`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'sandbox', ->
    @route 'infographic'
    @route 'worldpopulation'
    @route 'techstack'
    @route 'matterjstechstack'
  @resource 'svgjs', ->
    @route 'rectangle'
    @route 'clock'
  @resource 'snapsvg', ->
    @route 'clock'
    @route 'menu'
    @route 'clock-aaron-nieze'
    @route 'neonlight'

`export default Router`
