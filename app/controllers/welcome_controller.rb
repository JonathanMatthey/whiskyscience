class WelcomeController < ApplicationController
  def index
    @whiskies = Whisky.all
    @notes = TastingNote.all
    @users = User.all
  end
end
