user = User.create({username: 'test', password: 'test'})
user2 = User.create({username: 'test2', password: 'test2'})

post = user.posts.create({title: 'My first post', content: 'Hello, world!'})

user2.comments << post.comments.create({content: 'Sooooo typical...'})
