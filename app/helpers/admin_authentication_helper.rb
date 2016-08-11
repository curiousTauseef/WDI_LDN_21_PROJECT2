module AdminAuthenticationHelper
  
  def is_admin?
    unless user_signed_in? && current_user.admin?
      flash[:danger] = "This area is restricted for admins only."
      redirect_to root_path
    end    
  end

  def is_creator?
    post = Post.find(params[:id])
    unless user_signed_in? && (current_user == post.user || current_user.admin?)
      flash[:danger] = "You do not have permission to edit this post."
      redirect_to posts_path
    end    
  end

end
