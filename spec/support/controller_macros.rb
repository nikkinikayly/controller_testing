module ControllerMacros
    def login_user
        before(:each) do
            @request.env["devise.mapping"] = Devise.mappings[:user]
            @user = User.create(email: 'test@test.com', password: 'password', first_name: 'Bob', last_name: 'Bobson', age: 22)
            sign_in @user
        end
    end
end