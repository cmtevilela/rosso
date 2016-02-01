module CashFlowsHelper
  def category_options
    Category.all.name.to_a.map do |name|
      "#{name}"
    end
  end
end
