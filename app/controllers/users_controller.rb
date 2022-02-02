class UsersController < ApplicationController
    
    def new
        @user=User.new
    end

    def create
        @user=User.new(user_params)
        if @user.save
            @profile = Profile.new()
            @profile[:user_id]=User.find_by(email:@user[:email])[:id]
            if @profile.save
                @education=Education.new()
                @experience=Experience.new()
                @project=Project.new()
                @education[:profile_id]=@profile[:id]
                @experience[:profile_id]=@profile[:id]
                if @experience.save && @education.save
                    @project[:experience_id]=@experience[:id]
                    @project.save
                    flash[:success]="User Created Successfuly"
                    redirect_to login_path
                else
                    flash[:notice]="Something Went Wrong"
                end
            end
        end
    end

    private
        def user_params
            params.require(:user).permit(:name,:email,:password)
        end
end

