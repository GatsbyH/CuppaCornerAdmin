import request from '@/utils/request'

// 查询轮播图列表
export function listBanners(query) {
  return request({
    url: '/android/banners/list',
    method: 'get',
    params: query
  })
}

// 查询轮播图详细
export function getBanners(id) {
  return request({
    url: '/android/banners/' + id,
    method: 'get'
  })
}

// 新增轮播图
export function addBanners(data) {
  return request({
    url: '/android/banners',
    method: 'post',
    data: data
  })
}

// 修改轮播图
export function updateBanners(data) {
  return request({
    url: '/android/banners',
    method: 'put',
    data: data
  })
}

// 删除轮播图
export function delBanners(id) {
  return request({
    url: '/android/banners/' + id,
    method: 'delete'
  })
}
