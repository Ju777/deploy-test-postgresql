# app/models/user.rb

class User < ApplicationRecord
	# Il faut ajouter les deux modules commençant par jwt
	devise :database_authenticatable, :registerable, :recoverable,
	:jwt_authenticatable,
	jwt_revocation_strategy: JwtDenylist
end