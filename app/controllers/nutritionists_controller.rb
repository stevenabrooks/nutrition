class NutritionistsController < ApplicationController
  # GET /nutritionists
  # GET /nutritionists.json
  def index
    @nutritionists = Nutritionist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nutritionists }
    end
  end

  # GET /nutritionists/1
  # GET /nutritionists/1.json
  def show
    @nutritionist = Nutritionist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nutritionist }
    end
  end

  # GET /nutritionists/new
  # GET /nutritionists/new.json
  def new
    @nutritionist = Nutritionist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nutritionist }
    end
  end

  # GET /nutritionists/1/edit
  def edit
    @nutritionist = Nutritionist.find(params[:id])
  end

  # POST /nutritionists
  # POST /nutritionists.json
  def create
    @nutritionist = Nutritionist.new(params[:nutritionist])

    respond_to do |format|
      if @nutritionist.save
        format.html { redirect_to @nutritionist, notice: 'Nutritionist was successfully created.' }
        format.json { render json: @nutritionist, status: :created, location: @nutritionist }
      else
        format.html { render action: "new" }
        format.json { render json: @nutritionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nutritionists/1
  # PUT /nutritionists/1.json
  def update
    @nutritionist = Nutritionist.find(params[:id])

    respond_to do |format|
      if @nutritionist.update_attributes(params[:nutritionist])
        format.html { redirect_to @nutritionist, notice: 'Nutritionist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nutritionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutritionists/1
  # DELETE /nutritionists/1.json
  def destroy
    @nutritionist = Nutritionist.find(params[:id])
    @nutritionist.destroy

    respond_to do |format|
      format.html { redirect_to nutritionists_url }
      format.json { head :no_content }
    end
  end
end
