require "./config/boot"

get "/" do
  mustache "index"
end

get "/q" do
  @url = params[:target][:url]
  mustache "search"
end
