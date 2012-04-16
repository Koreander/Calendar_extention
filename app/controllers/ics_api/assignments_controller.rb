class IcsApi::AssignmentsController < ApplicationController
  before_filter :get_current_user
  
  def index
    #Variable calendar_event get filled with dates from databasetable assignment
    if params[:token] == current_user.icalendar_token
        @calendar_event = current_user.assignments
      end


end
