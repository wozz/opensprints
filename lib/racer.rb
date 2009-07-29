class Racer
  include DataMapper::Resource
  property :id, Serial
  property :name, String

  has n, :race_participations
  has n, :races, :through => :race_participations
  has n, :tournament_participations
  has n, :tournaments, :through => :tournament_participations
  has n, :categorizations
  has n, :categories, :through => :categorizations, :mutable => true

  def to_s
    self.name
  end

end
