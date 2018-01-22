package com.gaussic.controller;

import com.gaussic.model.BlogEntity;
import com.gaussic.model.CommentEntity;
import com.gaussic.model.UserEntity;
import com.gaussic.repository.BlogRepository;
import com.gaussic.repository.CommentRepository;
import com.gaussic.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class MainController {

    //automatically config the interface of database
    @Autowired
    UserRepository userRepository;

    @Autowired
    BlogRepository blogRepository;

    @Autowired
    CommentRepository commentRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "/logInRegister/index";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about(ModelMap modelMap, HttpSession session)
    {
        int id=(int)session.getAttribute("userId");

        UserEntity userEntity = userRepository.findOne(id);

        // query the blog list
        //List<BlogEntity> blogList = blogRepository.findAll();
        List<BlogEntity> blogList = blogRepository.selectBlog(id);

        // pass the user list to jsp page
        modelMap.addAttribute("user", userEntity);
        modelMap.addAttribute("blogList", blogList);
        modelMap.addAttribute("id",id);
        modelMap.addAttribute("user",userEntity);

        return "user/aboutUser";
    }

    @RequestMapping(value = "/aboutUs", method =  RequestMethod.GET)
    public  String aboutUs()
    {
        return "user/aboutUs";
    }

    @RequestMapping(value = "adminAbout", method =  RequestMethod.GET)
    public  String adminAbout()
    {
        return "user/adminAboutUser";
    }

    @RequestMapping(value = "/adminViewUser", method = RequestMethod.GET)
    public String getUser(ModelMap modelMap) {
        // query the user list
        List<UserEntity> adminList = userRepository.findAll();

        // pass the user list to jsp page
        modelMap.addAttribute("adminList", adminList);

        return "user/adminViewUser";
    }

    @RequestMapping(value = "/adminViewBlog", method = RequestMethod.GET)
    public String getAdminBlog(ModelMap modelMap) {
        // query the blog list
        List<BlogEntity> blogList = blogRepository.findAll();

        // pass the user list to jsp page
        modelMap.addAttribute("blogList", blogList);

        return "user/adminViewBlog";
    }

    //common user view user list
    @RequestMapping(value = "/commonViewUser", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap, HttpSession session) {
        // query the user list
        List<UserEntity> adminList = userRepository.findAll();

        // pass the user list to jsp page
        modelMap.addAttribute("adminList", adminList);
        int id=(int)session.getAttribute("userId");
        modelMap.addAttribute("id",id);
        return "user/commonViewUser";
    }

    // admin view user detail
    // @PathVariable can collect the {id} parameter
    @RequestMapping(value = "/admin/users/show/{id}", method = RequestMethod.GET)
    public String showUserDetail(@PathVariable("id") Integer userId, ModelMap modelMap) {

        UserEntity userEntity = userRepository.findOne(userId);

        // query the blog list
        //List<BlogEntity> blogList = blogRepository.findAll();
        List<BlogEntity> blogList = blogRepository.selectBlog(userId);

        modelMap.addAttribute("user", userEntity);
        modelMap.addAttribute("blogList", blogList);

        return "user/adminAboutUser";
    }

    @RequestMapping(value = "/common/users/show/{id}", method = RequestMethod.GET)
    public String showUserDetails(@PathVariable("id") Integer userId, ModelMap modelMap) {

        UserEntity userEntity = userRepository.findOne(userId);

        // query the blog list
        //List<BlogEntity> blogList = blogRepository.findAll();
        List<BlogEntity> blogList = blogRepository.selectBlog(userId);

        // pass the user list to jsp page
        modelMap.addAttribute("user", userEntity);
        modelMap.addAttribute("blogList", blogList);

        return "user/aboutUser";
    }

    @RequestMapping("/admin/show/{id}")
    public String showAdminBlog(@PathVariable("id") int id, ModelMap modelMap) {
        BlogEntity blog = blogRepository.findOne(id);
        List<CommentEntity> commentList = commentRepository.findAll();
        List<CommentEntity> blogComment = new ArrayList<>();
        for(CommentEntity a : commentList)
        {
            if(a.getBid()==id)
            {
                blogComment.add(a);
            }
        }
        modelMap.addAttribute("BlogComment", blogComment);
        modelMap.addAttribute("blog", blog);
        return "user/adminBlogDetail";
    }

    // common user update User Information page
    @RequestMapping(value = "/admin/users/update/{id}", method = RequestMethod.GET)
    public String updateUser(@PathVariable("id") Integer userId, ModelMap modelMap,HttpSession session) {

        // find the user with userID
        UserEntity userEntity = userRepository.findOne(userId);

        int id=(int)session.getAttribute("userId");

        // pass the attribute to the jsp
        modelMap.addAttribute("id",id);
        modelMap.addAttribute("user", userEntity);
        return "user/updateUser";
    }

    // common user updates User Information Operation
    @RequestMapping(value = "/admin/users/updateP", method = RequestMethod.POST)
    public String updateUserPost(@ModelAttribute("userP") UserEntity user) {

        // update
        userRepository.updateUsers(user.getNickname(), user.getFirstName(),
                user.getLastName(), user.getPassword(), user.getId());
        userRepository.flush();
        return "redirect:/admin/blogs";
    }

    // admin update User Information page
    @RequestMapping(value = "/admin/update/{id}", method = RequestMethod.GET)
    public String adminUpdateUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // find the user with userID
        UserEntity userEntity = userRepository.findOne(userId);

        // pass the attribute to the jsp
        modelMap.addAttribute("user", userEntity);
        return "user/adminUpdateUser";
    }

    // admin updates User Information Operation
    @RequestMapping(value = "/admin/updateP", method = RequestMethod.POST)
    public String adminUpdateUserPost(@ModelAttribute("userP") UserEntity user) {

        // update
        userRepository.updateUsers(user.getNickname(), user.getFirstName(),
                user.getLastName(), user.getPassword(), user.getId());
        userRepository.flush();
        return "redirect:/adminViewUser";
    }

    // admin delete User
    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer userId) {

        // delete user with userId
        userRepository.delete(userId);
        // flush
        userRepository.flush();
        return "redirect:/adminViewUser";
    }

    //admin delete blog
    @RequestMapping("/admin/delete/{id}")
    public String deleteBlog(@PathVariable("id") int bid) {
        blogRepository.delete(bid);
        blogRepository.flush();
        return "redirect:/adminViewBlog";
    }
}
