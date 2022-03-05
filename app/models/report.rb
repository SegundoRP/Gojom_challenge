class Report < ApplicationRecord
  before_create :generate_random_url
  after_create :send_email

  validates :asunto, presence: true, length: { minimum: 10 }
  validates :descripcion, presence: true
  has_many_attached :photos
  validates :photos, presence: true
  has_rich_text :descripcion

  private

  # Metodo para generar id randomico y unico
  def generate_random_url
    begin
      self.random_url = SecureRandom.uuid
    end while Report.where(random_url: self.random_url).exists?
  end

  # Metodo que envia mail luego de creado el formulario
  def send_email
    ProductOwnerMailer.with(report: self).report_email.deliver!
  end
end
