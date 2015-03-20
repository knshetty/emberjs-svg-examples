`import Ember from 'ember'`

ChildView = Ember.View.extend(
  isVisible: (->
    @get('parentView.isChildVisible')
  ).property '_parentView.isChildVisible'
)

`export default ChildView`
