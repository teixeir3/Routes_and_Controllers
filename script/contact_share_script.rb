require 'addressable/uri'
require 'rest-client'

def create_contact_share
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/contact_shares.json'
    ).to_s
    puts url
    puts RestClient.post(
      url,
      { :contact_share => { :user_id => 2, :contact_id => 2 } }
    )
end

def delete_contact_share
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/contact_shares/2.json'

    ).to_s
    puts url
    puts RestClient.delete(url)

end

delete_contact_share