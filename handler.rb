require 'json'

def hello(event=nil, context=nil)
  p ("Event = "+ event.to_s)
  p ("COntext = "+ context.to_s)
  return { statusCode: 200, body: 'Go Serverless v1.0! Your function executed successfully!' }.to_json
end
