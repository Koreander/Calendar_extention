class IcsApi::AssignmentsController < ApplicationController
  # Calls the get_current_user action from below
  before_filter :get_current_user
  
  # no login needed for actions
  skip_before_filter :require_user
  skip_before_filter :user_setup
  
  def index
         #Variable calendar_event get filled with dates from databasetable assignment
        unless params[:token].empty?
          @calendar_event = User.current.assignments
        end
    respond_to do |format|
      format.ics
    end
  end
    
  private
  # Compares token and gets the current user user
  def get_current_user
    unless params[:token].empty?
      User.current = User.where(:icalendar_token => params[:token]).first
    end
  end  

end
