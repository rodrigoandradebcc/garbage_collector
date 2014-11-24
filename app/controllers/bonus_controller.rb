class BonusController < ApplicationController

  def index
    @bonus = Bonu.all
  end
 
end
