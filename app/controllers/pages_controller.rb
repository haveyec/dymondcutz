class PagesController < InheritedResources::Base

  private

    def page_params
      params.require(:page).permit(:title, :body)
    end

end
