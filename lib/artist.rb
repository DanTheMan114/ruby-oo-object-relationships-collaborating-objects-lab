require 'pry'
class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs 
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
        #binding.pry
    end 


    def self.find_or_create_by_name(name)
        #binding.pry
        #self.find(name) ? self.find(name) : self.new(name)
        if @@all.none?{|artist| artist.name == name}
            self.new(name)
        else
            @@all.detect do |artist|
                artist.name == name
            end
        end

    end





    
end


#end


    





    





