# coding: utf-8

module Status
  class GithubRequest
    attr_reader :url, :options
    def initialize
      @url = "https://api.github.com"
      @options = {}
    end
  end
end

module Status
  class CiRequest
    attr_reader :url, :options
    def initialize
      @url = Status.ci_url
      @options = {:user => Status.ci_user, :password => Status.ci_password}
    end
  end
end


module Status
  class Request
    attr_reader :conn
    def initialize(type=:github)
      @klass = {:github => GithubRequest, :ci => CiRequest}[type]
      @klass = @klass.new
      @site = RestClient::Resource.new(@klass.url, @klass.options, :headers => { :accept => :json, :content_type => :json })
    end

    def get(path)
      begin
        MultiJson.decode @site[path].get
      rescue
        "not found"
      end
    end

    def post(path, data)
      begin
        MultiJson.decode @site[path].post(MultiJson.encode(data))
      rescue
        "not found"
      end
    end
  end
end