# Currently cannot test this as my compiler is not working

# TODO: Write documentation for `HttpParser`
module HttpParser
  VERSION = "0.1.0"

  class Message
    property http_version, hash
    VERSIONS = Set{0.9, 1.0, 1.1, 2.0, 3.0}

    def initialize(http_version : String | Float, hash : Hash)
      @http_version = validate_verison http_version
      @hash = validate_hash hash
    end

    def validate_hash(hash : Hash)
    end

    def validate_version(version : String) : String
      (raise ArgumentError if !VERSIONS.includes? version) || version
      # raise ArgumentError if !VERSIONS.includes? version
    end

    def get(field : String | Symbol)
      hash[field]
    end
  end

  class Response < Message
    property code

    def initialize(http_version : String | Float, hash : Hash)
      @http_version = validate_verison http_version
      @hash = validate_hash hash
    end
  end

  class Request < Message
    property method
    HTTP_METHODS   = Set{:get, :heard, :post, :put, :delete, :connect, :options}
    HTCPCP_METHODS = Set{:brew, :propfind, :when}

    def initialize(http_version : String | Float, method : String, hash : Hash)
      @http_version = validate_verison http_version
      @method = validate_method method.downcase.to_symbol
      @hash = validate_hash hash
    end

    def validate_method(method : Symbol) : String
      (raise ArgumentError if !(HTTP_METHODS + HTCPCP_METHODS).includes? method) || method
      raise ArgumentError if !(HTTP_METHODS + HTCPCP_METHODS).includes? method
    end
  end

  # TODO: Put your code here
  class Parser
    def initialize
    end

    def parse_request
    end

    def parse_response
    end
  end
end
