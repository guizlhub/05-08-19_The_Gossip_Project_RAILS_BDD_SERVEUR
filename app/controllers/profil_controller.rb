class ProfilController < ApplicationController
  def perso
  	@gossips = Gossip.all
  end
end
