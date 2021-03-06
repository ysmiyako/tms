class UsersController < ApplicationController
  http_basic_authenticate_with :name => "tms", :password => "fRd27e"

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # GET /users
  # GET /users.json
  def index
    @users = User.order('id ASC').page(params[:page]).per(20)
    
     if params[:name].present?
       @users = @users.get_by_name params[:name]
     end
     
     if params[:allow].present?
       @users = @users.where(:allow => true)
     end
     
     if params[:createday].present?
     time = Time.parse(params[:createday]).all_day
     @users = @users.where(:created_at => time)
     end
     
     if params[:movieexist].present?
       @users = @users.where(:movie => nil)
     end
  end
  


  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
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
        format.html { redirect_to users_new_complete_path, notice: '登録完了' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to :back, notice: '更新完了' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: '削除完了' }
      format.json { head :no_content }
    end
  end
  
 
  def complete
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :time, :movie, :remove_movie, :allow, :bestlap)
    end
end
