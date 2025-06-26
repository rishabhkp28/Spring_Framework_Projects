package SpringMVC.Controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import SpringMVC.ServiceLayer.ServiceProvider;
import SpringMVC.Model.Product;


@Controller
public class HomeController {
	
	
	@Autowired
	private ServiceProvider sp;
	
	
	@RequestMapping("/")
	public ModelAndView getToHome() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("HomePage");
	    
	    // Fetch all products from DB
	    mv.addObject("products", sp.getAllProducts());
	    mv.addObject("title", "WISHLIST");
	    
	    return mv;
	}
	@RequestMapping("/addproduct")
	public ModelAndView addProduct()
	{		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addProduct");
		mv.addObject("title","Add a Product");
		return mv;
	}
	
	@RequestMapping(path = "/handleproduct" , method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute("product") Product p,HttpServletRequest hsr)
	{
		 Product existing = sp.read(p.getId());
		    if (existing != null) {
		        sp.update(p);
		        System.out.println("The product has been updated in the database");
		    } else {
		        sp.insert(p);
		        System.out.println("The product has been added into the database");
		    }
		
		    
		    
		RedirectView rv = new RedirectView();
		
		rv.setUrl(hsr.getContextPath() + "/");
		
		return rv;		
	}
	
	@RequestMapping(path ="/update/{id}")
	public String handleUpdate(@PathVariable("id") int id,Model m)
	{
		
		Product p = sp.read(id);
		m.addAttribute("product", p);
		return "updateProduct";
		
	}
	
	@RequestMapping(path = "/delete/{id}")
	public String handledelete(@PathVariable("id") int id,Model m)
	{
		sp.delete(id);
		m.addAttribute("products",sp.getAllProducts());
		m.addAttribute("title","WISHLIST");
		return "HomePage";
	}

}
