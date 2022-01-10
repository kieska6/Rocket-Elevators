Rocket Elevators foundation

https://apexrockets.xyz/

WEEK 13, Machine Learning

This week we've tested two azure services with their ups and downs. We've built some documentation about it in the deliverables that you can check.
To have access to the enroll audio file and the 10 test scenarios that we made for the Machine Learning services you can follow this path in the repo: lib/assets/audio_files/testSample/*.wav

If you don't have any key for the azure services, just ask to one of our team members and we will send it to you for testing purpose.

Thank You!

----------------------------------
WEEK 10, TDD AND SECURITY:
- elevator media test command: rspec spec/elevatormedia_spec.rb --format documentation
- user login test command: rspec spec/user_spec.rb --format documentation

SECURITY ASSESSMENT: https://docs.google.com/document/d/1aQTj7xwF3lTld2EKpGtH-w4Takq-6noR5OPngXXkj-g/view

----------------------------------

This week i added an intervention page and form to the website, with its respective header button, which only available to employees.
for testing an account that works is :

email : samael.tessier@gmail.com
password: codeboxx2021

The form, once submitted, sends a problem ticket to a zendesk account i have setup with all the parameters of the form.
At the moment this is not working in production, due to some ZenDesk side issues, we we're told by coaches that as long as its working in local for the moment, that it was okay.
Proof of this can be found in the explanation video: https://www.youtube.com/watch?v=n-RSdZJ-cQA

You can also try out the 3 new API Calls that i've created : 

By going to :https://apexrocketsrestful.herokuapp.com/swagger/
( the code for this is in another repository: https://github.com/SamaelTessier/FoundationRestful )

and going down to the interventions category, you will find :

a Get for PendingInterventions, which returns all interventions that are currently of status pending
a patch for InProgress, which changes the status of a pending intervention to in progress and adds a start time to the intervention
and a patch for Completed, which changes the status of an in progress intervention to Completed and adds an end time to the intervention

you can try each method with the try it out button, and then the excute button, although the patch requires you to select the appropriate intervention by inputting an ID before
clicking the execute button.

You could also use postman, for the GET method => https://apexrocketsrestful.herokuapp.com/api/Interventions/PendingInterventions
			    for the PATCH (inprogress) : https://apexrocketsrestful.herokuapp.com/api/Interventions/inprogress/{id} //change {id} for intervention you want
			    for the PATCH (completed) : https://apexrocketsrestful.herokuapp.com/api/Interventions/completed/{id} //change {id} for intervention you want
			    


- Samael Tessier
