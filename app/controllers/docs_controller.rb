class DocsController < ApplicationController
  protect_from_forgery with: :null_session

  layout 'docs'

  def index
  end
end