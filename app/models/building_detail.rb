class BuildingDetail < ApplicationRecord
    belongs_to :building, optional: true
    

    def building_detail_params
        params.require(:expense).permit(:address_building, :name_administrator_building, :email_administrator_building, :phone_administrator_building, :name_technical_building, :email_technical_building, :phone_technical_building, :building_id)
      end
end
