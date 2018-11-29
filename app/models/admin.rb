class Admin < ApplicationRecord
  def change
    add_column :users, :admin, :boolean, default: false
  end
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
