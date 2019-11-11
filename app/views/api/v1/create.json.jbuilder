json.data do 
    json.user do
    json.call(
        @user,
        :email,
        :password
    )
    end

end