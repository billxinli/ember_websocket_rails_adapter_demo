// for more details see: http://emberjs.com/guides/models/defining-models/

RailsEmberWebsocketDemo.Post = DS.Model.extend({
  title: DS.attr('string'),
  content: DS.attr('string')
});
