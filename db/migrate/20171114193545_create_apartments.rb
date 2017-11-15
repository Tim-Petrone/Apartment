class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :manager_name
      t.string :manager_number
      t.string :hours

      t.timestamps
    end
  end
end
