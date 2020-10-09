class Genre

    attr_accessor :artist, :song, :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |title| title.genre == self }
    end

    def artists
        songs.collect { |title| title.artist }
    end

end
