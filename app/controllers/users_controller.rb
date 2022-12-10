class UsersController < ApplicationController
    # ユーザー一覧取得
    def index
        @users = User.all
    end

    # ユーザーの詳細取得
    def show
        @user = User.find(params[:id])
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
        else
            render :new, status: :unprocessable_entity
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

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :explanation)
        end
end
