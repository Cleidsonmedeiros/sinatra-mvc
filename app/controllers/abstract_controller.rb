class AbstractController
    def render(view)
        template = File.open("./app/views/#{view}.html.erb")
        ERB.new(template.read).result(binding)
    end

    def initialize(params={}, http=nil)
        @params = params
        @http = http
    end

    def http
        @http
    end

    def params
        @params
    end

end