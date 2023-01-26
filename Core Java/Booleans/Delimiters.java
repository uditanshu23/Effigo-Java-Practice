import java.util.Scanner;

public class Delimiters {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter two intergers:(On the Same line) ");
        int num1 = scan.nextInt();
        int num2 = scan.nextInt();

        System.out.println("\nEnter two very big intergers:(On the Same line) ");
        long num3 = scan.nextLong();
        long num4 = scan.nextLong();

        System.out.println("\nEnter two decimals:(On the Same line) ");
        double num5 = scan.nextDouble();
        double num6 = scan.nextDouble();

        System.out.println("\nEnter two text values:(On the Same line) ");
        String text1 = scan.next();
        String text2 = scan.next();

        scan.close();

        System.out.println("\nThe first two intergers are: " + num1 + " and " + num2);
        System.out.println("\nThe first two very big intergers are: " + num3 + " and " + num4);
        System.out.println("\nThe first two decimals are: " + num5 + " and " + num6);
        System.out.println("\nThe first two text values are: " + text1 + " and " + text2);
    }
}
