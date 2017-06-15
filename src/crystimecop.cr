require "./crystimecop/*"

module Crystimecop

  def self.freeze(datetime : String, pattern = "%D", &block)
    freeze(Time.parse(datetime, pattern), &block)
  end

  def self.freeze(datetime : Time, &block)
    Time.freeze_at(datetime)
    yield
  ensure
    Time.release
  end

end
