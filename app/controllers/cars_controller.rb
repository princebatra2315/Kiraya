class CarsController < ApplicationController

def new
  @car=Car.new
end

  def create
    @car = current_user.cars.build(car_params)
    @car.state="Not Available"
    @car.price=0
    if @car.save
      flash[:success] = "Car Added!!"
      redirect_to root_url
    else
      render 'pages/index'
    end
  end

   def show
    @user = current_user
    @cars = @user.cars
  end

  def index 
    @cars = Car.all
  end	

  def edit
  @car=Car.find(params[:id])
  end
  
  def update
    @car=Cars.find(params[:id])
    if @car.update_attributes(car_params)
    flash[:success]="profile updated"
     redirect_to root_path
    else
    render 'edit'
    end
  end

  def destroy
  end

  private

    def car_params
      params.require(:car).permit(:car_model, :car_type, :oil, :state, :date_from, :date_to, :time_from, :time_to, :renter, :price, :mobile, :number)
    end 

end
