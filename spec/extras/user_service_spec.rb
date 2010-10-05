require 'spec_helper'

describe UserService do
  before(:each) do
    @bob = User.new(:id => KaChing::Friends.bob_id, :name => "Bob")
    @mary = User.new(:id => KaChing::Friends.mary_id, :name => "Mary")
    @jim = User.new(:id => KaChing::Friends.jim_id, :name => "Jim")
    @zack = User.new(:id => KaChing::Friends.zack_id, :name => "Zack")
  end
end
