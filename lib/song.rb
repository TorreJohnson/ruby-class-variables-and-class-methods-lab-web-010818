require "pry"

def unique(class_var)
  unique_arr = []
  i = 0
  while i < class_var.length
    if !unique_arr.include?(class_var[i])
      unique_arr << class_var[i]
    end
    i += 1
  end
  unique_arr
end

def unique_count(class_var)
  unique_hash = {}
  class_var.each do |song_info|
    if unique_hash.has_key?(song_info)
      unique_hash[song_info] += 1
    else
      unique_hash[song_info] = 1
    end
  end
  unique_hash
end

class Song

  attr_accessor :name, :artist, :genre

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
  end

  def self.count
    @@count
  end

  def self.artists
    unique(@@artists)
  end

  def self.genres
    unique(@@genres)
  end

  def self.genre_count
    unique_count(@@genres)
  end

  def self.artist_count
    unique_count(@@artists)
  end

end
