require 'pry'


class Song
  extend Memorable::ClassInstances
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # 
  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  # This is the method of the song class where we are able to set our artist of our song into an instance
  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
