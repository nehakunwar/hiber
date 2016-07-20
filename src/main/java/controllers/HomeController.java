package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import DAO.productDAOImpl;
import DAO.productServices;
import model.Product;

@EnableWebMvc
@Controller
public class HomeController {
	
	@Autowired
	  public productServices productService;
	
	@Qualifier(value="productService")
    public void setPersonService(productServices ps){
        this.productService = ps;
    }
	
    @RequestMapping("/")
    public String showIndex()
    {
    	return "index";
    }
    
    @RequestMapping("/index")
    public String showIndex1()
    {
    	return "index";
    }
    
    @RequestMapping("/Register")
    public String showRegister()
    {
    	return "Register";
    }
      
    //For add and update person both
    @RequestMapping(value= "/AddProduct", method = RequestMethod.GET)
    public String addProduct(@ModelAttribute("product") Product p){
         
        if(p.getId() == 0){
            //new person, add it
            this.productService.addProduct(p);
        }else{
            //existing person, call update
            this.productService.updateProduct(p);
        }
         
        return "/AddProduct";
     }

    
    @RequestMapping("/ProductDescription")
    public String showProductDescription()
    {
    	return "ProductDescription";
    }
    
    @RequestMapping("/Products" )
    public String listProducts(Model model)
    {
        //model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.listProduct());
        return "Products";
    }
       
    @RequestMapping("/delete/{id}")
    public String removeProduct(@PathVariable("id") int id)
    {
        this.productService.removeProduct(id);
        return "/Products";
    }
    
    @RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id, Model model)
    {
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listProduct", this.productService.listProduct());
        return "redirect:/Products";
    }
}
