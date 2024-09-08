module DwTableHelper
  def dw_table(elements:, keys:, type:, with_checks:, actions:)
    render partial: "common/table", locals: { elements: elements, type: Category.name, keys: keys, with_checks: with_checks, actions: actions }
  end
end
