require "sqlite3"

db = SQLite3::Database.new "blog.db"

db.execute"PRAGMA foreign_key=ON;"

db.execute "create table users (
    id integer primary key,
    name varchar(256),
    email varchar(256)
);"

db.execute "create table posts (
    id integer primary key,
    user_id integer,
    title varchar(256),
    content text,
    foreign key(user_id) references users(id)
);"
