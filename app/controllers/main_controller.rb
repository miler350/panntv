class MainController < ApplicationController
  
  def index
    @survey = SurveyResult.new
    @subscriber = Subscriber.new
  end
  
end
