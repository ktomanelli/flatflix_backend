class UsersController < ApplicationController
    before_action :authorized, only: [:stay_logged_in]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(params.permit(:first_name,:last_name,:username,:password))
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
            render json: {message: "Failed to create new user"}, status: 403
        end
    end
    def login
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: @token }
        else
            render json: {message:'Incorrect username or password'}
        end
    end
    def stay_logged_in
        token = encode_token({user_id: @user.id})
        render json:{
            user: UserSerializer.new(@user),
            token: token
        }
    end
end
