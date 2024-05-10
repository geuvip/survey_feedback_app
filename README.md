# README
<h4>Using</h4>
* Rails version 7.1 <br>
* PostgreSQL <br> <br>
* Docker <br> <br>

 
 <b>You can use docker to start the project.</b> <br>
<b>Step 1</b> You can use the following command to build the project. <p> <code>docker-compose build</code></p> <br>
<b>Step 2</b> use the following command to start the project. <p> <code>docker-compose up</code></p> <br>

<h4>How to use ?</h4><br>
GET <code color="green">/survey/:id </code> must show survey details. <br>
  
POST <code>/survey/:id</code> must create new Feedback from survey questions. <br><br><br>


<h4>Example POST Method using</h4><br>
<p>POST => JSON <br> http://localhost:3000/survey/1</p><br> 
<p>The response POST request below will be sent for id number 1 at this address. POST <b>/survey/1 </b> must create new Feedback from survey questions.</p> <br>
<a> 
 <h3>POST</h3>
 Choice style: <br>
  <code>
{
    "responses": [
        {
            "question_id": 1,
            "option_id": 1,
            
        }
    ]
}
  </code>
</a>  <br>
<h2>OR</h2><br>
Text style : <br>
<code >
 {
    "responses": [
        {
            "question_id": 1,
            "body": "Only text message feedback"
        }
    ]
}
</code>
