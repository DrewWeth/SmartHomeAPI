class ApiController < ApplicationController
  protect_from_forgery :except => :create

  def get
    address = params["address"].to_i
    category = params["category"]

    if address != 0
      if category
        data = Datum.where(:address_id => address).where("lower(category) = ? ", category.downcase).first
      else
        data = Datum.where(:address_id => address)
      end
    else
      data = "Missing parameters"
    end

    render :json => data
  end

  def post
    address = params["address"].to_i
    category = params["category"]
    value = params["value"]

    if value and category and address != 0
      data = Datum.where(:address_id => address).where("lower(category) = ? ", category.downcase).first
      if data
        data.data = value
        data.save
      else
        data = Datum.create(:address_id => address, :category => category, :data => value)
      end
    else
      data = "Missing paramater"
    end

    render :json => data
  end
end
