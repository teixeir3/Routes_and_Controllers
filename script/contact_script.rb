require 'addressable/uri'
require 'rest-client'

def get_contacts
  url = Addressable::URI.new(
  :scheme => "http",
  :host => "localhost",
  :port => 3000,
  :path => "/contacts.html"

  ).to_s

  puts RestClient.get(url,
  {:user_id => 1 })
end

def create_contact
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/contacts.json'
    ).to_s
    puts url
    puts RestClient.post(
      url,
      { :contact => { :name => "My Name", email: "MyName@hotmail.com", user_id: 2 } }
    )
end

def show_contact
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/contacts/1.json'
    ).to_s

    puts RestClient.get(url)
end

def update_contact
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/contacts/1.json'
     # query_values: {:email => "dougsbetteremail@bromail.com"}

    ).to_s
    puts url
    puts RestClient.put(url,
      {:contact => {:name => "My New Name"}}
      )
end

def delete_contact
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/contacts/1.json'
     # query_values: {:email => "dougsbetteremail@bromail.com"}

    ).to_s
    puts url
    puts RestClient.delete(url)

end

get_contacts