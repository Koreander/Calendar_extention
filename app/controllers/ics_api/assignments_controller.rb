class IcsApi::AssignmentsController < ApplicationController
  def index
        @calendar_event = Assignment.find(:all)
      end
    end
  end
  
end
