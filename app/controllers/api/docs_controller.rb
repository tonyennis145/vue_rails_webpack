class Api::DocsController < Api::BaseController
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'API'
      key :description, 'The API'
      contact do
        key :name, 'Tech Team'
      end
    end
    key :host, Rails.env.development? ? 'localhost:3000' : 'app.com'
    key :basePath, '/api/v1'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end


  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    Api::Docs::ResourcesController,
    Api::Docs::ResourceModel,
    Api::Docs::ErrorModel,
    self
  ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end

end