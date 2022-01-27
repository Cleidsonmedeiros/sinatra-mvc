class AbstractModel
    TABLE_NAME = nil

    def self.all
        db = SQLite3::Database.new "./db/blog.db"
        db.execute "select * from #{self::TABLE_NAME}"
        
    end

    def self.db
        SQLite3::Database.new "./db/blog.db"
    end

end