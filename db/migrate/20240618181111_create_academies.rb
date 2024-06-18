class CreateAcademies < ActiveRecord::Migration[7.1]
  def change
    create_table :academies do |t|
      t.string :name
      t.string :address
      t.float :rating
      t.text :review
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
