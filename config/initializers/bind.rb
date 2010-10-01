class Object
  def get_friends(user)
    id_array = []
    friends_array = []
    case user.id
    when 1
      (1..100).each { |id| id_array << rand(1000) }
      id_array << [2]
      id_array = id_array.flatten.uniq
      id_array = id_array - [1, 3, 4]
      id_array.each do |id|
        friends_array << User.new(:id => id)
      end
    when 2
      (1..100).each { |id| id_array << rand(1000) }
      id_array << [1,3]
      id_array = id_array.flatten.uniq
      id_array = id_array - [2, 4]
      id_array.each do |id|
        friends_array << User.new(:id => id)
      end
    when 3
      (1..100).each { |id| id_array << rand(1000) }
      id_array << [2]
      id_array = id_array.flatten.uniq
      id_array = id_array - [1,3,4]
      id_array.each do |id|
        friends_array << User.new(:id => id)
      end
    else
      (1..100).each { |id| id_array << rand(1000) + rand(10000) + 1000 }
      id_array.flatten.uniq!
      id_array = id_array - [1,2,3,4]
      id_array.each do |id|
        friends_array << User.new(:id => id)
      end
    end
    
    friends_array
  end
end
