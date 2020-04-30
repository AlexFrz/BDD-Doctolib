class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.references :city, foreign_key: true
      t.references :specialty, foreign_key: true
    end
  end
end
