new_db = lambda do
  db = {}

  insert = lambda do |artiste, album|
    db[artiste] = album
  end

  dump = lambda do
    db
  end

  delete = lambda do |artiste|
    old = db[artiste]
    db[artiste] = nil
    old
  end

  { insert: insert, dump: dump, delete: delete }
end


#  db[:insert].call("Pink Floyd", "The Wall")
#  db[:dump].call
# db[:delete].call("Pink Floyd")
