# README

* Ruby version 7.1 <br>


 GET <code color="green">/survey/:id </code> must show survey details. <br>
  
 POST <code>/survey/:id</code> must create new Feedback from survey questions.

 <b>You can use docker to start the project.</b> <br>
You can use the following command to start the project. <p> <code>docker-compose up -d</code></p>
<br>

<h4>Example POST Method using</h4><br>
<p>POST => JSON <br> http://localhost:3000/survey/1</p><br> 
<p>The response POST request below will be sent for id number 1 at this address. POST /survey/:id must create new Feedback from survey questions.</p> <br>
<a>
  <code>
{
    "responses": [
        {
            "question_id": 1,
            "option_id": 1,
            "body": "My answer for feedback is a sample answer"
        }
    ]
}
  </code>
</a>
