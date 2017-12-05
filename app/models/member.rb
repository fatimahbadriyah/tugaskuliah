class Member < ApplicationRecord
	validates :nama, presence: true
	validates :alamat, presence: true
	validates :email, presence: true
	validates :password, presence: true
	validates :no_tlp, presence: true
end
