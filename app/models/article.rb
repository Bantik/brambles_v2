class Article

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :summary
  field :content
  field :topic

  belongs_to :topic
  
  def self.topics
    Article.all.only(:topic).map(&:topic).uniq.sort.map(&:titleize)
  end

end