struct Time
  
  def self.now : self
    @@blah || new
  end

  def self.freeze_at(time : Time)
    @@blah = time
  end

  def self.release
    @@blah = nil
  end

end

