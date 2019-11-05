class PoemsController < ApplicationController

    def index
        amount = params[:amount]
        poems = Poem.sample(amount)
        render json: {message: 'ok', data: poems}
    end

    def create
        lines = params[:lines].map {|lineData| Line.find_or_create_by(text: lineData)}
        poem = Poem.new(author: params[:author], title: params[:title])
        poem.lines += lines
        if poem.save
            render json: {message: ok, data: poem}
        else
            render json: {message: failure, data: poem.errors.full_messages}
        end 
    end
end
