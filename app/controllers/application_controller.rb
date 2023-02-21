class ApplicationController < ActionController::Base
  before_action :authenticate_user!


  #  protection contre les attaques CSRF en incluant la balise <%= csrf_meta_tags %> dans l'en-tête de votre page,
  # et en ajoutant protect_from_forgery dans votre ApplicationController

  # protect_from_forgery with: :exception
end
