require "sqlite3"

db = SQLite3::Database.new "blog.db"

db.execute "create table posts (
    id int primary key,
    title varchar(256),
    content text

);"

db.execute "create table users (
    id int primary key,
    name varchar(256),
    email varchar(256)

);"
