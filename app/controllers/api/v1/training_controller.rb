class Api::V1::TrainingController < ApplicationController
  before_filter :authenticate_user!
  respond_to :json
  
  def index
      @training = Training.where('username=?',current_user).order('created_at DESC')
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @training }
      end
  end
  def create
    
  end
  def new
    
  end
  def edit
  
  end
  def show
    
  end
  def update
  end
  def destroy
  end
end
