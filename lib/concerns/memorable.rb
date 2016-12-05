
module Memorable
  def all
    self::ALL
  end

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

end
