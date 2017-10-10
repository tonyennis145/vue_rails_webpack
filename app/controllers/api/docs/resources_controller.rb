class Api::Docs::ResourcesController
  include Swagger::Blocks

  swagger_path '/resources/{id}' do

    operation :get do
      key :description, 'Returns a resource data'
      key :tags, [
        'lead'
      ]
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of resource to fetch'
        key :required, true
        key :type, :integer
        key :format, :int64
      end
      response 200 do
        key :description, 'resource data'
        schema do
          key :'$ref', :Resource
        end
      end
    end

  end

end