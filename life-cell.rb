class Cell
  def initialize(status)
    @status = status
  end
  def status
    if @status == 1
      return :alive
    elsif @status == 0
      return :dead
    end
  end
end