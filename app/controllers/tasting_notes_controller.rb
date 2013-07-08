class TastingNotesController < ApplicationController
  def new
  end

  def index
  end

  def edit
  end

  def show
    @tasting_note = TastingNote.find(params[:id])
  end
end
