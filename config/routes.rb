Rails.application.routes.draw do
  
  root "bloggers#index"

  resources :bloggers do
    resources :posts, shallow: true
  end

end

# root GET    /                                         blogger#index
#    blogger_posts GET    /bloggers/:blogger_id/posts(.:format)     posts#index
#                  POST   /bloggers/:blogger_id/posts(.:format)     posts#create
# new_blogger_post GET    /bloggers/:blogger_id/posts/new(.:format) posts#new
#        edit_post GET    /posts/:id/edit(.:format)                 posts#edit
#             post GET    /posts/:id(.:format)                      posts#show
#                  PATCH  /posts/:id(.:format)                      posts#update
#                  PUT    /posts/:id(.:format)                      posts#update
#                  DELETE /posts/:id(.:format)                      posts#destroy
#         bloggers GET    /bloggers(.:format)                       bloggers#index
#                  POST   /bloggers(.:format)                       bloggers#create
#      new_blogger GET    /bloggers/new(.:format)                   bloggers#new
#     edit_blogger GET    /bloggers/:id/edit(.:format)              bloggers#edit
#          blogger GET    /bloggers/:id(.:format)                   bloggers#show
#                  PATCH  /bloggers/:id(.:format)                   bloggers#update
#                  PUT    /bloggers/:id(.:format)                   bloggers#update
#                  DELETE /bloggers/:id(.:format)                   bloggers#destroy
