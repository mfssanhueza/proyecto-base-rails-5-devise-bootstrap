class DrinksController < InheritedResources::Base

  private

    def drink_params
      params.require(:drink).permit(:name, :recipe)
    end

end
