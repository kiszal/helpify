class ClosedHelpsController < ApplicationController
  def create  
    ClosedHelp.create(:helpable_id => params[:object_id].to_i, :helpable_type => params[:object_type], 
                                       :url => params[:url])
    respond_to do |format|
      format.js { 
        render :update do |page|
          page.remove HELP_SETTING[params[:url]]  
        end
      }
    end
  end
end
