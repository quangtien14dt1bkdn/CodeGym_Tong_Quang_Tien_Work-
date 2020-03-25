package EqualAndHashCode;

public class Customer {
    private String name;
    private String address;
    private String description;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // ...
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj == null) {
            return false;
        } else if (obj instanceof Customer) {
            Customer cust = (Customer) obj;
            if ((cust.getName() == null && name == null) ||
                    (cust.getName().equals(name) && ((cust.getAddress() == null && address == null)
                            || cust.getAddress().equals(address)))){
                return true;
            }
        }
        return false;
    }

}
