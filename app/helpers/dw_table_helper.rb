module DwTableHelper
  def dw_table(elements:, keys:, name:, with_checks:)
    render partial: "common/table", locals: { elements: elements, keys: keys, name: name, with_checks: with_checks }
  end
end
