class AdminsController < ApplicationController

        def new
            @admin = Admin.new
        end

        def create
            @admin = Admin.new(admin_params)

            @admin.email.downcase!
            if @admin.save
                flash[:notice] = "Account created successfully!"
                redirect_to new_admin
            else
                flash.now.alert = "Couldn't create account. Please make sure you are using a valid email and password and try again."
                render 'new'
            end
        end
        private

            def admin_params
                params.require(:admin).permit(:name, :email, :password, :password_confirmation)
            end

end
