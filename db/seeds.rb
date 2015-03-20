# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Hello World!'
puts "這個種子檔會自動創建 100 個 topics, 每個 topics 各 20 個 votes"
puts "種子資料建立中"

create_topics = for i in 1..100 do
                  topic = Topic.new(title: "Topic no.#{i}", description: "這是用種子建立的第 #{i} 篇文章")
                  topic.save
                  for k in 1..20 do
                    topic.votes.create
                  end
                end

puts "種子資料建立完畢"
