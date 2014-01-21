class User < ActiveRecord::Base
  attr_accessible :username
  validates(:username, :presence => true, :uniqueness => true)

  has_many(
    :contacts,
    :class_name => 'Contact',
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many(
    :contact_shares,
    :class_name => 'ContactShare',
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many :shared_contacts, through: :contact_shares, source: :contact

end
