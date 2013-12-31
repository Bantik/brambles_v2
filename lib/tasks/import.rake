namespace :import do

  desc 'import article JSON'
  task :articles => :environment do
    Article.destroy_all
    Topic.destroy_all
    File.open("db/articles.json", "r").each do |json|
      parsed = JSON.parse(json)
      topic_name = parsed.delete('topic')
      topic = Topic.where(:name => topic_name).first || Topic.create(name: topic_name, slug: topic_name.gsub(' ','_').gsub('&','and').downcase)
      Article.create!(JSON.parse(json).merge(:topic => topic))
    end
  end

end