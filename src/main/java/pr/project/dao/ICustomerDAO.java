package pr.project.dao;

import org.springframework.data.repository.CrudRepository;

import pr.project.model.Customer;

public interface ICustomerDAO extends CrudRepository<Customer, Integer> {

}
