module MoviesHelper
    def sorted_column_class(column)
      return "sorted-asc" if params[:sort] == column && params[:direction] == "asc"
      return "sorted-desc" if params[:sort] == column && params[:direction] == "desc"
      ""
    end
  
    def sort_indicator(column)
      if params[:sort] == column
        params[:direction] == "asc" ? "▲" : "▼"
      else
        ""
      end
    end
  
    def toggle_direction(column)
      if params[:sort] == column && params[:direction] == "asc"
        "desc"
      else
        "asc"
      end
    end
  end
  