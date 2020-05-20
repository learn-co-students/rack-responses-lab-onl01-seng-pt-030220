require 'pry'

class Application
    def call(env)
        current_time = Time.now
        resp = Rack::Response.new
        if current_time.hour < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end

end
