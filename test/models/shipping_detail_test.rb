# frozen_string_literal: true

# == Schema Information
#
# Table name: shipping_details
#
#  id                      :bigint           not null, primary key
#  declared_value          :decimal(9, 2)    default(0.0), not null
#  description             :string(500)      not null
#  dutiable                :boolean          default(NULL)
#  frieght_type            :integer          default("air")
#  height                  :decimal(5, 2)    default(0.0), not null
#  is_deleted              :boolean          default(FALSE), not null
#  length                  :decimal(5, 2)    default(0.0), not null
#  quantity                :integer          default(0)
#  status                  :integer          default("submitted")
#  tracking_number         :string(14)       not null
#  weight                  :decimal(5, 2)    default(0.0), not null
#  width                   :decimal(5, 2)    default(0.0), not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  departure_id            :bigint           not null
#  destination_id          :bigint           not null
#  incoterm_id             :bigint           not null
#  location_id             :bigint
#  receiver_id             :bigint           not null
#  shipper_id              :bigint           not null
#  shipping_information_id :bigint           not null
#
# Indexes
#
#  index_shipping_details_on_departure_id             (departure_id)
#  index_shipping_details_on_destination_id           (destination_id)
#  index_shipping_details_on_incoterm_id              (incoterm_id)
#  index_shipping_details_on_location_id              (location_id)
#  index_shipping_details_on_receiver_id              (receiver_id)
#  index_shipping_details_on_shipper_id               (shipper_id)
#  index_shipping_details_on_shipping_information_id  (shipping_information_id)
#
# Foreign Keys
#
#  fk_rails_...  (departure_id => locations.id)
#  fk_rails_...  (destination_id => locations.id)
#  fk_rails_...  (receiver_id => customers.id)
#  fk_rails_...  (shipper_id => customers.id)
#
require 'test_helper'

class ShippingDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
