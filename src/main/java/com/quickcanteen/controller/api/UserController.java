package com.quickcanteen.controller.api;

import com.quickcanteen.annotation.Authentication;
import com.quickcanteen.dto.BaseBean;
import com.quickcanteen.dto.BaseJson;
import com.quickcanteen.dto.Role;
import com.quickcanteen.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 11022 on 2017/8/19.
 */
@RestController
@RequestMapping("/api/user")
public class UserController extends APIBaseController {
    @Autowired
    private UserInfoMapper userInfoMapper;

    @Autowired
    private TokenService tokenService;

    @RequestMapping(value = "/login")
    public BaseJson login(@RequestParam("accountNumber") String accountNumber, @RequestParam("userPassword") String userPassword) {
        BaseJson baseJson = new BaseJson();
        UserInfo userInfo = userInfoMapper.selectByAccountNumber(accountNumber);
        if (userInfo == null) {
            baseJson.setReturnCode("2.0.E.1");
            baseJson.setErrorMessage("学号未被注册");
        } else if (!userInfo.getUserPassword().equals(userPassword)) {
            baseJson.setReturnCode("2.0.E.2");
            baseJson.setErrorMessage("学号和密码不匹配");
        } else {
            baseJson.setReturnCode("2.0");
            baseJson.setErrorMessage("成功");
            String token = tokenService.generateToken(Role.User, userInfo.getUserId());
            BaseBean baseBean = new BaseBean();
            baseBean.setSingleResult(token);
            baseJson.setObj(baseBean);
        }
        return baseJson;
    }

    @RequestMapping(value = "/getUserInfoByUserID")
    @Authentication(Role.User)
    public BaseJson getUserInfoByUserID(@RequestParam("userID") int userID) {
        BaseJson baseJson = new BaseJson();
        if (getToken().getId() == userID) {
            UserInfo userInfo = userInfoMapper.selectByPrimaryKey(userID);
            baseJson.setObj(userInfo);
        }
        return baseJson;
    }
}
