class SurveyResultsController < ApplicationController

  def create
    @survay = SurveyResult.new(survey_params)
    if @survay.save
      flash[:success] = "Thank you. Your survey was submitted successfully."
    else
      flash[:errors] = "#{ @subscriber.errors.full_messages.join(', ') }"
    end
    redirect_to root_path
  end

  private
    def survey_params
      params.require(:survey_result).permit(:gender, :age, :income, :did_you_watch, :are_you_black, :favorite_programs,
        :favorite_programs_1, :favorite_programs_2, :first_visited, :news_network, :location, :suggest_events,
        :to_cover, :mostly_use, :did_you_hear, :like_to_see, :things_like, :things_dislike, :first_visited_other,
        :did_you_hear_other)
    end
end