class Listings::Operations::Create < BaseOperation
  def call
    build_form
    return validation_fail unless form_valid?

    fetch_listing_data
    build_record
    assign_attributes
    return validation_fail unless save_record

    success(args.merge(record: record))
  end

  private

  def build_record
    @record = Listing.new(record_params.merge!(@listing_data))
  end

  def fetch_listing_data
    @listing_data = Listings::Actions::FetchData.call(args: args, listing_url: record_params[:airbnb_url])
  end

  def form_class
    Listings::Forms::Create
  end
end
