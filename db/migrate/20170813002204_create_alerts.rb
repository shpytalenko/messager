class CreateAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table :alerts do |t|
      t.integer :user_id
      t.string :coin_to_watch
      t.string :email
      t.string :phone_number
      t.integer :price_above
      t.string :above_currency
      t.integer :price_below
      t.string :below_curency
      t.jsonb :data
      t.boolean :active
      t.string :alert_type

      t.timestamps
    end
  end
end
