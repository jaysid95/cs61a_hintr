class ConceptsController < ApplicationController
    
    def index
        @concepts = Concept.all
        @concepts.each do |concept|
            concept.update_status
        end
        @threshold = MessagesController.threshold
    end
    
    def show
        @concept = Concept.find(params[:id])
        @messages = @concept.messages
    end
    
end