require 'sinatra'
require 'json'

get '/:id' do
  n = params[:id].to_i
  body = case n
         when 5
           {
            id: 5,
            description: "hoge"
           }
         when 6
           {
            id: 6,
            description: "mogu"
           }
         else
           {
            id: n,
            description: n.to_s
           }
         end
  body = n * 2
  sleep(n)
  json = {
          result: body
         }.to_json
  headers \
    "Content-type" => "application/json"
  body json
end
