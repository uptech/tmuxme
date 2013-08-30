class Api::V1::PublicKeysController < ApplicationController
  def index
    public_keys = []
    user = User.find_by_username(params[:user_id])
    if user.present?
      public_keys = user.public_keys.map { |pk| pk.value }
    end
    render json: public_keys
  end
end
