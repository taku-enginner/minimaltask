# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  "今日もお疲れさまです。がんばってますね。",
  "少しずつ取り組んでみましょう。",
  "焦らなくて大丈夫。少しずつで大丈夫。休んでも大丈夫。",
  "休んでも大丈夫。また元気になったら少しだけやってみよう。",
  "いい感じだね！少しずつやってみよう！",
  "よく頑張ったね！",
  "むりせず1つずつ着実にやってみよう！"
].each do |cheer|
  Cheer.create!({cheer: cheer})
end
