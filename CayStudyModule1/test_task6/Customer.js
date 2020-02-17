let Customer = function () {

    this.setNameCustomer = function (nameCustomer) {
        this.nameCustomer = nameCustomer;
    };
    this.getNameCustomer = function () {
        return this.nameCustomer;
    };
    //name
    this.setIdCard = function (IdCard) {
        this.IdCard = IdCard;
    };
    this.getIdCard = function () {
        return this.IdCard;
    };
    //IdCard
    this.setBirthday = function (Birthday) {
        this.Birthday = Birthday;
    };
    this.getBirthday = function () {
        return this.Birthday;
    };
    //birthday
    this.setEmail = function (Email) {
        this.Email = Email;
    };
    this.getEmail = function () {
        return this.Email;
    };
    //Email
    this.setAddress = function (Address) {
        this.Address = Address;
    };
    this.getAddress = function () {
        return this.Address;
    };
    //Address
    this.setTypeCustomer = function (TypeCustomer) {
        this.TypeCustomer = TypeCustomer;
    };
    this.getTypeCustomer = function () {
        return this.TypeCustomer;
    };
    //Type Customer
    this.setDiscount = function (Discount) {
        this.Discount = Discount;
    };
    this.getDiscount = function () {
        return this.Discount;
    };
    //Discount
    this.setAccompanying = function (Accompanying) {
        this.Accompanying =Accompanying;
    };
    this.getAccompanying = function () {
        return this.Accompanying;
    };
    //Accompanying
    this.setTypeRoom = function (TypeRoom) {
        this.TypeRoom = TypeRoom;
    };
    this.getTypeRoom = function () {
        return this.TypeRoom;
    };
    //Type Room
    this.setRentDays = function (RentDays) {
        this.RentDays = RentDays;
    };
    this.getRentDays = function () {
        return this.RentDays;
    };
    //Rent Days
    this.setTypeService = function (TypeService) {
        this.TypeService = TypeService;
    };
    this.getTypeService = function () {
        return this.TypeService;
    };
    //Type Service
    this.totalPays=function(){
        let moneyPerDays = 0;
        if (this.getTypeService() === "villa") {
            moneyPerDays=500;
        }
        else  if (this.getTypeService() === "house") {
            moneyPerDays=300;
        }
        else if(this.getTypeService()==="room")  {
            moneyPerDays=100;
        }
        return moneyPerDays*parseFloat(this.getRentDays())*(1-parseFloat(this.getDiscount()))
    }
};