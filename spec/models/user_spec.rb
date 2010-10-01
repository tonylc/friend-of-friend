require 'spec_helper'

describe User do
  before(:each) do
    # Bob and Mary are friends, Mary and Jim are friends
    @bob = User.new(:id => KaChing::Friends.bob_id, :name => "Bob")
    @mary = User.new(:id => KaChing::Friends.mary_id, :name => "Mary")
    # Bob and Jim are friend of friends
    @jim = User.new(:id => KaChing::Friends.jim_id, :name => "Jim")
    # Zack is not a friend
    @zack = User.new(:id => KaChing::Friends.zack_id, :name => "Zack")
  end
  
  describe "Bob" do        
    it "should be friends with Mary" do
      @bob.get_friends(@bob).include?(@mary).should == true
    end
    
    it "should NOT be friends with Jim" do
      @bob.get_friends(@bob).include?(@jim).should == false
    end
    
    it "should NOT be friends with Zack" do
      @bob.get_friends(@bob).include?(@zack).should == false
    end
  end
  
  describe "Mary" do    
    it "should be friends with Bob" do
      @mary.get_friends(@mary).include?(@bob).should == true
    end
    
    it "should be friends with Jim" do
      @mary.get_friends(@mary).include?(@jim).should == true
    end
    
    it "should NOT be friends with Zack" do
      @mary.get_friends(@mary).include?(@zack).should == false
    end
  end
  
  describe "Jim" do    
    it "should NOT be friends with Bob" do
      @jim.get_friends(@jim).include?(@bob).should == false
    end
    
    it "should be friends with Mary" do
      @jim.get_friends(@jim).include?(@mary).should == true
    end
    
    it "should NOT be friends with Zack" do
      @jim.get_friends(@jim).include?(@zack).should == false
    end
  end
  
  describe "Zack" do    
    it "should NOT be friends with Bob" do
      @zack.get_friends(@zack).include?(@bob).should == false
    end
    
    it "should NOT be friends with Mary" do
      @zack.get_friends(@zack).include?(@mary).should == false
    end
    
    it "should NOT be friends with Jim" do
      @zack.get_friends(@zack).include?(@jim).should == false
    end
  end
end
