class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
    end

    def artist
        @artist
    end

    def artist_name
        @artist ? self.artist.name : nil
    end
end