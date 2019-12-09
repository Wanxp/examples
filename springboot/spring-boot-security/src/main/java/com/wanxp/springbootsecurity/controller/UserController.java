package com.wanxp.springbootsecurity.controller;

import com.wanxp.springbootsecurity.dto.UserDto;
import com.wanxp.springbootsecurity.entity.User;
import com.wanxp.springbootsecurity.service.UserService;
import com.wanxp.springbootsecurity.validation.user.group.Registry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;


/**
 * 用户web控制器
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user/registration", method = RequestMethod.GET)
    public String showRegistrationForm(WebRequest request, Model model) {
        UserDto userDto = new UserDto();
        model.addAttribute("user", userDto);
        return "registration";
    }

    @RequestMapping(value = "/user/register", method = RequestMethod.POST)
    public ModelAndView registerUserAccount(@ModelAttribute("user") @Validated(Registry.class) UserDto userDto,
                                      BindingResult result, Errors errors) {
        User registered = new User();
        if (!result.hasErrors()) {
            registered = userService.registerNewUserAccount(userDto);
        }
        if (registered == null) {
            result.rejectValue("email", "message.regError");
        }
        if (result.hasErrors()) {
            return new ModelAndView("registration", "user", userDto);
        } else {
            return new ModelAndView("successRegister", "user", userDto);
        }
    }
}
