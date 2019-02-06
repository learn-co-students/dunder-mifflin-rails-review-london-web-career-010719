class EmployeesController < ApplicationController
    before_action :find_employee, only: [ :show, :edit, :update, :destroy]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to employees_path(@employee)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end
    
    def update 
    end
    
    def destroy
    end

private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end
end


