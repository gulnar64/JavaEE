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
        for(Customer findCustomer: customers) {
            if(customer.getId()==findCustomer.getId()) {
                findCustomer.setName(customer.getName());
                findCustomer.setAddress(customer.getAddress());
            }
        }
        customers.set(customer.getId(), customer);
    }
    public List<Customer> getCustomerByName(String name) {
        System.out.println("search name: " +  name);
        List<Customer> searcCustomers = new ArrayList<>();
        CustomerManager customerManager = new CustomerManager();
        List<Customer> customers = customerManager.getCustomers();
        for (Customer customer : customers) {
            System.out.println("name: " + customer.getName());
            if(customer.getName().equals(name)) {
                System.out.println("name equals" );
                searcCustomers.add(customer);
            }
        }
        return searcCustomers;
    }

}
