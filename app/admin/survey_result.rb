ActiveAdmin.register SurveyResult do
  permit_params :gender, :age, :income, :did_you_watch, :are_you_black, :favorite_programs,
    :favorite_programs_1, :favorite_programs_2, :first_visited, :news_network, :location, :suggest_events,
    :to_cover, :mostly_use, :did_you_hear, :like_to_see, :things_like, :things_dislike, :first_visited_other,
    :did_you_hear_other

  filter :gender

end
