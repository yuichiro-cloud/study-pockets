class StudiesController < ApplicationController 

def index
  @studies = Study.all
end

def show
  @study = Study.find(params[:id])
end

def new
  @study = Study.new
end

def create
  @study = Study.new(study_params)
  if @study.save
    redirect_to root_path
  else
    
  end
end

private
# def item_params
  # params.require(:item).permit(:name, :text,:condition,:burden, :area, :day, :price, :category_id, :user_id, :buyer , photos_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
# end

def study_params
  params.require(:study).permit(:content, :title).merge(user_id: current_user.id)
end
end
