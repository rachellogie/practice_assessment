class AdService
  def make_api_call
    IO.read('data/ads.json')
  end

  def ads_for(magazine)
    JSON.parse(make_api_call)
  end
end