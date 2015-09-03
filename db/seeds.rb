p "Create post"
10.times do |i|
  p "Create post #{i+1}"
  Post.create!(title: "Post #{i+1}")
end

p "Create comment"
Post.all.select(:id).each do |post|
  p "Create comment for Post #{post.id}"
  100.times do |i|
    p "Create comment for Post #{post.id} - #{i+1}"
    post.comments.create!(content: "Content comment #{i+1} for Post #{post.id}")
  end
end