module Response
  def json_response(object, status = :ok, serializer)
    render json: object, status: status, serializer: serializer
  end
end