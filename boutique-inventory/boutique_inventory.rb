class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map do |i|
      i[:name]
    end.flatten.sort
  end

  def cheap
    @items.select do |i|
      i[:price] < 30
    end
  end

  def out_of_stock
    @items.select do |i|
      i[:quantity_by_size] == Hash.new
    end
  end

  def stock_for_item(name)
    @items.find { |i| i[:name] == name }[:quantity_by_size]
  end

  def total_stock
    @@count = 0
    @items.each do |i|
      i[:quantity_by_size].each do |_, q|
        @@count += q
      end
    end
    @@count
  end

  private
  attr_reader :items
end
