# class UserSerializer < ActiveModel::Serializer
  class UserSerializer < ApplicationSerializer
  attributes :id, :name

  has_many :bookings
end
