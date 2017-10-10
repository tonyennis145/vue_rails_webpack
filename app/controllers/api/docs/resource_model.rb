class Api::Docs::ResourceModel
  include Swagger::Blocks

  swagger_schema :Resource do
    key :required, [:id]
    property :id do
      key :type, :integer
    end
  end

end