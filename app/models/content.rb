class Content < ApplicationRecord
    belongs_to :user

    has_attached_file :cover
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
    messagge:'Solo le immagini sono supportate'

end
