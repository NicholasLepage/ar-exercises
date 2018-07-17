class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, inclusion: { in: 0..Float::INFINITY }

  validate  :must_have_either_mens_or_womens_apparel

  def must_have_either_mens_or_womens_apparel
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:Store, "needs at least mens or womens apparel")
    end
  end


end
