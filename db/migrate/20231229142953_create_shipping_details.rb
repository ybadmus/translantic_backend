class CreateShippingDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_details do |t|
      t.integer(:frieght_type, default: 1, null: false, limit: 1)
      t.decimal(:length, null: false, precision: 5, scale: 2, default: 0.0)
      t.decimal(:height, null: false, precision: 5, scale: 2, default: 0.0)
      t.decimal(:width, null: false, precision: 5, scale: 2, default: 0.0)
      t.text(:description, null: false)
      t.boolean(:dutiable, default: false)
      t.decimal(:weight, null: false, precision: 5, scale: 2, default: 0.0)
      t.integer(:quantity, default: 0)
      t.references(:current_location, null: false, foreign_key: { to_table: 'locations' })
      t.references(:shipper, null: false, foreign_key: { to_table: 'customers' })
      t.references(:incoterm, null: false)
      t.references(:departure, null: false, foreign_key: { to_table: 'locations' })
      t.references(:shipping_information, null: false)
      t.decimal(:declared_value, null: false, precision: 9, scale: 2, default: 0.0)
      t.boolean(:is_deleted, default: false, null: false)

      t.timestamps
    end
  end
end
