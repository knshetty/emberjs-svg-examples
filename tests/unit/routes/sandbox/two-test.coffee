`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:sandbox/two', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
