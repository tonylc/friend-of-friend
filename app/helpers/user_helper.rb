module UserHelper
  def print_result_message(result)
    result_message = case result
    when User::FRIENDS
      "They are friends!"
    when User::FRIEND_OF_FRIEND
      "They are a friend of a friend!"
    when User::NOT_FRIENDS
      "They are not friends!"
    end

    result = content_tag(:p, result_message)
    result << content_tag(:p, "Time of execution #{@difference} seconds") if @difference > 1.5
    result
  end
  
  def display_error_message
    if @error
      @error
    end
  end
end
