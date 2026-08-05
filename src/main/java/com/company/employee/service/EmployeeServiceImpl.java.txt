package com.company.employee.service;


import com.company.employee.dto.EmployeeDTO;
import com.company.employee.entity.Employee;
import com.company.employee.exception.EmployeeNotFoundException;
import com.company.employee.repository.EmployeeRepository;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;


import java.util.List;


@Service
@RequiredArgsConstructor
public class EmployeeServiceImpl 
        implements EmployeeService {


    private final EmployeeRepository repository;



    @Override
    public EmployeeDTO createEmployee(EmployeeDTO dto){


        Employee employee = new Employee();

        employee.setFirstName(dto.getFirstName());
        employee.setLastName(dto.getLastName());
        employee.setEmail(dto.getEmail());
        employee.setDepartment(dto.getDepartment());
        employee.setSalary(dto.getSalary());


        Employee saved = repository.save(employee);


        dto.setId(saved.getId());

        return dto;

    }



    @Override
    public List<EmployeeDTO> getAllEmployees(){


        return repository.findAll()
                .stream()
                .map(this::convert)
                .toList();

    }



    @Override
    public EmployeeDTO getEmployeeById(Long id){


        Employee employee =
                repository.findById(id)
                .orElseThrow(
                () -> new EmployeeNotFoundException(
                "Employee not found : "+id));


        return convert(employee);

    }



    @Override
    public EmployeeDTO updateEmployee(
            Long id,
            EmployeeDTO dto){


        Employee employee =
                repository.findById(id)
                .orElseThrow(
                () -> new EmployeeNotFoundException(
                "Employee not found"));


        employee.setFirstName(dto.getFirstName());
        employee.setLastName(dto.getLastName());
        employee.setDepartment(dto.getDepartment());
        employee.setSalary(dto.getSalary());


        repository.save(employee);


        return convert(employee);

    }



    @Override
    public void deleteEmployee(Long id){


        repository.deleteById(id);

    }



    private EmployeeDTO convert(Employee employee){


        EmployeeDTO dto = new EmployeeDTO();


        dto.setId(employee.getId());
        dto.setFirstName(employee.getFirstName());
        dto.setLastName(employee.getLastName());
        dto.setEmail(employee.getEmail());
        dto.setDepartment(employee.getDepartment());
        dto.setSalary(employee.getSalary());


        return dto;

    }

}