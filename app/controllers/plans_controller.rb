class PlansController < ApplicationController
  def index
    @cheer_all = Cheer.all
    @cheer = @cheer_all.sample.cheer if @cheer_all.count > 0
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params['id'])
  end

  def new
    @plan = Plan.new
    @plans = Plan.all
  end

  def create
    @plan = Plan.new(plan_params)
    @cheer_all = Cheer.all
    @cheer = @cheer_all.sample.cheer if @cheer_all.count > 0
    if @plan.save
      flash[:notice] = @cheer
      redirect_to plans_path
    else
      redirect_to new_plan_path
    end
  end

  def edit
    @plan = Plan.find(params['id'])
  end

  def update
    @plan = Plan.find(params['id'])
    if @plan.update(plan_params)
      redirect_to plans_path
    else
      redirect_to new_plan_path
    end
  end

  def destroy
    Plan.destroy(params['id'])
    redirect_to plans_path
  end

  private

  def plan_params
    params.require(:plan).permit(:title)
  end
end
