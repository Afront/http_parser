# TODO: Write documentation for `HttpParser`
module HttpParser
  VERSION = "0.1.0"

  class Message
    property date, cache_control, connection, content_Length, content_Language, content_encoding

    # def initialize(@version = Version)
    # end

    def initialize
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
