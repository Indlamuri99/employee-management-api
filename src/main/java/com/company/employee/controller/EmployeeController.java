<<<<<<< HEAD
@RestController
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "Welcome to Employee Management API";
    }
=======
package com.company.employee.controller;


import com.company.employee.dto.EmployeeDTO;
import com.company.employee.service.EmployeeService;


import lombok.RequiredArgsConstructor;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;


import java.util.List;



@RestController
@RequestMapping("/api/employees")
@RequiredArgsConstructor
public class EmployeeController {


    private final EmployeeService service;



    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public EmployeeDTO create(
            @RequestBody EmployeeDTO dto){

        return service.createEmployee(dto);

    }



    @GetMapping
    public List<EmployeeDTO> getAll(){

        return service.getAllEmployees();

    }



    @GetMapping("/{id}")
    public EmployeeDTO getById(
            @PathVariable Long id){

        return service.getEmployeeById(id);

    }



    @PutMapping("/{id}")
    public EmployeeDTO update(
            @PathVariable Long id,
            @RequestBody EmployeeDTO dto){

        return service.updateEmployee(id,dto);

    }



    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(
            @PathVariable Long id){

        service.deleteEmployee(id);

    }


>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}