`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:snapsvg/clock-n-weather', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
