import request from '@/utils/request'

// 查询音乐剧列表
export function listMusical(query) {
  return request({
    url: '/android/musical/list',
    method: 'get',
    params: query
  })
}

// 查询音乐剧详细
export function getMusical(musicalId) {
  return request({
    url: '/android/musical/' + musicalId,
    method: 'get'
  })
}

// 新增音乐剧
export function addMusical(data) {
  return request({
    url: '/android/musical',
    method: 'post',
    data: data
  })
}

// 修改音乐剧
export function updateMusical(data) {
  return request({
    url: '/android/musical',
    method: 'put',
    data: data
  })
}

// 删除音乐剧
export function delMusical(musicalId) {
  return request({
    url: '/android/musical/' + musicalId,
    method: 'delete'
  })
}
