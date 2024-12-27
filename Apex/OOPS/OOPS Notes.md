# OOPS

    Stands for Object Oriented Programming System.
    The entire OOPS revolve around two things that are as follows:
        1. Classes
        2. Objects

## Classes

    The blueprint of what something will look and behave like is generally know as a class in OOPS.
    Class defines the variables which represents attributes and methods which represent behavior of an object and we can say that an initialization of the class is the definition of an object.

    Syntax:

            Class class_name{
                //variables first
                var;
                var2;

                //Methods second
                void Method1();
                void Method2();
            }

## Objects

    The initiation of the class or the blueprint is called an object.
    Object has following parts that defines it:
        1. Properties/Attributes
            Name, Age, RollNumber etc
        2. Behaviors/Methods
            AttendClass(),Walk(),Play(),Study() etc

## Four Pillars Of OOPS

    There are four pillars of OOPS that are as follows:
        1. Encapsulation
            Bundling your code together and tightly.

            Example:
                    class Student{
                        String name;
                        Integer age;
                        Integer rollNumber;
                        String className;
                        String department;
                        Date intake;

                        void markAttendance(){
                            system.debug('Marking Attendance');
                        }

                        void play(){
                            system.debug('Playing');
                        };

                    }
                // This bundling of code is called encapsulation.

        2. Abstraction
            Hiding the code i.e. implementation is separate from application so that sensitive information remain hidden and only allowed things is accessed by other piece of code.

            We use access specifiers for Abstraction.
            There are 4 types of access specifiers that are as follows:
                1. Public
                2. Private
                3. Protected
                4. Default

            Apex only uses 4 which are as follows:
                1. Private
                2. Public
                3. Global
                4. Protected

            Example:
                    public class Student{
                        private String name;
                        private Integer age;
                        private Integer rollNumber;
                        private String className;
                        private String department;
                        private Date intake;

                        public markAttendance(){
                            system.debug('Marking Attendance');
                        }

                        public play(){
                            system.debug('Playing');
                        };

                    }

        3. Polymorphism
            Giving multiple definitions, or to exist in multiple forms.
            We have two main concepts in Polymorphism that are as follows:
                1. Override
                2. Overload

            |       Characteristics     |        Method Overloading        |               Method Overriding              |
            | ------------------------- | -------------------------------- | -------------------------------------------- |
            | Type of Polymorphism      | Compile-time polymorphism        | Run-time polymorphism                        |
            | Purpose                   | Increases readability of program | Provides specific implementation of method   |
            | Occurrence                | Within a class                   | In two classes with inheritance relationship |
            | Inheritance               | Not required                     | Required                                     |
            | Method Name and Signature | Same name, different signature   | Same name, same signature                    |
            | Return Type               | Can be same or different         | Must be same or co-variant                   |
            | Binding                   | Static binding                   | Dynamic binding                              |
            | Private and Final Methods | Can be overloaded                | Cannot be overridden                         |
            | Argument List             | Must be different                | Must be same                                 |
           
            Example:
                void send(String text){
                    system.debug('Sending text message');
                }

                void send(Blob singleImage){
                    system.debug('Sending vide/image message');
                }

                void send(list<Blob> multipleImages){
                    system.debug('Sending multiple videos/images');
                }

        4. Inheritance
            Designing your code layout with regards to hierarchy.
            As we inherit some of the qualities from both of our parents and we also have our own we can do same thing in programming.

            Example:

                public interface Shape{
                    Double getArea();
                    Double getPerimeter();
                }

                public class Rectangle implements Shape{
                    private Double width;
                    private Double height;

                    public Double getArea(){
                        return width*height;
                    }

                    public Double getPerimeter(){
                        return 2*(width+height);
                    }
                }

            // Interface is a method where you define common methods and make them mandatory to get implemented in all classes that have inherited from the parent class.
