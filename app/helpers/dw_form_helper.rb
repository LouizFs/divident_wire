module DwFormHelper
  def dw_card(type, &block)
    @type = type
    render("common/card") { capture(&block) }
  end

  def dw_button
  end
end
