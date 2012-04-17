class IcsApi::AssignmentsController < ApplicationController
  before_filter :get_current_user
  skip_before_filter :require_user
  skip_before_filter :user_setup
  
  def index
         #Variable calendar_event get filled with dates from databasetable assignment
        @calendar_event = User.current.assignments
      respond_to do |format|
        format.ics
      end
  end
    
  private
  def get_current_user
    unless params[:token].blank?
      User.current = User.where(:icalendar_token => params[:token]).first
    end
  end  

end
