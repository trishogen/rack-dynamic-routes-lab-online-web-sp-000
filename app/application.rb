# 1. Your application should only accept the `/items/<ITEM NAME>` route. Everything else should `404`
# 2. If a user requests `/items/<Item Name>` it should return the price of that item
# 3. IF a user requests an item that you don't have, then return a `400` and an error message

class Application

  @@items = []

  def call(env)
  end

end
