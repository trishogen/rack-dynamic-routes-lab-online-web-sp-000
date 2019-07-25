# 1. Your application should only accept the `/items/<ITEM NAME>` route. Everything else should `404`
# 2. If a user requests `/items/<Item Name>` it should return the price of that item
# 3. IF a user requests an item that you don't have, then return a `400` and an error message

class Application

  @@items = []

  def call(env)
    if req.path.match(/items/)
      resp.write "good"
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end

end
