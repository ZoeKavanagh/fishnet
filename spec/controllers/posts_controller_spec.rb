require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  let(:user) { create(:user) }
  let(:new_post) { create(:post_1, 'user' => user) }
  let(:valid_attributes) { {content: "fish", user: @user} }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  before(:each) do
    @post = create(:post_1, 'user' => user)
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}, session: valid_session
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: {id: @post.id}, session: valid_session
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      get :edit, params: {id: @post.id}, session: valid_session
      expect(response).to have_http_status(200)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Post" do
        expect {
          post :create, params: { post: valid_attributes }, session: valid_session
        }.to change(Post, :count).by(1)
      end

      it "redirects to the created post" do
        post :create, params: {post: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Post.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {post: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_content) { "fish are great!" }
      let(:new_attributes) { {content: new_content, user: @user} }

      it "updates the requested post" do
        put :update, params: {id: @post.id, post: new_attributes}, session: valid_session
        expect(@post.reload.content).to eq(new_content)
      end

      it "redirects to the post" do
        put :update, params: {id: @post.id, post: valid_attributes}, session: valid_session
        expect(response).to redirect_to(@post)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, params: {id: @post.id, post: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested post" do
      expect {
        delete :destroy, params: {id: @post.id}, session: valid_session
      }.to change(Post, :count).by(-1)
    end

    it "redirects to the posts list" do
      delete :destroy, params: {id: @post.id}, session: valid_session
      expect(response).to redirect_to(posts_url)
    end
  end

end
