# It's unfortunate we have to do this slightly awkward workaround with
# Post.tagged_with(@tag.name) in tags#show. The ActsAsTaggableOn::Tag model does
# not have a built-in relationship with its taggable types (this is a necessary
# consequence of some polymorphism which we're not using here). We could add one
# for Post, but this way is easier to demonstrate.

class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @posts = Post.tagged_with(@tag.name)
  end
end
