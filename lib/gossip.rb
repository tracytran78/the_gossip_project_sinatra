class Gossip
  attr_accessor :author, :content, :comments

  def initialize(author, content , comments = "")
    @author = author
    @content = content
    @comments = comments
  end
   
  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content, @comments]
    end
  end

  def self.delete(index)
    gossips = Gossip.all
    gossips.delete_at(index)
    File.open("./db/gossip.csv", "w") do |f|
      f << ""
    end
    gossips.map { |g| g.save }
  end

  def self.edit(index, author, content)
    gossips = Gossip.all
    gossips[index-1] = Gossip.new(author, content)
    File.open("./db/gossip.csv", "w") do |f|
      f << ""
    end
    gossips.map { |g| g.save }
  end

  def self.comment(index, comment)
    gossips = Gossip.all
    gossips[index-1] = Gossip.new(gossips[index-1].author, gossips[index-1].content, gossips[index-1].comments+";"+comment)
    File.open("./db/gossip.csv", "w") do |f|
      f << ""
    end
    gossips.map { |g| g.save }
  end

  def self.all
    all_gossips = Array.new
    CSV.foreach("./db/gossip.csv") do |row|
      all_gossips << Gossip.new(row[0], row[1], row[2])
    end
    all_gossips
   end

  def self.find(id)
    Gossip.all[id-1]
  end
end
