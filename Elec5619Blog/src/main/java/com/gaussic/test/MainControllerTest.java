package com.gaussic.test;

import  com.gaussic.controller.MainController;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import javax.servlet.ServletContext;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/mvc-dispatcher-servlet.xml"})

public class MainControllerTest {

    @Autowired
    MainController mainController;
    @Autowired
    ServletContext context;
    private MockMvc mockMvc;
    @Before
    public void setup(){
        mockMvc = MockMvcBuilders.standaloneSetup(mainController).build();
    }
    @org.junit.Test
    public void index() throws Exception {

    }


    @org.junit.Test
    public void about() throws Exception {
    }

    @org.junit.Test
    public void adminAbout() throws Exception {
    }

    @org.junit.Test
    public void getUser() throws Exception {
        ResultActions resultActions=this.mockMvc.perform(MockMvcRequestBuilders
                .get("/adminViewUser"))
                .andExpect(model().attributeExists("adminList"))
                .andExpect(view().name("user/adminViewUser"))
                .andExpect(forwardedUrl("user/adminViewUser"))
                .andDo(print());
    }

    @org.junit.Test
    public void getAdminBlog() throws Exception {
    }

    @org.junit.Test
    public void getUsers() throws Exception {
    }

    @org.junit.Test
    public void showUserDetail() throws Exception {
    }

    @org.junit.Test
    public void showUserDetails() throws Exception {
    }

    @org.junit.Test
    public void showAdminBlog() throws Exception {
    }

    @org.junit.Test
    public void updateUser() throws Exception {
    }

    @org.junit.Test
    public void updateUserPost() throws Exception {
    }

    @org.junit.Test
    public void adminUpdateUser() throws Exception {
    }

    @org.junit.Test
    public void adminUpdateUserPost() throws Exception {
    }

    @org.junit.Test
    public void deleteUser() throws Exception {
    }

    @org.junit.Test
    public void deleteBlog() throws Exception {
    }

}