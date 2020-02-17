let Customer = function () {
    this.setNameCustomer = function (nameCustomer) {
        this.nameCustomer = nameCustomer;
    };

    this.getNameCustomer = function () {
        return this.nameCustomer;
    };

    this.setIdCard = function (idCard) {
        this.idCard = idCard;
    };

    this.getIdCard = function () {
        return this.idCard;
    };

    this.setBirthdayCustomer = function (birthdayCustomer) {
        this.birthdayCustomer = birthdayCustomer;
    };

    this.getBirthdayCustomer = function () {
        return this.birthdayCustomer;
    };

    this.setEmailCustomer = function (emailCustomer) {
        this.emailCustomer = emailCustomer;
    };

    this.getEmailCustomer = function () {
        return this.emailCustomer;
    };

    this.setAddressCustomer = function (addressCustomer) {
        this.addressCustomer = addressCustomer;
    };

    this.getAddressCustomer = function () {
        return this.addressCustomer;
    };

    this.setTypeCustomer = function (typeCustomer) {
        this.typeCustomer = typeCustomer;
    };

    this.getTypeCustomer = function () {
        return this.typeCustomer;
    };

    this.setDiscount = function (discount) {
        this.discount = discount;
    };

    this.getDiscount = function () {
        return this.discount;
    };

    this.setNumberOfAccompanying = function (numberOfAccompanying) {
        this.numberOfAccompanying = numberOfAccompanying;
    };

    this.getNumberOfAccompanying = function () {
        return this.numberOfAccompanying;
    };

    this.setTypeRoom = function (typeRoom) {
        this.typeRoom = typeRoom;
    };

    this.getTypeRoom = function () {
        return this.typeRoom;
    };

    this.setRentDays = function (rentDays) {
        this.rentDays = rentDays;
    };

    this.getRentDays = function () {
        return this.rentDays;
    };

    this.setTypeService = function (typeService) {
        this.typeService = typeService;
    };

    this.getTypeService = function () {
        return this.typeService;
    };

    this.totalPays = function () {
        let moneyPerDays=0;
        if(this.getTypeService()=== "Villa"){
            moneyPerDays=500;
        }else if(this.getTypeService()=== "House"){
            moneyPerDays=300;
        }else{
            moneyPerDays=300;
        }
        return moneyPerDays*parseFloat(this.getRentDays())*(1-parseFloat(this.getDiscount())/100);
    }
};
let Employee=function () {
    this.setName=function (name) {
        this.name=name;
    };
    this.getName=function () {
        return this.name;
    };
    this.setBirthday=function (birthday) {
        this.birthday=birthday;
    };
    this.getBirthday=function () {
        return this.birthday;
    };
    this.setIdCard=function (idCard) {
        this.idCard=idCard;
    };
    this.getIdCard=function () {
        return this.idCard;
    };
    this.setPhone=function (phone) {
        this.phone=phone;
    };
    this.getPhone=function () {
        return this.phone;
    };
    this.setEmail=function (email) {
        this.email=email;
    };
    this.getEmail=function () {
        return this.email;
    };
    this.setLevel=function (level) {
        this.level=level;
    };
    this.getLevel=function () {
        return this.level;
    };
    this.setLocal=function (local) {
        this.local=local;
    };
    this.getLocal=function () {
        return this.local;
    };
    this.setSalary=function (salary) {
        this.salary=salary;
    };
    this.getSalary=function () {
        return this.salary;
    };
    this.totalPays = function () {
        let moneyPerDays=0;
        if(this.getTypeService()=== "Villa"){
            moneyPerDays=500;
        }else if(this.getTypeService()=== "House"){
            moneyPerDays=300;
        }else{
            moneyPerDays=300;
        }
        return moneyPerDays*parseFloat(this.getRentDays())*(1-parseFloat(this.getDiscount())/100);
    };
    this.totalSalary=function () {
        let salary=0;
        if(this.getLocal()=="Manager"){
            salary=parseInt(this.getSalary())+500;
        }else if(this.getLocal()=="Sale"){
            salary=parseInt(this.getSalary())+300;
        }else if(this.getLocal()=="Marketing"){
            salary=parseInt(this.getSalary())+200;
        }
        return salary;
    };
}