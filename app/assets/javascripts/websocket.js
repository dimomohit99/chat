var task = {
  name: 'Start taking advantage of WebSockets',
  completed: false
}

var dispatcher = new WebSocketRails('localhost:4000/websocket');

var success = function(task) { console.log("Created: " + task.name); }

var failure = function(task) {
  console.log("Failed to create Product: " + product.name)
}

dispatcher.trigger('task.create', success, failure);
