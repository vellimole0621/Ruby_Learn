module Debug

  def info
    puts "#{self.class} debug info ..."
  end

end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info
