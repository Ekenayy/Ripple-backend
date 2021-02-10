require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Challenge.destroy_all
Task.destroy_all
TaskChallenge.destroy_all

# t.string :name
#       t.string :email
#       t.string :bio
#       t.string :picture

#Making Users

User.create(
    name: "Lhamo Thondup",
    email: "thelama@gmail.com", 
    bio: "Give the ones you love wings to fly, roots to come back, and reasons to stay",
    picture: "https://api.time.com/wp-content/uploads/2014/02/dalai_lama_0041tpk_s.jpg?w=600&quality=85"
)

User.create(
    name: "Sir Desmond Tutu",
    email: "tutu@gmail.com", 
    bio: "My humanity is bound up in yours, for we can only be human together.",
    picture: "https://www.churchtimes.co.uk/media/5642040/pa-24900785.jpg?center=0.35810810810810811,0.46187363834422657&mode=crop&width=818&height=500&rnd=131637799000000000"
)

User.create(
    name: "Thich Nhat Hanh",
    email: "hanh@gmail.com",
    bio: "There is no way to happiness - happiness is the way.", 
    picture: "https://www.lionsroar.com/wp-content/uploads/2018/10/tnh-profile-main.jpg"
)

User.create(
    name: "Ekene Nkem-Mmekam",
    email: 'ekenayy@gmail.com',
    bio: "Ripple baby!",
    picture: "https://miro.medium.com/fit/c/262/262/1*aoZai5bRkjOVB0XST5DrTA.jpeg"
)

16.times do 
    user = User.create(
        name: Faker::Name.name, 
        email: Faker::Internet.email,
        picture: Faker::Placeholdit.image(size: '50x50', format: 'jpg'), 
        bio: Faker::Quote.famous_last_words)
end 

#Making tasks
t1 = Task.create(description: "Hug your grandmother")
t2 = Task.create(description: "Put a positive note somewhere around town")
t3 = Task.create(description: "Spend 10 minutes doing something you love")
t4 = Task.create(description: "Call someone you love and tell them how much they mean to you")
t5 = Task.create(description: "Leave extra quarters at the laundromat")
t6 = Task.create(description: "Call a far-away relative and wish them well.")
t7 = Task.create(description: "Make a personalized playlist for a family member or friend.")
t8 = Task.create(description: "Donate clothing and books you don't need.")
t9 = Task.create(description: "Volunteer at an animal shelter, soup kitchen, or nursing home.")
t10 = Task.create(description: "Recite the Heart Sutra")
t11 = Task.create(description: "Pick up any trash that you see.")
t12 = Task.create(description: "Pay for the order of the person behind you in line.")

#Making Challenges 

# t.string :name
#       t.string :description
#       t.string :video_url
#       t.string :photo_url
#       t.string :genre
#       user_id
      
Challenge.create(
    name: "Radical Compassion",
    description: "Practice empathy with this challenge",
    genre: "Compassion and Empathy",
    video_url: "https://www.youtube.com/watch?v=20MnLcOL7Ks&ab_channel=Stanford",
    photo_url: "https://media.npr.org/assets/img/2018/12/24/hidden-brain-compassion-52c0067fff50ed27bf8a02ff0c13996111db67cf.jpeg",
    user_id: User.all.first.id
)

Challenge.create(
    name: "Forgive Yourself to Forgive Others",
    description: "Practice forgiveness with this challenge",
    genre: "Forgiveness",
    video_url: "https://www.youtube.com/watch?v=uo2LGGqtjqM&ab_channel=DesmondTutuPeaceFoundation",
    photo_url: "https://news.continuingstudies.wisc.edu/wp-content/uploads/photo_getty_forgiveness.jpg",
    user_id: User.all.second.id
)

Challenge.create(
    name: "Self care",
    description: "Practice self care with this challenge",
    genre: "Self care",
    video_url: "https://www.youtube.com/watch?v=gMoRtJhVoxc",
    photo_url: "https://static.onecms.io/wp-content/uploads/sites/23/2019/07/16/selfcare.jpg",
    user_id: User.all.third.id
)

#Making Task_challenges

def make_TC

    Challenge.all.each do |challenge|
        3.times do 
            TaskChallenge.create(
                task_id: Task.all.sample.id, 
                challenge_id: challenge.id
                )
        end 
    end 

end 

make_TC

# debugger 
