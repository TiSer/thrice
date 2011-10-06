module ApplicationHelper
  
  def day_to_word(day)
    case day
    when 1
      "Sunday"
    when 2
      "Monday"
    when 3
      "Tuesday"
    when 4
      "Wednsday"
    when 5
      "Thursday"
    when 6
      "Friday"
    when 7
      "Saturday"
    end
  end

end
