require 'pry'
'../lib/concerns/paramable'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

 

  def self.all
    @@songs
  end
end
