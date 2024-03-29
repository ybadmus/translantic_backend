# frozen_string_literal: true

class CreateShippingInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_informations do |t|
      t.string(:company_name)
      t.string(:address_line1, null: false)
      t.string(:address_line2)
      t.boolean(:is_deleted, default: false, null: false)

      t.timestamps
    end
  end
end
