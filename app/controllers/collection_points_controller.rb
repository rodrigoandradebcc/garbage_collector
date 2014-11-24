class CollectionPointsController < InheritedResources::Base

	def index
		@collection_points = current_user.collection_points.all
	end

	def create
		@collection_point = CollectionPoint.new(collection_point_params)
		@collection_point.user = current_user
		respond_to do |format|
			if @collection_point.save
				format.html {redirect_to root_path, notice: 'collection_point was successfully created.' }
			else
				respond_with(@collection_point)
			end
		end
	end

	private

	def collection_point_params
		params.require(:collection_point).permit(:user_id, :address, :name, :google_address, :complement)
	end
end

