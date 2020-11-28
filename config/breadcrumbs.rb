crumb :root do
  link "投稿一覧", "/"
end

crumb :post_show do |post|
  link "#{post.name}の投稿詳細", "/posts/#{post.id}"
  parent :root
end

crumb :post_edit do |post|
  link "編集", "/posts/edit/#{post.id}"
  parent :post_show, post
end

crumb :post_new do
  link "新規作成", "/posts/new"
  parent :root
end
