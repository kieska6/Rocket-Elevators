class Quote < ApplicationRecord
    belongs_to :user

end


def new
    @quote = current_user.posts.build
  end
  
  def create
    @quote = current_user.posts.build(quote_params)
  
  end