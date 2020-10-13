class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string      :item
      t.string      :text
      t.timestamps
    end
  end
end
