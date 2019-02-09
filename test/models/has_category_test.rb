# == Schema Information
#
# Table name: has_categories
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  venue_id    :integer
#
# Indexes
#
#  index_has_categories_on_category_id  (category_id)
#  index_has_categories_on_venue_id     (venue_id)
#

require 'test_helper'

class HasCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end