class Cell
  def status(status)
    if status == 1
      return :live
    elsif status == 0
      return :dead
    end
  end
end