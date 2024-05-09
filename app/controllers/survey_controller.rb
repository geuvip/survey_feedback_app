class SurveyController < ApplicationController
   skip_before_action :verify_authenticity_token, only: [:create_feedback] #token doğrulamasını geçici olarak devre dışı bıraktık!
    def show
        @survey = Survey.find_by(id: params[:id])
        if @survey.nil?
          render json: { error: "Survey not found" }, status: :not_found
        else
          render json: @survey, include: { questions: { include: :options } }
        end
      end
      
        #The purpose of this create_feedback method is to create
        #feedback for a survey. In a functional Web application, 
        #this method is typically called in response to an HTTP POST request.
        def create_feedback
          @survey = Survey.find(params[:id])
          @feedback = @survey.feedbacks.create
          params[:responses].each do |response_params|
            question_id = response_params[:question_id]
            option_id = response_params[:option_id]
            body = response_params[:body]
            @feedback.responses.create(question_id: question_id, option_id: option_id, body: body)
          end
          render json: @feedback
        end

        def home 
          render plain: 'No parameter'
        end
end
      