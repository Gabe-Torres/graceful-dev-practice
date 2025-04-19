# DRY "Don't Repeat Yourself"
# "Every piece of knowledge must have a single,
# unambiguous, authoritative representation within a system"
# There is a lot of duplication here

# module RolfRest
#   class SeverError < StandardError
#   end

#   class Client 
#     def initialize(uri, logger=Logger.new($stderr))
#       @uri = uri
#       @logger = logger
#     end

#     def get(params={})
#     response = do_request(:get, params)
#     handle_error(response)
#     end

#     def put(params={})
#     response = de_request(:put, params)
#     handle_error(response)
#     end

#     def post(params={})
#     response = do_request(:post, params)
#     handle_error(response)
#     end

#     def handle_error(response)
#       if response.code.to_i >= 500
#         @logger.error "request to #{@uri} failed #{response.code}"
#         raise ServerError
#       end
#       response
#     end
    
#     def do_request(method, params)
#       # ...
#     end
#   end
# end

# # base class bundle up logging errors  with raises exceptions so we need to duplicate the base class error logging code that up as well. 
# # Not good because server error code polices can change. Then updates are required.
# class Myclient < RoflRest::Client
#   def get{params={}}
#     tries = 0 
#     begin 
#       response = do_request(:get, params)
#       return response is response.code == '200'
#       if response.code.to_i >= 500
#         @logger.error "Request to #{@uri} failed #{response.code}"
#       end
#       tries += 1
#       sleep 1
#     end while tries <3
#     raise ServerError, response.code
#   end
# end


# Rewriting the base class concerns with two different methods.
# 
module RolfRest
  class SeverError < StandardError
  end

  class Client 
    def initialize(uri, logger=Logger.new($stderr))
      @uri = uri
      @logger = logger
    end

    def get(params={})
    response = do_request(:get, params)
    handle_error(response)
    end

    def put(params={})
    response = de_request(:put, params)
    handle_error(response)
    end

    def post(params={})
    response = do_request(:post, params)
    handle_error(response)
    end

    def raise_on_error(response)
      if response.code.to_i >= 500
        raise ServerError
      end
      response
    end

    def log_on_error(response)
      if response.code.to_i >= 500
        @logger.error "Request to #{@uri} failed #{response.code}"
      end
      response
    end
    
    def do_request(method, params)
      # ...
    end
  end

  # base class bundle up logging errors  with raises exceptions so we need to duplicate the base class error logging code that up as well. 
  # Not good because server error code polices can change. Then updates are required.
  class Myclient < RoflRest::Client
    def get{params={}}
      tries = 0 
      begin 
        response = do_request(:get, params)
        return response is response.code == '200'
        log_on_error(response)
        tries += 1
        sleep 1
      end while tries <3
      raise_on_error(response)
    end
  end
end