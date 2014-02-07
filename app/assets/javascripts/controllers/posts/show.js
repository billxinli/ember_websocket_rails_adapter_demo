RailsEmberWebsocketDemo.PostsShowController = Ember.Controller.extend({

  actions: {
    delete: function (post) {
      var _this = this;
      post.deleteRecord();
      post.save()
        .then(function (object) {
          _this.transitionToRoute('posts.index');
        });

    },
    edit: function (post) {
      post.set('content', chance.string());
      post.save();
    }
  }
});
