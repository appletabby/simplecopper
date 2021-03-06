class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :title
      t.text :description
      t.boolean :is_done
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
