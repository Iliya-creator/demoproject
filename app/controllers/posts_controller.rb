class PostsController < ApplicationController
    # GET /posts
    def index
      @posts = Post.all
    end

    #edit a specific resource
    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(title: params[:post][:title], body: params[:post][:body])
            redirect_to post_path(@post)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def show
        debugger
    end

    def new

    end

    def create
        if @post is vaild then save
            redirect_to index(@post)
        else
            render:new, status: :unprocessable_entity
        end
    end
  end
