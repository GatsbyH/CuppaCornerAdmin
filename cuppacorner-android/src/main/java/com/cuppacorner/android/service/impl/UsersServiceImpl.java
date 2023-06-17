package com.cuppacorner.android.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cuppacorner.android.mapper.UsersMapper;
import com.cuppacorner.android.domain.Users;
import com.cuppacorner.android.service.IUsersService;

/**
 * 用户Service业务层处理
 *
 * @author zhen
 * @date 2023-06-12
 */
@Service
public class UsersServiceImpl implements IUsersService
{
    @Autowired
    private UsersMapper usersMapper;

    /**
     * 查询用户
     *
     * @param id 用户主键
     * @return 用户
     */
    @Override
    public Users selectUsersById(String id)
    {
        return usersMapper.selectUsersById(id);
    }

    /**
     * 查询用户列表
     *
     * @param users 用户
     * @return 用户
     */
    @Override
    public List<Users> selectUsersList(Users users)
    {
        return usersMapper.selectUsersList(users);
    }

    /**
     * 新增用户
     *
     * @param users 用户
     * @return 结果
     */
    @Override
    public int insertUsers(Users users)
    {
        return usersMapper.insertUsers(users);
    }

    /**
     * 修改用户
     *
     * @param users 用户
     * @return 结果
     */
    @Override
    public int updateUsers(Users users)
    {
        return usersMapper.updateUsers(users);
    }

    /**
     * 批量删除用户
     *
     * @param ids 需要删除的用户主键
     * @return 结果
     */
    @Override
    public int deleteUsersByIds(String[] ids)
    {
        return usersMapper.deleteUsersByIds(ids);
    }

    /**
     * 删除用户信息
     *
     * @param id 用户主键
     * @return 结果
     */
    @Override
    public int deleteUsersById(String id)
    {
        return usersMapper.deleteUsersById(id);
    }

    @Override
    public Users getUserByPhone(String mobile) {
        return usersMapper.selectUsersByPhone(mobile);
    }
}
