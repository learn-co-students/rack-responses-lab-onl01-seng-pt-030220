class Application

    def call(env)
        response = Rack::Response.new
        time_now = Time.now 
        #if < 12 "Good Morning!" else "Good Afternoon!"
        (time_now.hour < 12) ? (response.write "Good Morning!") : (response.write "Good Afternoon!")
        response.finish # .write and .finish
    end

end