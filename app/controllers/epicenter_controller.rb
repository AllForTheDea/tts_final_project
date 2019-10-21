class EpicenterController < ApplicationController
  def index
  end

  def myprojects
  	@projects = Project.all
  	@tracker = UserProject.all
  	@lines = Characterline.all

  	if params[:id].blank? == false
  		@project = Project.find(params[:id])
  	end
  end

  def about
  end
  
end
