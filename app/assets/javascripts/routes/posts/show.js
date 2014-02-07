RailsEmberWebsocketDemo.PostsShowRoute = Ember.Route.extend({
  model: function (params, transition) {
    return this.store.find('post', params.post_id)
  },
  setupController: function (controller, model, transition) {
    controller.set('post', model);
  }
});