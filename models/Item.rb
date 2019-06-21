class Item
  attr_reader :name

  def initialize(params)
    @name=params[:name]
  end
end
