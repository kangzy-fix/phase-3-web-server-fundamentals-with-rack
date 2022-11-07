require "rack"
require "pry"

class App
  def call(env)
    path = env["PATH_INFO"]

    if path == "/"
      [200, { "Content-Type" => "text/html" }, ["<h2>Hello World </h2>  "]]
    elsif path == "/potato"
      [200, { "Content-Type" => "text/html" }, ["<h2>potato </h2> "]]
    else
      [404, { "Content-Type" => "text/html" }, ["<h2>404 </h2> "]]

      [200, { "Content-Type" => "text/html" }, ["<h2>Hello World</h2>"]]
    end
  end
end

run App.new
