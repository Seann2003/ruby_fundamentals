class CommentsController < ApplicationController
    def create
        @listOfItems = Shop.find(params[:shop_id])
        @comment = @listOfItems.comments.create(comment_params)
        redirect_to shopping_path(@listOfItems)
      end
    
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
