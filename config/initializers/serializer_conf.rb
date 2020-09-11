ActiveModelSerializers.config.serializer_lookup_chain = [
  lambda do |resource_class, serializer_class, namespace|
    "API::V1::#{resource_class}"
  end
]