class IcsApi::AssignmentsController < ApplicationController
  before_filter :get_current_user
  
  def index
        #Reads out the url-parameters and uses them to discover the user
    if params[:token] == current_user.icalendar_token  #??? michi fröge, möglich wenn benutzer nicht eingelogt ist
         #Variable calendar_event get filled with dates from databasetable assignment
        @calendar_event = current_user.assignments
      end


end
