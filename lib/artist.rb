require 'pry'

class Artist
  extend Memorable::ClassInstances
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  # every time an artist is initialzied we push it into out artists array and then create that artists very on song array
  def initialize
    @@artists << self
    @songs = []
  end

  # Here we are validating the artists to make sure he exists and is an easy way of finding our artist
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  # Here is our method for artists that we can call on
  def self.all
    @@artists
  end

  # Here we can reset all the artists so our array returns into an empty array
  # def self.reset_all
  #   self.all.clear
  # end

  # Here we are keeping a count of all the artists by name
  # def self.count
  #   self.all.count
  # end

  # So when we call this method we are allowed to set an argument which is a song that can be then pushed into the array and then we declare the artists off the song to be the self
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # This is our method to add all the artists songs that is inputed into an array
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # for every space in the name of the artists we replace it with a -
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
