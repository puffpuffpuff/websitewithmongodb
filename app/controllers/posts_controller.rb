class PostsController < ApplicationController
  def index
  end
  
  def new
  end
  
  def create
    @post = Post.new(article_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
