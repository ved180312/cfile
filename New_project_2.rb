module Add_emp_detail
    $Employee=Hash.new
    def add
        puts "Enter Employee id"
        id=Integer(gets.chomp)

        puts "Enter the Employee name"
        name = gets.chomp

        puts "Enter the employee age "
        age=gets.chomp.to_i

        puts "Enter employee department "
        department = gets.chomp
         
        puts "Enter employee gender "
        gender = gets.chomp

        $Employee[id] = [name,age,department,gender]
       
        time1 = Time.new
        puts "Time : " + time1.inspect

        p " Employee added successfully"
        
        Employee_controller.Employee_
    end
end

module Update_Employee_Detail

    def Update_
        begin
            a=$Employee.empty?
            if !a
                puts "You can update these Employees"
                print $Employee
    
                puts " "
    
                puts "enter employee id "
                keeey = Integer(gets.chomp)
    
                var_a=($Employee.keys).include? keeey
                if var_a
    
                    puts "enter employee name"
                    name=gets.chomp
    
    
                    puts "enter employee age"
                    age=Integer(gets.chomp)
    
                    puts "enter employee department" 
                    department=gets.chomp
    
                    puts "Enter employee gander "
                    gender = gets.chomp
    
                    $Employee[keeey] = [name,age,department,gender]
    
                    p " Employee updated successfully"
    
                    
                else
                    puts "we can't update this employee detail because this employee is not present on"  
                    
                end
            else
                puts 6+d
            end
        rescue StandardError => e
            puts " No details here. first you have to fill the detais"  
            Employee_controller.Employee_
            
        end        
        Employee_controller.Employee_
    end
end

module Delete_Employee_Detail
    def Delete_detail
        begin 
            a=$Employee.empty?
            if !a
                puts "you can delete these detail"
                print $Employee

                puts "enter id for delete"
                keeey= Integer(gets.chomp)
                var_a=($Employee.keys).include? keeey

                if var_a
                    puts "Delete Employee :#{keeey} => #{$Employee.delete(keeey)}   \n\n"

                    time1=Time.new
                    puts " Time : " + time1.inspect

                    p " Employee deleted successfully"
                    Employee_controller.Employee_
                else
                    puts "Delete Employee :#{$Employee.delete(keeey) { |el| "#{keeey} not found" } }"    
                    puts "you can delete only this employee"
                    print "#{$Employee.keys}"
                    Employee_controller.Employee_                  
                end
            else
                puts 6+d
            end
        rescue StandardError => e
            puts " No details here. first you have to fill the detais"  
            Employee_controller.Employee_
            
        end       

    end
end

module View_Employee_Detail
    def View
        begin 
            a=$Employee.empty?
            if !a
                print $Employee
                p " Employee View successfully"
                Employee_controller.Employee_
            else
                6+e
            end
        rescue StandardError => e
            puts " No details here. first you have to fill the detais"   
            Employee_controller.Employee_
        end             
    end
end

module Employee_controller
    def Employee_
        begin
        puts "                   Welcome to here                   "
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Enter 1 for add Employee"
        puts "Enter 2 for update Employee"
        puts "Enter 3 for delete Employee"
        puts "Enter 4 for view Employee"
        puts "Enter 5 for EXIT"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

        num=Integer(gets.chomp)
        if num==1
            include Add_emp_detail
            add()

        elsif num==2
            include Update_Employee_Detail
            Update_()

        elsif num==3
            include Delete_Employee_Detail
            Delete_detail()

        elsif num==4
            View_Employee_Detail
            View()

        elsif num==5
            puts "Thank you" 

        else
            puts "Invalid input"   
            Employee_()
                    
        end
            
        rescue ArgumentError => e
            puts " #{e} this is argument error you cant enter alphabet you can enter only digits"
            Employee_()
            
        else
            
        end

    end
end






