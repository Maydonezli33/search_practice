user1 = User.find_or_create_by!(email: "oosaka@email.com") do |user|
  user.name = "大阪 大"
  user.password = "password"
end

user2 = User.find_or_create_by!(email: "tokyo@email.com") do |user|
  user.name = "東京 都"
  user.password = "password"
end

user3 = User.find_or_create_by!(email: "hokkaido@email.com") do |user|
  user.name = "北海 道"
  user.password = "password"
end

Post.find_or_create_by!(title: "投稿1", user: user1) do |post|
  post.content = "最初の投稿"
end

Post.find_or_create_by!(title: "投稿2", user: user2) do |post|
  post.content = "2つ目の投稿"
end

Post.find_or_create_by!(title: "投稿3", user: user1) do |post|
  post.content = "3つ目の投稿"
end