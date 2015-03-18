/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

// Use `app.import` to add additional libraries to the generated
// output files.
//
// If you need to use different assets in different
// environments, specify an object as the first parameter. That
// object's keys should be the environment name and the values
// should be the asset to use in that environment.
//
// If the library that you are including contains AMD or ES6
// modules that you would like to import into your application
// please specify an object with the list of modules as keys
// along with the exports of each module as its value.

var pickFiles = require('broccoli-static-compiler');
var mergeTrees = require('broccoli-merge-trees');


// --- Bootstrap UI framework's dependencies ---
app.import('bower_components/bootstrap/dist/js/bootstrap.js');
app.import('bower_components/bootstrap/dist/css/bootstrap.css');
var bootstrapMap = pickFiles('bower_components/bootstrap/dist/css', {
  srcDir: '/',
  files: ['bootstrap.css.map'],
  destDir: '/assets'
});
var bootstrapFonts = pickFiles('bower_components/bootstrap/dist/fonts', {
  srcDir: '/',
  files: ['glyphicons-halflings-regular.woff',
          'glyphicons-halflings-regular.woff2',
          'glyphicons-halflings-regular.ttf'],
  destDir: '/fonts'
});



// --- SVG libraries as dependencies ---
// -- svg.js: A lightweight library for manipulating and animating SVG => http://svgjs.com/--
app.import('bower_components/svg.js/dist/svg.js');
// Other svg.js helper libaries
app.import('bower_components/svg.js/dist/svg.easing.js');
app.import('bower_components/svg.js/dist/svg.clock.js');
// -- Snap.svg: SVG graphics library => https://github.com/adobe-webplatform/Snap.svg
app.import('bower_components/snap.svg/dist/snap.svg.js');


// --- Bootstrap-for-ember dependencies (https://github.com/ember-addons/bootstrap-for-ember) ---
app.import('bower_components/ember-addons.bs_for_ember/dist/css/bs-growl-notifications.min.css');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-core.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-alert.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-core.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-alert.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-badge.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-basic.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-breadcrumbs.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-button.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-growl-notifications.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-items-action-bar.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-label.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-list-group.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-modal.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-nav.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-notifications.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-popover.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-progressbar.min.js');
app.import('bower_components/ember-addons.bs_for_ember/dist/js/bs-wizard.min.js');


module.exports = mergeTrees([app.toTree(),
                             bootstrapMap,
                             bootstrapFonts]);
