module StatusHelper
  def bg_status(status)
    if status == "accepted"
      return "green"
    elsif status == "rejected"
      return "red"
    elsif status == "cancelled"
      return "black"
    else
      return "orange"
    end
  end
end
