RailsEmberWebsocketDemo.PostsIndexRoute = Ember.Route.extend({
  model: function (params, transition) {
    return this.store.findQuery('post', {page: 10})
  },
  setupController: function (controller, model, transition) {
    controller.set('posts', model);
    controller.set('post', this.store.createRecord('post'));
  }
});