package com.gaussic.test;

import com.gaussic.controller.BlogController;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.test.web.servlet.ResultMatcher;
import javax.servlet.ServletContext;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
//it will be used in the testing environment.
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/mvc-dispatcher-servlet.xml"})
public class BlogControllerTest {
    @Autowired
    BlogController blogController;
    @Autowired
    ServletContext context;
    private MockMvc mockMvc;
    @Before
    public void setup(){
        mockMvc = MockMvcBuilders.standaloneSetup(blogController).build();
    }

    @Test
    public void showBlogs() throws Exception {
        ResultActions resultActions = this.mockMvc.perform(MockMvcRequestBuilders
                //execute a request from /admin/blogs and constructure a request
                .get("/admin/blogs").sessionAttr("userId","1"))
                //add the ResultMatcher, and check whether the blogList exists
                .andExpect(model().attributeExists("blogList"))
                //add the ResultMatcher, and check whether the id exists
                .andExpect(model().attributeExists("id"))
                //check the URL name
                .andExpect(view().name("blog/blogs"))
                //check the correct jsp:blog/blogs
                .andExpect(forwardedUrl("blog/blogs"))
                //print the output to the console
                .andDo(print());

    }

    @Test
    public void addBlog() throws Exception {
        ResultActions resultActions = this.mockMvc.perform(MockMvcRequestBuilders
                //execute a request from /admin/blogs/add and constructure a request
                .get("/admin/blogs/add").sessionAttr("userId","1"))
                //add the ResultMatcher, and check whether the userList exists
                .andExpect(model().attributeExists("userList"))
                //add the ResultMatcher, and check whether the userId exists
                .andExpect(model().attributeExists("userId"))
                //add the ResultMatcher, and check whether the id exists
                .andExpect(model().attributeExists("id"))
                //check the URL name
                .andExpect(view().name("blog/addBlog"))
                //return the correct MvcResult:blog/addBlog
                .andExpect(forwardedUrl("blog/addBlog"))
                //print the output to the console
                .andDo(print());
    }

    @Test
    public void addBlogPost() throws Exception {
        ResultActions resultActions = this.mockMvc.perform(MockMvcRequestBuilders
                .post("/admin/blogs/addP").contentType(MediaType.APPLICATION_JSON)
                .param("id", "1")
                .param("title", "SpringMVC")
                .param("type", "database")
                .param("content", "This is a test.").param("pubDate","2017/10/01"))
                .andDo(print());
    }

    @Test
    public void showBlog() throws Exception {
        ResultActions resultActions = this.mockMvc.perform(MockMvcRequestBuilders
                .get("/admin/blogs/show/1").sessionAttr("userId","1"))
                .andExpect(model().attributeExists("id"))
                .andExpect(model().attributeExists("BlogComment"))
                .andExpect(model().attributeExists("blog"))
                .andExpect(view().name("blog/blogDetail"))
                .andExpect(forwardedUrl("blog/blogDetail"))
                .andDo(print());


    }

    @Test
    public void updateBlog() throws Exception {
        ResultActions resultActions = this.mockMvc.perform(MockMvcRequestBuilders
                .get("/admin/blogs/update/1").sessionAttr("userId","1"))
                .andExpect(model().attributeExists("id"))
                .andExpect(model().attributeExists("userId"))
                .andExpect(model().attributeExists("userList"))
                .andExpect(model().attributeExists("blog"))
                .andExpect(view().name("blog/updateBlog"))
                .andExpect(forwardedUrl("blog/updateBlog"))
                .andDo(print());
    }

    @Test
    public void updateBlogP() throws Exception {
        ResultActions resultActions = this.mockMvc.perform(MockMvcRequestBuilders
                .post("/admin/blogs/updateP").contentType(MediaType.APPLICATION_JSON));

    }



}