module DwFormHelper
  def dw_card(&block)
    render("common/card") { capture(&block) }
  end

  def dw_button
  end
end
