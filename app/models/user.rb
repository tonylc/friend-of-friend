class User
  attr_reader :id, :name
  
  FRIENDS = 1
  FRIEND_OF_FRIEND = 2
  NOT_FRIENDS = 0
  
  def initialize(params)
    @id = params[:id]
    @name = params[:name]
  end
end