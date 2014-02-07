RailsEmberWebsocketDemo.PostsIndexController = Ember.Controller.extend({

  actions: {
    create: function (post) {
      var _this = this;
//      post.set('title', chance.string());
      post.set('content', chance.string());

      post.save()
        .then(function (object) {
          _this.get('posts').refresh();
          _this.transitionToRoute('posts.index');
        })
        .catch(function (object) {
          debugger
        });

    }
  }

});
