require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable

  ALL = []

  def initialize
    ALL << self
  end

  def self.find_by_name(name)
    ALL.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  # def self.count
  #   self.all.count
  # end

  def self.all
    ALL
  end
end
