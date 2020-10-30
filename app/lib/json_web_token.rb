require 'jwt'

class JsonWebToken
  class << self
    # secret to encode and decode token
    HMAC_SECRET = Rails.application.secrets.secret_key_base

    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, HMAC_SECRET)
    end

    def decode(token)
      # get payload; first index in decoded Array
      body = JWT.decode(token, HMAC_SECRET)[0]
      HashWithIndifferentAccess.new body
    rescue JWT::DecodeError => e
      raise ExceptionHandler::InvalidToken, e.message
    end
  end
end
