class CreateWish < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      t.string :name
      t.string :contact
      t.text :wish

      t.timestamps
    end
  end
end