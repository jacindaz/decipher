class PhrasesController < ApplicationController

  def index
    if params[:search]
      search_term = params[:search][:query]
      @phrases = Phrase.loose_search(search_term)
    else
      @phrases = Phrase.all
    end
  end

  def show
    if params[:id] == "random"
      offset = rand(Phrase.count)
      @phrase = Phrase.offset(offset).take
    else
      @phrase = Phrase.find(params[:id])
    end

    @score = @phrase.upvotes - @phrase.downvotes

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
      flash[:notice] = "Your phrase couldn't be saved."
      redirect_to phrases_path
    end
  end

  def update
    @phrase = Phrase.find(params[:id])

    if params[:vote] == "up"
      @phrase.upvotes += 1
    else
      @phrase.downvotes += 1
    end
    @phrase.save

    if params[:location] == "index"
      redirect_to phrases_path
    elsif params[:location] == "show"
      redirect_to phrase_path(@phrase)
    end
  end

  def destroy
  end

   private

  def phrase_params
    params.require(:phrase).permit(:slang, :description, :example, :upvotes, :downvotes)
  end

end
