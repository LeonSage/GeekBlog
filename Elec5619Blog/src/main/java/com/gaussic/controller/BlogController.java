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
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class BlogController {

    @Autowired
    BlogRepository blogRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    CommentRepository commentRepository;

    // view all blogs
    @RequestMapping(value = "/admin/blogs", method = RequestMethod.GET)
    public String showBlogs(ModelMap modelMap, HttpSession session) {
        int id = Integer.parseInt(session.getAttribute("userId").toString());
        List<BlogEntity> blogList = blogRepository.BlogEntitySort(id);
        modelMap.addAttribute("blogList", blogList);
        modelMap.addAttribute("id",id);
        return "blog/blogs";
    }


    //Add comment
    @RequestMapping("/admin/blogs/show/{id}/AddComment")
    public String toComment(@PathVariable("id") int id, ModelMap modelMap,HttpSession session) {
        BlogEntity blog = blogRepository.findOne(id);
        modelMap.addAttribute("cBlog", blog);
        modelMap.addAttribute("id", id);
        modelMap.addAttribute("nickName",session.getAttribute("nickName"));
        return "blog/AddComment";
    }

    //Save the comment
    @RequestMapping(value = "/admin/blogs/{id}/AddC", method = RequestMethod.POST)
    public String addComment(@ModelAttribute("comment") CommentEntity commentEntity,@PathVariable("id") int id,  ModelMap modelMap) {
        Date date = new Date();
        commentEntity.setPubDate(date);
        commentRepository.saveAndFlush(commentEntity);
        BlogEntity blog = blogRepository.findOne(commentEntity.getBid());
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
        return "blog/blogDetail";
    }
    // add the blog
    @RequestMapping(value = "/admin/blogs/add", method = RequestMethod.GET)
    public String addBlog(ModelMap modelMap, HttpSession session) {
        List<UserEntity> userList = userRepository.findAll();
        //transfer the use table into the jsp file
        modelMap.addAttribute("userId",session.getAttribute("userId"));
        modelMap.addAttribute("userList", userList);
        int id = Integer.parseInt(session.getAttribute("userId").toString());
        modelMap.addAttribute("id",id);
        return "blog/addBlog";
    }

    // add the blogs, then send a request using poat, redirect the page about viewing blogs
    @RequestMapping(value = "/admin/blogs/addP", method = RequestMethod.POST)
    public String addBlogPost(@ModelAttribute("blog") BlogEntity blogEntity) {
        blogRepository.saveAndFlush(blogEntity);
        // redirect the request
        return "redirect:/admin/blogs";
    }

    // search all related blogs using keywords and blog type
    @RequestMapping(value = "/admin/blogs/search", method = RequestMethod.GET)
    public String searchBlogPost(ModelMap modelMap,
                                 @RequestParam("search") String str, @RequestParam("choose") String choose,HttpSession session) {
        int id = Integer.parseInt(session.getAttribute("userId").toString());
        modelMap.addAttribute("id",id);
        List<BlogEntity> blogList = blogRepository.BlogEntitySort(id);
        List<BlogEntity> blogListSearch = new ArrayList<BlogEntity>();

        for (int i = 0; i < blogList.size(); i++) {
            String compare_A = blogList.get(i).getTitle();
            String compare_B = str;
            compare_A = compare_A.toUpperCase();
            compare_B = compare_B.toUpperCase();
            if (compare_A.indexOf(compare_B) != -1) {
                blogListSearch.add(blogList.get(i));
            }

        }
        if (choose.indexOf("option1")!=-1 || choose.isEmpty()) {
            modelMap.addAttribute("blogListSearch", blogListSearch);
            return "blog/searchBlog";
        } else if(choose.indexOf("option2")!=-1){

            List<BlogEntity> blogListSearchsecond = new ArrayList<BlogEntity>();
            for (int i = 0; i < blogListSearch.size(); i++) {
                if (blogListSearch.get(i).getType().indexOf("Database") != -1) {
                    blogListSearchsecond.add(blogListSearch.get(i));
                }
            }
            modelMap.addAttribute("blogListSearch", blogListSearchsecond);
            return "blog/searchBlog";

        } else if(choose.equals("option3")){

            List<BlogEntity> blogListSearchsecond = new ArrayList<BlogEntity>();
            for (int i = 0; i < blogListSearch.size(); i++) {
                if (blogListSearch.get(i).getType().indexOf("Operating System") != -1) {
                    blogListSearchsecond.add(blogListSearch.get(i));
                }
            }
            modelMap.addAttribute("blogListSearch", blogListSearchsecond);
            return "blog/searchBlog";

        } else if(choose.equals("option4")){

            List<BlogEntity> blogListSearchsecond = new ArrayList<BlogEntity>();
            for (int i = 0; i < blogListSearch.size(); i++) {
                if (blogListSearch.get(i).getType().indexOf("Algorithm") != -1) {
                    blogListSearchsecond.add(blogListSearch.get(i));
                }
            }
            modelMap.addAttribute("blogListSearch", blogListSearchsecond);
            return "blog/searchBlog";

        } else if(choose.equals("option5")){

            List<BlogEntity> blogListSearchsecond = new ArrayList<BlogEntity>();
            for (int i = 0; i < blogListSearch.size(); i++) {
                if (blogListSearch.get(i).getType().indexOf("C++") != -1) {
                    blogListSearchsecond.add(blogListSearch.get(i));
                }
            }
            modelMap.addAttribute("blogListSearch", blogListSearchsecond);
            return "blog/searchBlog";

        } else if(choose.equals("option6")){

            List<BlogEntity> blogListSearchsecond = new ArrayList<BlogEntity>();
            for (int i = 0; i < blogListSearch.size(); i++) {
                if (blogListSearch.get(i).getType().indexOf("HTML") != -1) {
                    blogListSearchsecond.add(blogListSearch.get(i));
                }
            }
            modelMap.addAttribute("blogListSearch", blogListSearchsecond);
            return "blog/searchBlog";

        }
        return "blog/searchBlog";

    }

    // view the blog details using GET method.
    @RequestMapping("/admin/blogs/show/{id}")
    public String showBlog(@PathVariable("id") int bid, ModelMap modelMap,HttpSession session) {
        int id = Integer.parseInt(session.getAttribute("userId").toString());
        modelMap.addAttribute("id",id);
        BlogEntity blog = blogRepository.findOne(bid);
        List<CommentEntity> commentList = commentRepository.findAll();
        List<CommentEntity> blogComment = new ArrayList<>();
        for(CommentEntity a : commentList)
        {
            if(a.getBid()==bid)
            {
                blogComment.add(a);
            }
        }
        modelMap.addAttribute("BlogComment", blogComment);
        modelMap.addAttribute("blog", blog);
        return "blog/blogDetail";
    }


    // update the blog content
    @RequestMapping("/admin/blogs/update/{id}")
    public String updateBlog(@PathVariable("id") int bid, ModelMap modelMap,HttpSession session) {
        BlogEntity blog = blogRepository.findOne(bid);
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("blog", blog);
        modelMap.addAttribute("userList", userList);
        modelMap.addAttribute("userId",session.getAttribute("userId"));
        int id = Integer.parseInt(session.getAttribute("userId").toString());
        modelMap.addAttribute("id",id);
        return "blog/updateBlog";
    }

    // update the blog content, send the POST request
    @RequestMapping(value = "/admin/blogs/updateP", method = RequestMethod.POST)
    public String updateBlogP(@ModelAttribute("blogP") BlogEntity blogEntity) {
        blogRepository.updateBlog(blogEntity.getTitle(), blogEntity.getType(),
                blogEntity.getContent(), blogEntity.getPubDate(), blogEntity.getId());
        blogRepository.flush();
        return "redirect:/admin/blogs";
    }


    //  delete the certain bog
    @RequestMapping("/admin/blogs/delete/{id}")
    public String deleteBlog(@PathVariable("id") int bid) {
        blogRepository.delete(bid);
        blogRepository.flush();
        return "redirect:/admin/blogs";
    }


}
