module SessionCounter

  private
    def session_counter
      if session[:counter].nil?
        session[:counter] = 0
      end

      session[:counter] += 1
      @session_counter = session[:counter]
    end

    def reset_counter
      session[:counter] = 0
      @session_counter = session[:counter]
    end
  end
