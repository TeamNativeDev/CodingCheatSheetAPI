class CreateTips < ActiveRecord::Migration[6.0]
  def change
    create_table :tips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :code_snippet
      t.string :more_info

      t.timestamps
    end
  end
end
