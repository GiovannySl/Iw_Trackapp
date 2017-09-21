App.tracks = App.cable.subscriptions.create("tracksChannel", {
  connected: function() {},
  disconnected: function() {},
  received: function(data) {
    console.log(data);
    var id = data.id;
    var $post = $(".post[data-id=" + id + "]");
    if ($post) {
      $post.find(".post__tracks").append(data.track);
      $post.find(".post__tracks_form input").val("");
    }
  }
});
