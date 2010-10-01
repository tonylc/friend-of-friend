class UserService
  def initialize
    @black_box = BlackBox.instance
  end
  
  def get_friends(user)
    @black_box.get_friends(user)
  end
  
  def is_friend_of_friend?(user1, user2)
    my_friends = get_friends(user1)
    return User::FRIENDS if my_friends.include?(user2)
  
    # my_friends.each_with_index do |friend, index|
    #   fof = get_friends(friend)
    #   return User::FRIEND_OF_FRIEND if fof.include?(user2)
    # end
    user_friends = get_friends(user2)
    return User::FRIEND_OF_FRIEND if !(my_friends.collect(&:id) & user_friends.collect(&:id)).empty?
  
    User::NOT_FRIENDS
  end
end