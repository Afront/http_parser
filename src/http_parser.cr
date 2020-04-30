# TODO: Write documentation for `HttpParser`
module HttpParser
  VERSION = "0.1.0"

  class Message
    property http_version, hash
    VERSIONS = Set{0.9, 1.0, 1.1, 2.0, 3.0}

    def initialize(http_version : String | Float, hash : Hash)
      @http_version = validate_verison(http_version)
      @hash = validate_hash(hash)
    end

    def validate_hash(hash : Hash)
    end

    def validate_version(version : String)
      raise ArgumentError if !VERSIONS.includes? version
    end
  end

  class Response < Message
    property code

    def initialize(http_version : String | Float, @hash : Hash)
      @http_version = validate_verison(http_version)
    end
  end

  class Request < Message
    property method
    HTTP_METHODS   = Set{"GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"}
    HTCPCP_METHODS = Set{"BREW", "PROPFIND", "WHEN"}

    def initialize(http_version : String | Float, method : String, @hash : Hash)
      @http_version = validate_verison(http_version)
      @method = validate_method(method)
    end

    def validate_method(method : String)
      raise ArgumentError if !(HTTP_METHODS + HTCPCP_METHODS).includes? method
    end
  end

  # TODO: Put your code here
  class Parser
    def initialize
    end
  end
end
