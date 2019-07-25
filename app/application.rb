# 2. If a user requests `/items/<Item Name>` it should return the price of that item
# 3. IF a user requests an item that you don't have, then return a `400` and an error message

class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      search_item = req.path.split("/items/").last
      binding.pry
      if @@items.include?(search_item)
        item = @@items.select {|item| item.name == search_item}
        print item
        resp.write item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
