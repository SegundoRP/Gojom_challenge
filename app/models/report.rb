class Report < ApplicationRecord
  before_create :generate_random_id

  validates :asunto, presence: true
  validates :descripcion, presence: true
  has_many_attached :photos
  validates :photos, presence: true
  has_rich_text :descripcion

  private

  def generate_random_id
    begin
      self.id = SecureRandom.uuid
    end while Report.where(id: self.id).exists?
  end
end
