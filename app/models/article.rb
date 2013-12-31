class Article

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :summary
  field :content
  field :topic
  field :slug

  belongs_to :topic
  before_save :set_slug

  def self.by_slug(slug)
    Article.where(:slug => slug).first
  end

  def set_slug
    self.slug ||= self.title.gsub(' ','_').gsub('&','and').downcase
  end

  def topic_and_title
    "#{topic.name} &mdash; #{self.title}"
  end

end