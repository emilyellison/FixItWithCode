atom_feed do |feed|
  feed.title(@title)
  feed.updated(@updated)

  @posts.each do |post|
    feed.entry(post) do |entry|
      
      entry.title(h(post.title))
      entry.url(post.url)
      entry.author do |author|
        author.name(post.author.name)
      end
      entry.content(strip_tags(post.content))
      
    end
  end
end