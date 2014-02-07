// http://emberjs.com/guides/models/using-the-store/

RailsEmberWebsocketDemo.ApplicationSerializer = DS.ActiveModelSerializer.extend({
  // https://github.com/emberjs/data/pull/1273
  serializeHasMany: function (record, json, relationship) {
    var key = relationship.key;
    var jsonKey = Ember.String.singularize(key) + '_ids';
    var relationshipType = DS.RelationshipChange.determineRelationshipType(record.constructor, relationship);
    if (relationshipType === 'manyToNone' || relationshipType === 'manyToMany' || relationshipType === 'manyToOne') {
      json[jsonKey] = record.get(key).mapBy('id');
    }
  }
});

RailsEmberWebsocketDemo.WSAdapter = DS.WSAdapter.extend({
  namespace: 'api/v1',
  host: 'localhost:3000/websocket'

});

RailsEmberWebsocketDemo.Store = DS.Store.extend({
  adapter: RailsEmberWebsocketDemo.WSAdapter
});

