package com.cuppacorner.android.service;

import java.util.List;
import com.cuppacorner.android.domain.Users;

/**
 * 用户Service接口
 *
 * @author zhen
 * @date 2023-06-12
 */
public interface IUsersService
{
    /**
     * 查询用户
     *
     * @param id 用户主键
     * @return 用户
     */
    public Users selectUsersById(String id);

    /**
     * 查询用户列表
     *
     * @param users 用户
     * @return 用户集合
     */
    public List<Users> selectUsersList(Users users);

    /**
     * 新增用户
     *
     * @param users 用户
     * @return 结果
     */
    public int insertUsers(Users users);

    /**
     * 修改用户
     *
     * @param users 用户
     * @return 结果
     */
    public int updateUsers(Users users);

    /**
     * 批量删除用户
     *
     * @param ids 需要删除的用户主键集合
     * @return 结果
     */
    public int deleteUsersByIds(String[] ids);

    /**
     * 删除用户信息
     *
     * @param id 用户主键
     * @return 结果
     */
    public int deleteUsersById(String id);

    Users getUserByPhone(String mobile);
}
