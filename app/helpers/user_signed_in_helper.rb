module UserSignedInHelper

  def show_post_author(post)
    if user_signed_in?
        post.user.name
    end
  end
  
  def user_can_edit(post)
    if user_signed_in? && (current_user.id == post.user_id)
        link_to 'Edit', edit_post_path(post)
    end
  end

  def user_can_destroy(post)
    if user_signed_in? && (current_user.id == post.user_id)
        link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
    end
  end
end