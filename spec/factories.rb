FactoryBot.define do

  factory :post do
    factory :post_1 do
      content 'Sandroller horn shark walu. Candlefish mosquitofish morwong spiny eel kahawai Dolly Varden trout emperor angelfish eagle ray priapumfish paradise fish driftfish'
    end
  end

  factory :user do
    email 'salmon@ocean.com'
    firstname 'Codin'
    lastname 'Octosmith'
    password 'flipflipflip'
    password_confirmation 'flipflipflip'
  end
end
