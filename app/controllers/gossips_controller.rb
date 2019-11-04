class GossipsController < ApplicationController

    def create
        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 1)
        if @gossip.save 
            flash[:success] = "Le gossip est sauvegardé"
            return redirect_to root_path
        else
            flash[:error] = "Oops il y a un problème"
            return redirect_to new_gossip_path
        end
    end

    def new
        @gossip = Gossip.new
    end

    def show
        @gossip = Gossip.find(params[:id])
        @comments = @gossip.comments
        @comment = Comment.new
    end 

    def edit
        @gossip = Gossip.find( params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        if @gossip.update(title: params[:title], content: params[:content], user_id: 1)
          redirect_to @gossip
        else
          render :edit
        end
      end
    
      def destroy
        @gossip = Gossip.find(params[:id])
        Gossip.delete(@gossip)
        flash[:success] = "Le gossip a été effacé"
        return redirect_to root_path

      end 
end
