class Node
  attr_accessor :left, :right, :value

  def initialize value, left: nil, right: nil
    @value	= value
    @left	= left
    @right	= right
  end

  def to_s
    @value
  end
end