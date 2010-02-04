module ClosedHelpsHelper
  def show_help(object)
    url = params[:controller]+"/"+params[:action]
    if HELP_SETTING[url] and object.wants_help_on?(url)
      render :partial => "helps/"+HELP_SETTING[url], 
                  :locals => {:object_id => object.id, :object_type => object.class.name, :url => url}
    end 
  end
end
