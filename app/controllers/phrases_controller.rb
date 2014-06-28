class PhrasesController < ApplicationController

  def index
    @phrases = Phrase.all
  end

  def show
    @phrase = Phrase.find(params[:id])
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)

    if @phrase.save
      flash[:notice] = "Phrase submitted!"
      redirect_to phrase_path(@phrase)
    else
      flash[:notice] = "Your character couldn't be saved."
      redirect_to phrases_path
    end
  end

  def destroy
  end

   private

  def phrase_params
    params.require(:phrase).permit(:slang, :description, :example)
  end

end
