# TODO: Write documentation for `HttpParser`
module HttpParser
  VERSION = "0.1.0"

  class Message
    property http_version, hash

    def initialize(@http_version : String, @hash : Hash)
      verify_version
    end

    def verify_hash
    end

    def verify_version
    end
  end

  class Response < Message
    def initialize
    end
  end

  class Request < Message
    def initialize
    end
  end

  # TODO: Put your code here
  class Parser
    def initialize
    end
  end
end
