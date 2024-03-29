class UsersController < ApplicationController
    # ユーザー一覧取得
    def index
        @users = User.all
        render json: @users
    end

    # ユーザーの詳細取得
    def show
        @user = User.find(params[:id])
        render json: @user
    end

    # ユーザー新規登録画面取得
    def new
        @user = User.new
    end

    # ユーザー新規登録
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user
        elsif @user.valid? == false
            # render status: 400, json: { status: 400, message: @user.errors.full_messages }
            render json: { errors: @user.errors.as_json }, status: :unprocessable_entity
        end
    end

    # ユーザー編集画面取得
    def edit
        @user = User.find(params[:id])
    end

    # ユーザー更新
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user
        else
            render :new, status: :unprocessable_entity
        end
    end

    # ユーザーの削除
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :explanation)
        end
end
