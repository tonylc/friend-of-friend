require 'spec_helper'

describe UserService do
  before(:each) do
    # Bob and Mary are friends, Mary and Jim are friends
    @bob = User.new(:id => KaChing::Friends.bob_id, :name => "Bob")
    @mary = User.new(:id => KaChing::Friends.mary_id, :name => "Mary")
    # Bob and Jim are friend of friends
    @jim = User.new(:id => KaChing::Friends.jim_id, :name => "Jim")
    # Zack is not a friend
    @zack = User.new(:id => KaChing::Friends.zack_id, :name => "Zack")
    @user_service = UserService.new
  end
  
  describe "Bob" do            
    it "should have a relation of FRIENDS with Mary" do
      @user_service.is_friend_of_friend?(@bob, @mary) == User::FRIENDS
    end
    
    it "should have a relation of FRIENDS_OF_FRIENDS with Jim" do
      @user_service.is_friend_of_friend?(@bob, @jim) == User::FRIEND_OF_FRIEND
    end
    
    it "should have NO relation with Zack" do
      @user_service.is_friend_of_friend?(@bob, @zack) == User::NOT_FRIENDS
    end
  end
  
  describe "Mary" do
    it "should have a relation of FRIENDS with Bob" do
      @user_service.is_friend_of_friend?(@mary, @bob) == User::FRIENDS
    end
    
    it "should have a relation of FRIENDS with Jim" do
      @user_service.is_friend_of_friend?(@mary, @jim) == User::FRIENDS
    end
    
    it "should have NO relation with Zack" do
      @user_service.is_friend_of_friend?(@mary, @zack) == User::NOT_FRIENDS
    end
  end
  
  describe "Jim" do        
    it "should have a relation of FRIENDS_OF_FRIENDS with Bob" do
      @user_service.is_friend_of_friend?(@jim, @bob) == User::FRIEND_OF_FRIEND
    end
    
    it "should have a relation of FRIENDS with Mary" do
      @user_service.is_friend_of_friend?(@jim, @mary) == User::FRIENDS
    end
    
    it "should have NO relation with Zack" do
      @user_service.is_friend_of_friend?(@jim, @zack) == User::NOT_FRIENDS
    end
  end
  
  describe "Zack" do        
    it "should have NO relation with Bob" do
      @user_service.is_friend_of_friend?(@zack, @bob) == User::NOT_FRIENDS
    end
    
    it "should have NO relation with Mary" do
      @user_service.is_friend_of_friend?(@zack, @mary) == User::NOT_FRIENDS
    end
    
    it "should have NO relation with Jim" do
      @user_service.is_friend_of_friend?(@zack, @jim) == User::NOT_FRIENDS
    end
  end
end
