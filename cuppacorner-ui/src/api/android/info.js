import request from '@/utils/request'

// 查询小贴士列表
export function listInfo(query) {
  return request({
    url: '/android/info/list',
    method: 'get',
    params: query
  })
}

// 查询小贴士详细
export function getInfo(id) {
  return request({
    url: '/android/info/' + id,
    method: 'get'
  })
}

// 新增小贴士
export function addInfo(data) {
  return request({
    url: '/android/info',
    method: 'post',
    data: data
  })
}

// 修改小贴士
export function updateInfo(data) {
  return request({
    url: '/android/info',
    method: 'put',
    data: data
  })
}

// 删除小贴士
export function delInfo(id) {
  return request({
    url: '/android/info/' + id,
    method: 'delete'
  })
}
