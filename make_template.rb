require 'erb'

servers = File.readlines('/Users/james/repos/jamie_ruby/jlp')

def get_baz_only(servers)
  servers.select{ |i| i[/^baz-server.*/] }
end

#baz_only = get_baz_only(servers)

def binding_for_my_template
  baz_only = get_baz_only(servers)
  binding
end

def get_template()
  %{
        include("./base.conf")

        baz-servers:
        [
        <% baz_only.each do |server| %>
            "<%= @server %>",
          <% end %>

        ]
  }
end


renderer = ERB.new(get_template)
puts output = renderer.result(binding)
