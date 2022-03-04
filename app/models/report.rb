class Report < ApplicationRecord
  before_create :generate_random_id
  after_create :send_email

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

  def send_email
    ProductOwnerMailer.with(report: self).report_email.deliver!
  end
end
