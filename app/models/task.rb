class Task < ApplicationRecord
  # Validations
  validates :title, presence: true, length: { minimum: 2, maximum: 100 }
  validates :description, length: { maximum: 500 }, allow_blank: true

  # Scopes (requêtes réutilisables)
  scope :completed, -> { where(done: true) }
  scope :pending, -> { where(done: false) }
  scope :recent, -> { order(created_at: :desc) }

  # Valeur par défaut pour done
  after_initialize :set_defaults, if: :new_record?

  private

  def set_defaults
    self.done ||= false
  end
end
