class Song < ActiveRecord::Base
    belongs_to :genre
    belongs_to :artist

    def get_genre_name
        self.genre.name
    end

    def drake_made_this
        drake = Artist.find_or_create_by(name: "Drake")
        self.artist = drake
    end

end