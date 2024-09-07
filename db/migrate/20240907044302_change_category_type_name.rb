class ChangeCategoryTypeName < ActiveRecord::Migration[7.2]
  def change
    change_table :categories do |t|
      t.rename :type, :kind
    end
  end
end
