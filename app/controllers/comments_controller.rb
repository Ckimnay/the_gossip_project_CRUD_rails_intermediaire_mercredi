class CommentsController < ApplicationController
    def create
        @comment = Comment.new(content: params[:content], gossip_id: params[:gossip_id], user_id: 1)
        if @comment.save 
            flash[:success] = "Le commentaire est sauvegardé"
            redirect_back(fallback_location: root_path)
        else
            flash[:error] = "Oops il y a un problème"
            redirect_back(fallback_location: root_path)
        end
    end
    
    def edit
        @comment = Comment.find( params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.update(content: params[:content])
          redirect_to root_path
        else
          render :edit
        end
      end
    
      def destroy
        @comment = Comment.find(params[:id])
        Comment.delete(@comment)
        flash[:success] = "Le gossip a été effacé"
        return redirect_to root_path

      end   

end
  