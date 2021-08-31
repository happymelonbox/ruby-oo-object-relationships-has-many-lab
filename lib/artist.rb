class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @songs << song
    end

    def self.song_count
        all_songs = Song.all
        all_songs.size
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end
end