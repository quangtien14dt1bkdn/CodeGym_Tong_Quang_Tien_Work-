package EqualAndHashCode;

public class HashcodeConcept {
// chen 1 tap hop Object vao ArrayList , Override equal() hashCode() de khong co 2 phan tu giong nhau duoc chen vao ArrayList

    public static void main(String... hashcodeExample) {
        Simpson homer = new Simpson(111, "Homer");
        Simpson bart = new Simpson(111, "Homer");

        boolean isHashcodeEquals = String.valueOf(homer.getId()).hashCode() == String.valueOf(bart.getId()).hashCode();

        if (isHashcodeEquals) {
            System.out.println("Should compare with equals method too.");
        } else {
            System.out.println("Should not compare with equals method because " +
                    "the id is different, that means the objects are not equals for sure.");
        }
    }

    static class Simpson {
        int id;
        String name;

        public Simpson(int id, String name) {
            this.id = id;
            this.name = name;
        }

        public String getName() {
            return name;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public void setName(String name) {
            this.name = name;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Simpson simpson = (Simpson) o;
            return id == simpson.id &&
                    name.equals(simpson.name);
        }

//        @Override
//        public int hashCode() {
//            return id;
//        }
    }
}