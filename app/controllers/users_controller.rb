class UsersController < ApplicationController
  def show
    # Userモデルの特定のオブジェクトを取得
    @user = User.find(params[:id])
    # これがユーザーに紐づくプロトタイプを取得するコード
    @prototypes = @user.prototypes # これがユーザーに紐づくプロトタイプを取得するコード
  end
end
