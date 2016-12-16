class ArticlesController < ApplicationController
  # ISNECUD standard order of controller actions
  # AR query interface http://guides.rubyonrails.org/active_record_querying.html#ordering

  def index
    @articles = Article.all.order(:title)
  end

  def show
    # instance variables are accessible from the view
    @article = Article.find(params[:id])
  end

  def new
    # IMHO poor solution
    # instance variable added because the view queries @article.errors.any? which will fail if the instance variable isn't present
    @article = Article.new
  end

  def edit
    # handle the case where an invalid article id is given
    @article = Article.find(params[:id])
  end

  def create
    # render plain: params[:article].inspect
    # instance variable need here for when the render fails, the view needs to access the object to display the validation errors
    @article = Article.new(article_params)

    if @article.save
      # redirect results in a new request
      # causes the browser to rerender and param values are lost
      redirect_to @article
    else
      # rendering is done within the same request as the form submission
      # form values are retained
      render 'new'
    end
  end

  def update
    # only the updated attributes should be passed to the update action
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      # rendering is done within the same request as the form submission
      # form values are retained
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  # strong params are only used for mass assignment on the create and update actions
  private def article_params
    # http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
    # http://weblog.rubyonrails.org/2012/3/21/strong-parameters/
    params.require(:article).permit(:title, :text)
  end
end
