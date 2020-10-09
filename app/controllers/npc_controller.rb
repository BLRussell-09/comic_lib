class NpcController < ApplicationController

  def random
    @random_npc = request_api()
  end

  private
  def request_api()
    response = Excon.get('https://dungeonmastersapi20190214061000.azurewebsites.net/api/npc/random')

    return nil if response.status != 200

    JSON.parse(response.body)
  end

end
