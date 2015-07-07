require 'grape'

class Names < Grape::API
  namespace :names do
    get do
      %w(Michael Thomas John Susan)
    end
  end

  route :any, '*path' do
    "I'm not here.."
  end
end

class Api < Grape::API
  mount Names

  get do
    'Please go to /names to see the names'
  end
end
