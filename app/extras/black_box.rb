class BlackBox
  def initialize
  end
  
  def self.instance
    @black_box ||= BlackBox.new
  end
  
  def get_friends(user)
    sleep 0.05
    super(user)
  end
end