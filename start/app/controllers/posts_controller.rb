class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def rendJson
  	#render  Post.all
  	#@posts = Post.all
  	render json: Post.all[params[:id].to_i]
  	#paramsは文字列
  end

  def submit
  	puts("success!!!!!")
  	puts(params["content"])
  	Post.create(id:"4",content:params["content"],created_at:"unknown",updated_at:"unknown")
  	#render :text => params
  end
end
