class Contact < ApplicationRecord
  def self.search(search)
    if search
      Contact.where('name LIKE :search OR phone LIKE :search', search: "%#{search}%")
    else
      Contact.all
    end
  end


end
