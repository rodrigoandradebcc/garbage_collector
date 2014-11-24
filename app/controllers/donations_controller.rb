class DonationsController < InheritedResources::Base

  private

    def donation_params
      params.require(:donation).permit(:user_id, :collection_point_id, :bonu_id, :pending, :points)
    end
end

