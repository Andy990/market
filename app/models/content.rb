class Content < ApplicationRecord
    belongs_to :user

    has_attached_file :cover
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
    messagge:'Solo le immagini sono supportate'

    validates :titolo, :descrizione, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :cover, attachment_presence: true
    end
