# frozen_string_literal: true

class Listings::Forms::Create < BaseForm
  PERMITTED_ATTRIBUTES = %i[airbnb_url user_id].freeze
  REQUIRED_ATTRIBUTES = %i[airbnb_url user_id].freeze
  attr_accessor(*PERMITTED_ATTRIBUTES, :record)
end
