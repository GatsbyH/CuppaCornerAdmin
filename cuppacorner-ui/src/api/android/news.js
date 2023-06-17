import request from '@/utils/request'

// 查询新闻表列表
export function listNews(query) {
  return request({
    url: '/android/news/list',
    method: 'get',
    params: query
  })
}

// 查询新闻表详细
export function getNews(id) {
  return request({
    url: '/android/news/' + id,
    method: 'get'
  })
}

// 新增新闻表
export function addNews(data) {
  return request({
    url: '/android/news',
    method: 'post',
    data: data
  })
}

// 修改新闻表
export function updateNews(data) {
  return request({
    url: '/android/news',
    method: 'put',
    data: data
  })
}

// 删除新闻表
export function delNews(id) {
  return request({
    url: '/android/news/' + id,
    method: 'delete'
  })
}
