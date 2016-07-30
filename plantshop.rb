require 'sinatra'

hashofplants = {"rose" => "the gift of lovers around the world", "daisy" => "white and yellow", "nettle" => "the spikiest of spiky", "weed" => "to fill in the gaps", "dandelion" => "smells great", "tom-plant" => "words cannot describe"}

get '/plant/:id' do
  nameputin = params['id']
  if hashofplants.has_key? nameputin
  theplantwewant = hashofplants[nameputin]
    return "<h1> #{nameputin} </h1>" + "<p> #{theplantwewant} </p>"
  end

  return "<h1> Thank you for visiting Plants R Us. Please come again. </h1>"
end
