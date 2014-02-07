// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require chance
//= require websocket_rails/main
//= require_self
//= require rails_ember_websocket_demo
//= require_tree .

// for more details see: http://emberjs.com/guides/application/
var RailsEmberWebsocketDemo = Ember.Application.create({
  LOG_TRANSITIONS: true, // basic logging of successful transitions
  LOG_TRANSITIONS_INTERNAL: true, // detailed logging of all routing steps
  LOG_VIEW_LOOKUPS: true, // logging view lookups
  LOG_ACTIVE_GENERATION: true, // logging generated objects
  LOG_STACKTRACE_ON_DEPRECATION: true,
  LOG_BINDINGS: true
});




