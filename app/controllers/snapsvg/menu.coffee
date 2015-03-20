`import Ember from 'ember'`

SnapsvgMenuController = Ember.Controller.extend(

  isChildVisible: false

  initialPath: null

  actions:
    toggle: ->
      @toggleProperty('isChildVisible')

      if(@get('isChildVisible'))
        s = Snap('#morph-shape')
        path = s.select( 'path' )
        @set('initialPath', path.attr('d'))
        path.animate(
          { 'path' : s.node.getAttribute( 'data-morph-open' ) },
          400,
          mina.easeinout
        )
      else
        s = Snap('#morph-shape')
        path = s.select('path')
        path.attr('d', @get('initialPath'))
)

`export default SnapsvgMenuController`
