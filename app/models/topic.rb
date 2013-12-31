class Topic

  include Mongoid::Document

  field :name
  field :slug

  has_many :articles

  validates_uniqueness_of :name, :slug
    
  def self.by_slug(slug)
    where(:slug => slug).first
  end

  def path_to_image
    "/assets/woodcuts/#{self.slug}.png"
  end

end