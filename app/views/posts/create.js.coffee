$('<%= escape_javascript(render(:partial => @post))%>')
  .prependTo('#posts')
  .hide()
  .fadeIn()

$('#new_post')[0].reset()

$('#posts_count').html '<%= @post.user.posts.count %>'