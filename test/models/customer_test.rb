# == Schema Information
#
# Table name: customers
#
#  id          :bigint           not null, primary key
#  email       :string(255)      default(""), not null
#  name        :string(255)      not null
#  phone       :string(255)
#  type        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :bigint           not null
#
# Indexes
#
#  index_customers_on_location_id  (location_id)
#
require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end