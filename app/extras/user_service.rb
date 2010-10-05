class UserService
  def initialize
    @black_box = BlackBox.instance
  end
  
  def get_friends(user)
    @black_box.get_friends(user)
  end
  
  def is_friend_of_friend?(user1, user2)
  end
end