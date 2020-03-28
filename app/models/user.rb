class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :study
         has_many :favorites
         has_many :fav_study, through: :favorites, source: :study

        def like(study)
          favorites.find_or_create_by(study_id: study.id)
        end

        def unlike(study)
          favorite = favorites.find_by(study_id: study.id)
          favorite.destroy if favorite
        end
end
