package com.ln.springmvc.handler;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.ln.springmvc.Dao.studentDaoImpl;
import com.ln.springmvc.entity.studentInfo;

@Controller
public class studentHandeler {
	
	studentInfo si = new studentInfo();
	
	@Autowired
	private studentDaoImpl studentDaoImpl;

	@RequestMapping("/emps")
	public String list(Map<String, Object> map) {
		try {
			map.put("studentDao", studentDaoImpl.findAll());

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "test/list";
	}
	
	@RequestMapping(value="/emp",method=RequestMethod.PUT)
	public String update(@Valid studentInfo studentinfo,MultipartFile file,HttpSession	session) throws SQLException, IllegalStateException, IOException {
		String originalFileName = file.getOriginalFilename();
		if(file != null && originalFileName != null && originalFileName.length() >0) {
			String newFileName = UUID.randomUUID()+originalFileName.substring(originalFileName.lastIndexOf("."));
			String path= session.getServletContext().getRealPath("/pic");
			System.out.println("Path:"+path);
			File newFile = new File(path,newFileName);
			file.transferTo(newFile);
			studentinfo.setPic(newFile.toString());
		}
		studentDaoImpl.update(studentinfo);
		return "redirect:/emps";
	}
	
	@RequestMapping(value="/emp" ,method=RequestMethod.GET)
	public String input(Map<String,Object> map) {
		map.put("studentInfo", new studentInfo());
		return "test/input";
	}
	
	@RequestMapping(value="/emp/{id}" ,method=RequestMethod.GET)
	public String input(@PathVariable("id") Integer id,Map<String,Object> map) throws SQLException {
		map.put("studentInfo", studentDaoImpl.findByid(id));
		return "test/input";
	}
	
	
	@RequestMapping(value="/emp",method=RequestMethod.POST)
	public String Add(@Valid studentInfo si,BindingResult result,Map<String,Object> map, MultipartFile file,HttpSession	session) throws SQLException, Exception, Exception {
		String originalFileName = file.getOriginalFilename();
		if(file != null && originalFileName != null && originalFileName.length() >0) {
			String newFileName = UUID.randomUUID()+originalFileName.substring(originalFileName.lastIndexOf("."));
			String path= session.getServletContext().getRealPath("/pic");
			System.out.println("Path:"+path);
			File newFile = new File(path,newFileName);
			file.transferTo(newFile);
			si.setPic(newFileName.toString());	
		}
		
		System.out.println("save:"+si);
		if(result.getErrorCount()>0) {
			System.out.println("出错！");
		for(FieldError error:result.getFieldErrors()) {
			System.out.println(error.getField()+":"+error.getDefaultMessage());
				}
			
		map.put("studentinfo", new studentInfo());
		return "test/input";
		}
		studentDaoImpl.save(si);
		return "redirect:/emps";
		
	}
	
	@RequestMapping(value="/emp/{id}",method=RequestMethod.DELETE)
	public String Delete(@PathVariable("id") Integer id) {
		try {
			studentDaoImpl.delete(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:/emps";
	}
	
}
