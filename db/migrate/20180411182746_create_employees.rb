class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :title
      t.string :office
      t.string :img_url
      # This is a misstep. A Dog is its own model with its own table,
      # so this should be t.integer :dog_id, otherwise your associations won't run correctly.
      # I imagine this made submitting your form pretty difficult
      t.string :dog
      t.timestamps
    end
  end
end
