class Listings::Actions::FetchData < BaseAction
  include HTTParty
  include Nokogiri
  base_uri 'api.airbnb.com'

  def call
    retrieve_listing_id
    send_request
    parse_response
  end

  private

  attr_reader :listing_url, :listing_id, :response

  def retrieve_listing_id
    @listing_id = check_listing_url
  end

  def parse_short_link
    page = HTTParty.get(listing_url.strip)
    CGI.parse(URI.parse(parse_page(page).css('meta')[2].values.last).query)['id'][0]
  end

  def parse_page(page)
    Nokogiri::HTML(page)
  end

  def parse_default_link
    listing_url.split('/').last.strip
  end

  # TODO: Add third parsing method for custom urls (currently no idea how to do that)
  def check_listing_url
    return parse_default_link if listing_url.scan(/rooms/).any?

    parse_short_link if listing_url.scan(/(abnb).(me)/).any?
  end

  def send_request
    @response = self.class.get("/v1/listings/#{listing_id}", { query: { client_id: RCreds.fetch(:airbnb, :client_id) } })
  end

  def parse_response
    listing = response['listing']
    { title: listing['name'], city: listing['city'], country: listing['country'] }
  end
end
