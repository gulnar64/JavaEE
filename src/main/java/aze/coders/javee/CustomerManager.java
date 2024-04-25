package aze.coders.javee;

import java.util.ArrayList;
import java.util.List;

public class CustomerManager {
    private static List<Customer> customers = new ArrayList<>();
    static{
        for (int i = 1; i <= 10; i++)
            customers.add(new Customer(i, "name " + i, "address " + i));
    }

    public Customer getCustomer(int id) {
        for (Customer customer : customers) {
            if (customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }

    public List<Customer> getCustomers() {
        System.out.println("get all: " + customers);
        return customers;
    }

    public void addCustomer(Customer customer) {
        customers.add(customer);
    }

    public void removeCustomer(int id) {
        CustomerManager customerManager = new CustomerManager();
        customers.remove(customerManager.getCustomer(id));
    }

    public void updateCustomer(Customer customer) {
        System.out.println("name: "  + customer.getName());
        customers.set(customer.getId(), customer);
        System.out.println("update: " + customers);
    }
}
