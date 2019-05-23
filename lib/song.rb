require 'pry'
require_relative  '../lib/concerns/paramable'
require_relative  '../lib/concerns/memorable'
require_relative  '../lib/concerns/findable'


class Song
  attr_accessor :name
  attr_reader :artist
  attr_accessor :name
  attr_reader :songs
  
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

 

 

  def self.all
    @@songs
  end
end
