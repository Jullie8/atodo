# class UsertodosController < ApplicationController
#     def create
#         @usertodo = Usertodo.create(usertodo_params)
#         @usertodo.user_id = session[:user_id]
#         byebug
#         redirect_to user_path current_user
#     end

#     private

#     def usertodo_params
#         params.require(:usertodo).permit(:todo_id")
#     end
# end
