class Content < ApplicationRecord
    extend FriendlyId
    friendly_id :titolo, use: :slugged
    belongs_to :user

    has_many :sales
    has_attached_file :cover
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
    messagge:'Solo le immagini sono supportate'

    validates :titolo, :descrizione, :price, presence: true
    validates :price, numericality: { greater_than: 49 }
    validates :cover, attachment_presence: true
    end
