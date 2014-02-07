// For more information see: http://emberjs.com/guides/routing/

RailsEmberWebsocketDemo.Router.map(function () {
  this.resource('posts', function () {
    this.route('index', { path: '/' });
    this.route('show', { path: '/:post_id' });
  });
});
