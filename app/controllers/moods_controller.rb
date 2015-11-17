class MoodsController < ApplicationController
  def index
  	@moods = Mood.all
  end

  def show
  	@mood = Mood.find(params[:id])
  end

  def new
  	@mood = Mood.new
  end

  def create 
  	@mood = Mood.new(mood_params)

  	if @mood.save
  		redirect_to moods_url
  	else
  		render :new
  	end
  end

  private 
  	def mood_params
  		params.require(:mood).permit(:rating, :entry)
  end
  	
end

