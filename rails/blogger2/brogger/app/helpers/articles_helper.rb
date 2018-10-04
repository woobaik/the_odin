module ArticlesHelper
  def article_params
    params.require(:article).permit(:title, :body, :title_list)
  end
end
