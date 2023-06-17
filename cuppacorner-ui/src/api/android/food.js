import request from '@/utils/request'

// 查询美食列表
export function listFood(query) {
  return request({
    url: '/android/food/list',
    method: 'get',
    params: query
  })
}

// 查询美食详细
export function getFood(id) {
  return request({
    url: '/android/food/' + id,
    method: 'get'
  })
}

// 新增美食
export function addFood(data) {
  return request({
    url: '/android/food',
    method: 'post',
    data: data
  })
}

// 修改美食
export function updateFood(data) {
  return request({
    url: '/android/food',
    method: 'put',
    data: data
  })
}

// 删除美食
export function delFood(id) {
  return request({
    url: '/android/food/' + id,
    method: 'delete'
  })
}
