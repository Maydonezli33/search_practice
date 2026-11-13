class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[id name email created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[posts]
  end
end