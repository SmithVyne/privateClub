class ApplicationController < ActionController::Base
  helper_method :post_owner

  private

    def post_owner
      return if current_user.id == @post.user_id

      flash[:notice] = 'Access denied as you are not the owner of that post'
      redirect_to posts_url
    end
end
