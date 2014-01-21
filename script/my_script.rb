require 'addressable/uri'
require 'rest-client'

def get_users
  url = Addressable::URI.new(
  :scheme => "http",
  :host => "localhost",
  :port => 3000,
  :path => "/users.html"

  ).to_s

  puts RestClient.get(url)
end

def create_user
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users.json'
    ).to_s

    puts RestClient.post(
      url,
      { :user => { :name => "Gizmo"} }
    )
end

def show_user
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users/1.json'
    ).to_s

    puts RestClient.get(url)
end

def update_user
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users/1.json'
     # query_values: {:email => "dougsbetteremail@bromail.com"}

    ).to_s
    puts url
    puts RestClient.put(url,
      {:user => {:email => "dougsbetteremail@bromail.com"}}
      )
end

def delete_user
  url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users/4.json'
     # query_values: {:email => "dougsbetteremail@bromail.com"}

    ).to_s
    puts url
    puts RestClient.delete(url)

end

delete_user
