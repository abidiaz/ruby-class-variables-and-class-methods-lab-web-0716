require 'pry'
class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    # @genre_hash = Hash.new{|h,k| h[k] = 0} #hash.new{|h,k| h[k] = 0}
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
  @genre_hash = Hash.new(0).tap {|hash| @@genres.each {|genre| hash[genre] += 1}}
  #creating a new hash, initializing to 0, and then returning that hash into an iteration on @@genres array


  # This works too:
  # @genre_hash = Hash.new(0)
  #   @@genres.each do |genre|
  #     @genre_hash[genre] += 1
  #   end
  # @genre_hash  
  end

  def self.artist_count
    @artist_hash = Hash.new(0).tap {|hash| @@artists.each {|artist| hash[artist] += 1}}
  end

end
