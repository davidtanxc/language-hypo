class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def thankyou
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def chinese
    @user = User.new
    @instructors = Instructor.all
    @title = "Learn Chinese in Singapore | Learnemy"
    @metades = "Learn Mandarin in Singapore with classes by Learnemy. Just tell us what you want to learn and we'll tell you where to learn Chinese in Singapore."
  end

  def english
    @user = User.new
    @instructors = Instructor.all
    @title = "English Course in Singapore | Learnemy"
    @metades = "Find the best English course in Singapore on Learnemy. Just tell us what you want to learn and we'll match you with the best English instructor"
  end

  def french
    @user = User.new
    @instructors = Instructor.all
    @title = "Learn French in Singapore | Learnemy"
    @metades = "Want to start learning French in Singapore? Just tell us what you want to learn and we'll tell you where to learn french in Singapore"
  end

  def korean
    @user = User.new
    @instructors = Instructor.all
    @title = "Learn Korean in Singapore | Learnemy"
    @metades = "Learn Korean in Singapore with classes by Learnemy. Just tell us what you want to learn and we'll tell you where to learn Korean in Singapore"
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to thankyou_url }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

     Notifier.new_user(@user).deliver
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:full_name, :email, :phone_number, :topic)
    end
end
