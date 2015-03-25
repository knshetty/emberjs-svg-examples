`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'sandbox', ->
    @route 'one'
    @route 'two'
    @route 'infographic'
    @route 'worldpopulation'
  @resource 'svgjs', ->
    @route 'rectangle'
    @route 'clock'
  @resource 'snapsvg', ->
    @route 'clock'
    @route 'menu'

`export default Router`
