class LendingsController < ApplicationController
  before_filter :authenticate_user!

  # GET /lendings
  # GET /lendings.json
  def index
    @lendings = unless params[:user_id]
                  authorize! :index, @user, :message => 'Not authorized as an administrator.'
                  Lending.all
                else
                  unless params[:user_id].to_s == current_user.id.to_s
                    authorize! :index, @user, :message => 'Not authorized as an administrator.'
                    User.find(params[:user_id]).lendings
                  else
                    User.find(current_user.id).lendings
                  end
                end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lendings }
    end
  end

  # GET /lendings/1
  # GET /lendings/1.json
  def show
    @lending = Lending.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lending }
    end
  end

  # GET /lendings/new
  # GET /lendings/new.json
  def new
    @lending = Lending.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lending }
    end
  end

  # GET /lendings/1/edit
  def edit
    authorize! :edit, @user, :message => 'Not authorized as an administrator.'
    @lending = Lending.find(params[:id])
  end

  # POST /lendings
  # POST /lendings.json
  def create
    @lending = Lending.new(params[:lending])

    respond_to do |format|
      if @lending.save
        format.html { redirect_to @lending, notice: 'Lending was successfully created.' }
        format.json { render json: @lending, status: :created, location: @lending }
      else
        format.html { render action: "new" }
        format.json { render json: @lending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lendings/1
  # PUT /lendings/1.json
  def update
    authorize! :edit, @user, :message => 'Not authorized as an administrator.'
    @lending = Lending.find(params[:id])

    respond_to do |format|
      if @lending.update_attributes(params[:lending])
        format.html { redirect_to @lending, notice: 'Lending was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lendings/1
  # DELETE /lendings/1.json
  def destroy
    @lending = Lending.find(params[:id])
    @lending.destroy

    respond_to do |format|
      format.html { redirect_to lendings_url }
      format.json { head :no_content }
    end
  end
end
