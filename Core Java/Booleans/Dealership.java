import java.util.Scanner;

public class Dealership {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Welcome to the dealership!");
        System.out.println("-> Select optin a to buy a car");
        System.out.println("-> Select option b to sell a car");

        String option = scan.nextLine();

        switch (key) {
            case a:
                System.out.println("What is your budget?");
                int budget = scan.nextInt();
                if (budget > 10000) {
                    System.out.println("Great! A Nissan is available.");

                    System.out.println("\nDo you have insurance? Write 'yes' or 'no'");
                    scan.nextLine();
                    String insurance = scan.nextLine();

                    System.out.println("\nDo you have license? Write 'yes' or 'no'");
                    String license = scan.nextLine();

                    System.out.println("\nWhat is your Credit Score?");
                    int creditScore = scan.nextInt();

                    if (insurance.equals("yes") && license.equals("yes") && creditScore > 600) {
                        System.out.println("Sold! It was a pleasure doing business with you");
                    } else {
                        System.out.println("We are sorry, you do not meet the requirements to buy a car");
                    }
                } else {
                    System.out.println("Sorry, we do not have have a car available under $" + budget);
                }
                break;
            case b:
                System.out.println("\nWhat is your car valued at?");
                int carValue = scan.nextInt();

                System.out.println("\nWhat is your selling price?");
                int sellingPrice = scan.nextInt();

                if (carValue > sellingPrice && sellingPrice < 30000) {
                    System.out.println("\nWe will buy your car! Pleasure doing business with you");
                } else {
                    System.out.println("\nWe are sorry, we cannot buy your car");
                }
                break;
            default:
                System.out.println("\nInvalid option"); 
                break;
        }

        scan.close();

    }
}
