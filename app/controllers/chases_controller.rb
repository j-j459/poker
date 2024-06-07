class ChasesController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create]
  def top

  end

  def index
    @chases = Chase.all
  
  if params[:search] == nil
    @chases= Chase.all
  elsif params[:search] == ''
    @chases= Chase.all
  else
    #部分検索
    @chases = Chase.where("body LIKE ? ",'%' + params[:search] + '%')
  end
  end


  def new
        @chase = Chase.new
      end
    
      def create
        chase= Chase.new(chase_params)
        chase.user_id = current_user.id
        if chase.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end

      end
      def show
        @chase = Chase.find(params[:id])
        @comments = @chase.comments
        @comment = Comment.new
      end
    
      def edit
        @chase = Chase.find(params[:id])
      end

      def update
        chase = Chase.find(params[:id])
        if chase.update(chase_params)
          redirect_to :action => "show", :id => chase.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        chase = Chase.find(params[:id])
        chase.destroy
        redirect_to action: :index
      end
      
      private
      def chase_params
        params.require(:chase).permit(:body, :ace, :king, :queen, :jack, :ten, :nine, :eight, :seven, :six)
      end

end

