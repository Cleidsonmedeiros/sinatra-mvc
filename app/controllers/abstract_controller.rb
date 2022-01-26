class AbstractController
    def render(view)
        template = File.open("./app/views/#{view}.html.erb")
        ERB.new(template.read).result(binding)
    end

    def initialize(params={})
        @params = params
    end

    def params
        @params
    end

end