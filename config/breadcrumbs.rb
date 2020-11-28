crumb :root do
  link "投稿一覧", "/"
end

crumb :post_show do |post|
  link "#{post.name}の投稿詳細", post_path(post)
  parent :root
end

crumb :post_edit do |post|
  link "編集", edit_post_path(post)
  parent :post_show, post
end

crumb :post_new do
  link "新規作成", new_post_path
  parent :root
end
