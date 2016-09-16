class CreateSurveyResults < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_results do |t|
      t.string :gender
      t.string :age
      t.string :income
      t.string :did_you_watch
      t.boolean :are_you_black
      t.string :favorite_programs
      t.string :favorite_programs_1
      t.string :favorite_programs_2
      t.string :first_visited
      t.string :first_visited_other
      t.boolean :news_network
      t.string :location
      t.string :suggest_events
      t.string :to_cover
      t.string :mostly_use
      t.string :did_you_hear
      t.string :did_you_hear_other
      t.string :like_to_see
      t.string :things_like
      t.string :things_dislike

      t.timestamps
    end
  end
end
