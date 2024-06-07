class ChasesController < ApplicationController
    def index
      @chases = Chase.all
    end
  
    def new
      @chase = Chase.new
    end
  
    def create
      chase = Chase.new(chase_params)
      if chase.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end
  
    # 追記ここから
    def show
      @chase = Chase.find(params[:id])
    end
    # ここまで
  
    private
    def chase_params
      params.require(:chase).permit(:body)
    end
  end