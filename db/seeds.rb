user = User.create({username: 'test', password: 'test'})
user2 = User.create({username: 'test2', password: 'test2'})
user3 = User.create({username: 'test2', password: 'test3'})

post = user.posts.create({title: 'My first post', content: 'Hello, world!'})
post1 = user.posts.create({title: 'My first post1', content: 'Hello, world!1'})
post2 = user.posts.create({title: 'My first post2', content: 'Hello, world!2'})

user2.comments << post.comments.create({content: 'Sooooo typical...'})

PostVote.create(post: post, user: user)
post = Post.update(post.id, votes: (post.votes + 1))

PostVote.create(post: post, user: user2)
post = Post.update(post.id, votes: (post.votes + 1))

PostVote.create(post: post, user: user3)
post = Post.update(post.id, votes: (post.votes + 1))

PostVote.create(post: post1, user: user)
post1 = Post.update(post1.id, votes: (post1.votes + 1))

