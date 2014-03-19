class Api::V1::TrainingController < ApplicationController
  before_filter :authenticate_user!
  respond_to :json
  
  def index
      puts("index")
      @training = Training.where('username=?',current_user).order('created_at DESC')
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @training }
      end
  end
  
  def create
    @training = Training.new
    @training.username = 2
    @training.distance = params[:distance]
    @training.comment = params[:comment]
    @training.start = params[:start]
    @training.stop = params[:stop]
    
    @training.save
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @training }   
      end
  end
  def new
                        
  end
  def edit
  
  end
  def show
    
  end
  def update
    @training = Training.where('username=',current_user,:id,params[:id])
    @training.update(:distance, params[:distance])
    @training.update(:comment, params[:comment])
    @training.update(:start, params[:start])
    @training.update(:stop, params[:stop])
    @training.save
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @training }   
      end
  end
  def destroy
    @training = Training.where('username=?',current_user,"id",id)
    @training.destroy_all
    respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @training }
    end
  end
  def statistics
    @training = Training.where('username=?',current_user).order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @training }
    end
  end
end
