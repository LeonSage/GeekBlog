package com.gaussic.controller;

import com.gaussic.model.UserEntity;
import com.gaussic.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class loginController {

    public static UserEntity logedUsr;


    @Autowired
    UserRepository userRepository;
    HttpSession session1;
    HttpServletRequest request1;


    @RequestMapping(value = "/login")
    public String vadicate(
            @RequestParam("username") String username,
            @RequestParam("password") String password, ModelMap modelMap, HttpSession session) {

        List<UserEntity> userList = userRepository.findAll();
        int s= -1;
        for (UserEntity a:userList)
        {

            if(a.getNickname().equals(username))
            {
                s=a.getId();
            }
        }

        if (s==-1){
            return "/logInRegister/loginFailure";
        }

        UserEntity oneUsr;
        oneUsr = userRepository.findOne(s);
        logedUsr=oneUsr;
        session.setAttribute("userId",oneUsr.getId());
        session.setAttribute("nickName",oneUsr.getNickname());
        if (  password.equals(oneUsr.getPassword()) )
        {

            if(username.equals("admin5619")){
                return "redirect:/adminViewUser";
            }

            return "redirect:/admin/blogs";


        }

        return "/logInRegister/loginFailure";


    }


    @RequestMapping(value = "/viewUsers")
    public String viewUsers(ModelMap modelMap){

        modelMap.addAttribute("logedUsr", logedUsr);

        return "/logInRegister/viewUsers";
    }



    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration() {

        return "/logInRegister/registerUser";
    }


    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user") UserEntity userEntity
    ){

        System.out.println(userEntity.getFirstName());
        System.out.println(userEntity.getLastName());
        System.out.println(userEntity.getProfileImgAddress());

        userRepository.saveAndFlush(userEntity);


        return "/logInRegister/index";
    }


}
