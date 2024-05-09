# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create surveys


# 1. Anket (Survey) Oluşturma
survey = Survey.create(name: "Customer Satisfaction Survey")

# 2. Soruları (Questions) Oluşturma
question1 = survey.questions.create(title: "How was your experience with us today?", question_type: :choice)
question2 = survey.questions.create(title: "Please explain the reason for your choice", question_type: :text)

# 3. Seçenekleri (Options) Oluşturma
options = ["Very Good", "Good", "Neutral", "Bad", "Very Bad"]
options.each do |option_title|
  question1.options.create(title: option_title)
end

# 4. Geri Bildirimleri (Feedbacks) Oluşturma
feedback = survey.feedbacks.create

# 5. Cevapları (Responses) Oluşturma
question1_options = question1.options
feedback.responses.create(question_id: question1.id, option_id: question1_options.first.id)
feedback.responses.create(question_id: question2.id, body: "I had a great experience.")



