public class Main {
    public static void main(String[] args) {

        Product[] products = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Phone", "Electronics"),
            new Product(103, "Shoes", "Fashion"),
            new Product(104, "Watch", "Accessories"),
            new Product(105, "Book", "Education")
        };

        int searchId = 103;

        System.out.println("Linear Search:");
        Product result1 = SearchService.linearSearch(products, searchId);
        if (result1 != null) {
            result1.display();
        } else {
            System.out.println("Product not found");
        }

        System.out.println("Binary Search:");
        Product result2 = SearchService.binarySearch(products, searchId);
        if (result2 != null) {
            result2.display();
        } else {
            System.out.println("Product not found");
        }
    }
}