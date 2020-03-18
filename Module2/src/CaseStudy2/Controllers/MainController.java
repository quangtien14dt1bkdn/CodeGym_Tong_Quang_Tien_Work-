package CaseStudy2.Controllers;

import CaseStudy2.Commons.FuncValidate;
import CaseStudy2.Commons.FuncWriteAndReadFileCSV;
import CaseStudy2.Commons.UserException;
import CaseStudy2.Models.*;
import CaseStudy2.Commons.*;
import CaseStudy2.data.Resume;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;


import java.util.*;


public class MainController<customer> {
    private static Scanner scanner = new Scanner(System.in);
    private static Queue<Customer> customerQueueBookingTicket = new LinkedList<Customer>();
///////////////////////////////////////////////////////////////////////////


    public static void displayMainMenu() {
        System.out.println(
                "\n1.Add New Services." +
                "\n2.Show Services." +
                "\n3.Add New Customer" +
                "\n4.Show Information of Customer"+
                "\n5.Add New Booking"+
                "\n6.Action to Information of Employee"+
                "\n7.Booking movie ticket:"+
                "\n8.Find employee for resume");
        switch (Integer.parseInt(scanner.nextLine())) {
            case 1:
                addNewServices();
                break;
            case 2:
                showServices();
                break;
            case 3:
                addNewCustomer();
                break;
            case 4:
                showInformationCustomer();
                break;
            case 5:
                addNewBooking();
                break;
            case 6:
                actionEmployee();
                break;
            case 7:
                bookingMovieTicket4D();
                break;
            case 8:
                findEmployeeFromResume();
                break;

            default:
                System.out.println("\nError.Back To Menu.");
                backMainMenu();
        }
    }


///////////////////////////////////////////////////////////////////////
    private static void backMainMenu() {
        System.out.println("\nEnter to continue...");
        scanner.nextLine();
        System.out.println("\n----------------------");
        displayMainMenu();
    }



///////////////////////////////////////////////////////////////////////
    private static void addNewServices() {
        System.out.println("\n----------------------");
        System.out.println(
                "\n1.Add New Villa." +
                "\n2.Add New House." +
                "\n3.Add New Room." +
                "\n4.Back To Menu."+
                "\n5.Exit."+
                "\nPlease select one function below: ");
        switch (scanner.nextInt()) {
            case 1:
                addNewVilla();
                break;
            case 2:
                addNewHouse();
                break;
            case 3:
                addNewRoom();
                break;
            case 4:
                displayMainMenu();
                System.out.println();
                System.out.println("\n----------------------");
                break;
            case 5:
                System.exit(0);
            default:
                System.out.println("\nError.Back To Menu.");
                backMainMenu();
        }
    }



/////////////////////////////////////////////////////////////////////////
    private static void addNewCustomer(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("\n-------------------------------");
        System.out.println("\nInsert customer information:" +
                "\n1.Enter new customer."+
                "\n2.Back to main menu."+
                "\n3.Exit."+
                "Please choose one function .");
        switch (scanner.nextInt()) {
            case 1:
                addCustomer();
                break;
            case 2:
                backMainMenu();
                break;
            case 3:
                System.exit(0);
                break;
            default:
                System.out.println("Invalid.Please choose another action!!");
                backMainMenu();
        }
    }



////////////////////////////////////////////////////////////////////////////
    private static void showServices(){
        System.out.println("\n-------------------"+
                "\n1.Show all villa."+
                "\n2.Show all House."+
                "\n3.Show all Room."+
                "\n4.Show all name villa not duplicate."+
                "\n5.Show all name house not duplicate."+
                "\n6.Show all name Room  not duplicate."+
                "\n7.Back to menu."+
                "\n8.Exit.");
        switch (Integer.parseInt(scanner.nextLine())) {
            case 1:
                showAllVilla();
                break;
            case 2:
                showAllHouse();
                break;
            case 3:
                showAllRoom();
                break;
            case 4:
                showAllVillaNotDuplicate();
                break;
            case 5:
                showAllHouseNotDuplicate();
                break;
            case 6:
                showAllRoomNotDuplicate();
                break;
            case 7:
                displayMainMenu();
                break;
            case 8:
                System.exit(0);
            default:
                System.out.print("Invalid.");
                backMainMenu();
        }
    }





////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    private static void showAllVilla() {
        ArrayList<Villa> listVilla = FuncWriteAndReadFileCSV.getVillaFromCSV();
        int i = 1;
        for (Villa villa : listVilla) {
            System.out.println("\n------------------------");
            System.out.println("no:"+i);
            System.out.println(villa.showInformation());
            System.out.println("\n------------------------");
            i++;
        }
        backMainMenu();
    }
    private static void showAllHouse() {
        ArrayList<House> listHouse = FuncWriteAndReadFileCSV.getHouseFromCSV();
        int i = 1;
        for (House house : listHouse) {
            System.out.println("\n------------------------");
            System.out.println("no:"+i);
            System.out.println(house.showInformation());
            System.out.println("\n------------------------");
        }
        backMainMenu();
    }
    private static void showAllRoom() {
        ArrayList<Room> listRoom = FuncWriteAndReadFileCSV.getRoomFromCSV();
        int i = 1;
        for (Room room : listRoom) {
            System.out.println("\n------------------------");
            System.out.println("no:"+i);
            System.out.println(room.showInformation());
            System.out.println("\n------------------------");
        }
        backMainMenu();
    }


    private static void showAllVillaNotDuplicate(){
        ArrayList<Villa> listVilla = FuncWriteAndReadFileCSV.getVillaFromCSV();
        ArrayList<String> nameList = new ArrayList<>();
        for (Villa villa : listVilla) {
            nameList.add(villa.getNameService());
        }
        nameList.stream().distinct().forEach(System.out::println);
        backMainMenu();
    }

    private static void showAllHouseNotDuplicate(){
        ArrayList<House> listHouse = FuncWriteAndReadFileCSV.getHouseFromCSV();
        ArrayList<String> nameList = new ArrayList<>();
        for (House house : listHouse) {
            nameList.add(house.getNameService());
        }
        nameList.stream().distinct().forEach(System.out::println);
        backMainMenu();
    }
    private static void showAllRoomNotDuplicate(){
        ArrayList<Room> listRoom = FuncWriteAndReadFileCSV.getRoomFromCSV();
        ArrayList<String> nameList = new ArrayList<>();
        for (Room room : listRoom) {
            nameList.add(room.getNameService());
        }
        nameList.stream().distinct().forEach(System.out::println);
        backMainMenu();
    }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static void addEmployee(){
        Scanner scanner = new Scanner(System.in);
        Employee employee = new Employee();
        System.out.println("Enter name employee:");
        employee.setName(scanner.nextLine());
        System.out.println("Enter age employee:");
        employee.setAge(Integer.parseInt(scanner.nextLine()));
        System.out.println("Enter address employee:");
        employee.setAddress(scanner.nextLine());
        ArrayList<Employee> employeeList = FuncWriteAndReadFileCSV.getEmployeeFromCSV();
        employeeList.add(employee);
        FuncWriteAndReadFileCSV.writeEmployeeToFileCSV(employeeList);
        System.out.print("\nAdd Employee: "
                + employee.getName()+
                "  Successfully!!!"
        );
        actionEmployee();

    }

    private static void actionEmployee(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("\n--------------------------");
        System.out.println("Choose action with employee:" +
                "\n1.add new employee." +
                "\n2.show information employee."+
                "\n3.back to menu.");
        switch (Integer.parseInt(scanner.nextLine())) {
            case 1:
                addEmployee();
                break;
            case 2:
                showInformationEmployee();
                break;
            case 3:
                backMainMenu();
                break;
            default:
                System.out.println("Enter again to choose action.");
                backMainMenu();
        }
    }

    private static void showInformationEmployee() {
        Scanner scanner = new Scanner(System.in);
        ArrayList<Employee> employeeList = FuncWriteAndReadFileCSV.getEmployeeFromCSV();

//        for (Employee employee : employeeList) {
//            System.out.println("\n------------------------");
//            System.out.println(employee.toString());
//            System.out.println("\n------------------------");
//        }
        Map<Integer, Employee> map = new HashMap<Integer, Employee>();
        int i = 0;
        for (Employee employee : employeeList) {
            map.put(i, employee);
            i++;
        }
        for (Integer key : map.keySet()) {
            Employee value = map.get(key);
            System.out.println(key + " = " + value);
        }
        backMainMenu();
    }
    private static void addNewBooking(){
        
    }

    private static void addCustomer() {
        Scanner scanner = new Scanner(System.in);
        String content = "";
        String errMes = "";
        Customer customer = new Customer();
        System.out.println("Enter name customer:");

        customer.setName(scanner.nextLine());
        while (!UserException.nameException(customer.getName())) {
            System.out.println("invalid .Enter again.");
            customer.setName(scanner.nextLine());
        }
        System.out.println("Enter Date:YYYY-MM-DD");
        customer.setDate(scanner.nextLine());
        while (!UserException.birthdayException(customer.getDate())) {
            System.out.println("invalid .Enter again.");
            customer.setDate(scanner.nextLine());
        }

        System.out.println("Enter Gender:male female or unknow");
        customer.setGender(scanner.nextLine());
        while (!UserException.genderException(customer.isGender())) {

            System.out.println("invalid .Enter again.");
            customer.setGender(scanner.nextLine());
        }

        System.out.println("Enter passPort:");
        customer.setPassPort(scanner.nextLine());
        while (!UserException.idCardException(customer.getPassPort())) {
            System.out.println("invalid .Enter again.");
            customer.setPassPort(scanner.nextLine());
        }
        System.out.println("Enter phoneNumber:");
        customer.setPhoneNumber(scanner.nextLine());
        System.out.println("Enter email:");
        customer.setEmail(scanner.nextLine());
        while (!UserException.emailException(customer.getEmail())) {
            System.out.println("invalid .Enter again.");
            customer.setEmail(scanner.nextLine());
        }
        System.out.println("Enter typeCustomer:");
        customer.setTypeCustomer(scanner.nextLine());

        System.out.println("Enter address:");
        customer.setAddress(scanner.nextLine());

        System.out.println("Enter typeService:1= villa ,2= House ,3= Room");
        customer.setTypeService(scanner.nextLine());
//        switch (Integer.parseInt(scanner.nextLine())) {
//            case 1:
//                ArrayList<Villa> villaList = FuncWriteAndReadFileCSV.getVillaFromCSV();
//                showAllVilla();
//                System.out.println("Choose what service you want.");
//                int index1 = Integer.parseInt(scanner.nextLine());
//                if (index1 >= 0 && index1 <= villaList.size()) {
//                    customer.setTypeService(villaList.get(index1-1));
//                }
//                break;
//            case 2:
//                ArrayList<House> houseList = FuncWriteAndReadFileCSV.getHouseFromCSV();
//                showAllHouse();
//                System.out.println("Choose what service you want.");
//                int index2 = Integer.parseInt(scanner.nextLine());
//                if (index2 >= 0 && index2 <= houseList.size()) {
//                    customer.setTypeService(houseList.get(index2-1));
//                }
//                break;
//            case 3:
//                ArrayList<Room> roomList = FuncWriteAndReadFileCSV.getRoomFromCSV();
//                showAllRoom();System.out.println("Choose what service you want.");
//                int index3 = Integer.parseInt(scanner.nextLine());
//                if (index3 >= 0 && index3 <= roomList.size()) {
//                    customer.setTypeService(roomList.get(index3-1));
//                }
//                break;

//        }

        ArrayList<Customer> customersList = FuncWriteAndReadFileCSV.getCustomerFromCSV();
        customersList.add(customer);
        FuncWriteAndReadFileCSV.writeCustomerToFileCSV(customersList);
        System.out.print("\nAdd Customer: "
                + customer.getName()+
                "  Successfully!!!"
        );
        backMainMenu();
    }

    private static void showInformationCustomer(){
        ArrayList<Customer> customers = FuncWriteAndReadFileCSV.getCustomerFromCSV();

        System.out.println("sorting...");
        int i = 1;
        Collections.sort(customers,new AgeComparator());
        Collections.sort(customers,new NameComparator());
        for (Customer st : customers) {
            System.out.println("no: "+i);
            System.out.println(st.getPassPort() + " " + st.getName() + " " + st.getDate());
            i++;
        }
        backMainMenu();
    }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static Services addNewServices(Services services) {
        String content = "";
        String errMes = "";
        services.setId(UUID.randomUUID().toString().replace("-",""));
        //Enter name service
        scanner.nextLine();
        System.out.println("Enter name services:");
        services.setNameService(scanner.nextLine());
        while (!FuncValidate.checkNameService(services.getNameService())) {
            System.out.println("Name service id invalid ! Please try again");
            System.out.println("Enter name service");
            services.setNameService(scanner.nextLine());
        }
        //Enter Area Used
        content = "Enter area used:";
        errMes = "Area is invalid (Area>30) please try again!";
        services.setArea(FuncValidate.checkValidNumberDouble(content, errMes));
        while (services.getArea()<=30) {
            System.out.println(errMes);
            services.setArea(FuncValidate.checkValidNumberDouble(content,errMes));
        }
        //Enter renCost
        content = "Enter rent cost:";
        errMes = "Rent cost is invalid (rent cost > 0) please try again!";
        services.setRentCost(FuncValidate.checkValidNumberDouble(content, errMes));
        while (services.getRentCost() < 0) {
            System.out.println(errMes);
            services.setRentCost(FuncValidate.checkValidNumberDouble(content, errMes));
        }
        //Enter maxNumberOfPeople
        content = "Enter max number of People:";
        errMes = "Number is invalid (0 < Area < 20) please try again!";
        services.setMaxNumberOfPeople(FuncValidate.checkValidNumberInteger(content, errMes));
        while ((services.getMaxNumberOfPeople()<0)||(services.getMaxNumberOfPeople()>20)) {
            System.out.println(errMes);
            services.setMaxNumberOfPeople(FuncValidate.checkValidNumberInteger(content,errMes));
        }
        //Enter typeRent
        System.out.println("Enter typeRent:");
        services.setTypeRent(scanner.nextLine());
        while (!FuncValidate.checkNameService(services.getTypeRent())) {
            System.out.println("Valid , Enter right name ");
            services.setTypeRent(scanner.nextLine());
        }
        return services;
    }
////////////////////////////////////////////////////////////////
    private static void addNewVilla(){
        String content = "";
        String errMes = "";
        Services villa = new Villa();
        villa= addNewServices(villa);
        System.out.println("Enter room standard: ");
        ((Villa) villa).setRoomStandard(scanner.nextLine());
        while (!FuncValidate.checkNameService(((Villa) villa).getRoomStandard())) {
            System.out.println("Valid , Enter right name");
            ((Villa) villa).setRoomStandard(scanner.nextLine());
        }

        System.out.println("Enter description: massage ,karaoke , food , drink,car");
        ((Villa) villa).setDescription(scanner.nextLine());
        while (!FuncValidate.checkService(((Villa) villa).getDescription())) {
            System.out.println("Invalid .Enter again");
            System.out.println("Enter description: massage ,karaoke , food , drink,car");
            ((Villa) villa).setDescription(scanner.nextLine());
        }

        content = "Enter area used:";
        errMes = "Area is invalid (Area>30) please try again!";
        ((Villa) villa).setPoolArea((FuncValidate.checkValidNumberDouble(content, errMes)));
        while (((Villa) villa).getPoolArea()<=30) {
            System.out.println(errMes);
            ((Villa) villa).setPoolArea(FuncValidate.checkValidNumberDouble(content,errMes));
        }

        content = "Enter floor:";
        errMes = "Area is invalid (Area>0) please try again!";
        ((Villa) villa).setFloor((FuncValidate.checkValidNumberInteger(content, errMes)));
        while (((Villa) villa).getFloor() < 0) {
            System.out.println(errMes);
            ((Villa) villa).setFloor(FuncValidate.checkValidNumberInteger(content, errMes));
        }

        ArrayList<Villa> villaList = FuncWriteAndReadFileCSV.getVillaFromCSV();
        villaList.add((Villa)villa);
        FuncWriteAndReadFileCSV.writeVillaToFileCSV(villaList);
        System.out.print("\nAdd Villa: "
                        + villa.getNameService()+
                        "  Successfully!!!"
        );
        backMainMenu();
    }
    private static void addNewHouse(){
        Services house = new House();
        house= addNewServices(house);
        System.out.println("Enter room standard:");
        ((House) house).setRoomStandard(scanner.nextLine());
        System.out.println("Enter description:");
        ((House) house).setDescription(scanner.nextLine());
        System.out.println("Enter poolArea:");
        ((House) house).setPoolArea(Double.parseDouble(scanner.nextLine()));
        System.out.println("Enter floor:");
        ((House) house).setFloor(Integer.parseInt(scanner.nextLine()));
        ArrayList<House> houseList = FuncWriteAndReadFileCSV.getHouseFromCSV();
        houseList.add((House)house);
        FuncWriteAndReadFileCSV.writeHouseToFileCSV(houseList);
        System.out.print("\nAdd House: "
                +house.getNameService()+
                "  Successfully!!!"
        );
        backMainMenu();
    }
    private static void addNewRoom(){
        Services room = new Room();
        room = addNewServices(room);
        System.out.println("Enter room standard:");
        ((Room) room).setBonus(scanner.nextLine());
        System.out.println("Enter description:");
        ArrayList<Room> roomList = FuncWriteAndReadFileCSV.getRoomFromCSV();
        roomList.add((Room)room);
        FuncWriteAndReadFileCSV.writeRoomToFileCSV(roomList);
        System.out.print("\nAdd Room: "
                +room.getNameService()+
                "  Successfully!!!"
        );
        backMainMenu();

    }

    //////////////////////////////////////////////////////////////////////////
    private static void bookingMovieTicket4D() {
        displayMenuBookingMovieTicket4D();
        processMenuBookingMovieTicket4D();
    }
    private static  void processMenuBookingMovieTicket4D() {
        Scanner scanner = new Scanner(System.in);
        switch (Integer.parseInt(scanner.nextLine())) {
            case 1:
                addBookingMovieTicket4D();
                break;
            case 2:
                showBookingMovieTicket();
                break;
            case 3:
                backMainMenu();
                break;
            case 4:
                System.exit(0);
            default:
                System.out.println("Error !! Back to menu ");
                backMainMenu();
        }
    }

    private static void addBookingMovieTicket4D() {
        try {
            ArrayList<Customer> customers = FuncWriteAndReadFileCSV.getCustomerFromCSV();

            System.out.println("---Choose customer want booking:----");
            int y = 1;
            for (Customer st : customers) {
                System.out.println("no: "+y);
                System.out.println(st.getPassPort() + " " + st.getName() + " " + st.getDate());
                y++;
            }
            Customer customer = customers.get(Integer.parseInt(scanner.nextLine()));
            customerQueueBookingTicket.add(customer);
            System.out.println("--- add "+customer.getName()+"success");
        } catch (IndexOutOfBoundsException ex) {
            System.out.println("Customer to booking movie ticket 4D noe exist !! try again");
            addBookingMovieTicket4D();
        }
        backMainMenu();
    }
    private static void showBookingMovieTicket() {
        int i = 1;
        System.out.println("------------List----------");
        for (Customer customer : customerQueueBookingTicket) {
            System.out.println("No:"+i);
            System.out.println(customer.showInformation());
            i++;
            System.out.println("--------------------");
        }
        backMainMenu();
    }
    private static void displayMenuBookingMovieTicket4D() {
        System.out.println("--------Booking movie ticket 4D menu-----------");
        System.out.println("1.Booking movie ticket"+
                "\n2.Show customer booking movie ticket"+
                "\n3.Back to main menu"+
                "\n4.Exit");
    }
    private static void findEmployeeFromResume() {
        Scanner scanner = new Scanner(System.in);
        Stack<Employee> employeeStack = Resume.getAllEmployee();
        System.out.println("Enter key of employee: ");
        String inputSearch = scanner.nextLine();
        try {
            while (true) {
                boolean foundByAddress = employeeStack.peek().getAddress().contains(inputSearch);
                if (!foundByAddress) {
                    employeeStack.pop();
                } else {
                    System.out.println("-----found employee below----");
                    System.out.println(employeeStack.peek().toString());
                    break;
                }
            }
        } catch (EmptyStackException ex) {
            System.out.println("Key invalid . please try again");
            findEmployeeFromResume();
        }
        backMainMenu();
    }
////////////////////////////////////////////////////////////////////////////////////////////////////////
public static void main(String[] args) {
    addNewCustomer();
}
}
