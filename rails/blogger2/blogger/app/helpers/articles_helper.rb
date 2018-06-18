module ArticlesHelper
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def find_article
    @article = Article.find_by(id: params[:id])
  end
end
