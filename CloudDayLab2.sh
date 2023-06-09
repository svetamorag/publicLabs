echo "Welcome to Lab 2 - Platform Engineering - Cloud Ops Interaction"
export PROJECT_ID=$(gcloud config get project)
gcloud logging write --payload-type=json lab_log '{ "message": "The lab was created with one VM and other default settings", "custom_message": "Hi there!","personal_type":"app_log"}' --severity=INFO                                 
gcloud logging write --payload-type=json lab_log '{ "message": "All messages from this lab will be placed in the same log", "custom_message": "This is the custom log entry for the lab","personal_type":"app_log"}' --severity=NOTICE                                 
gcloud logging write --payload-type=json lab_log '{ "message": "There is no log sink for this project", "custom_message": "Hidden number for the quest is: 589847","personal_type":"app_log"}' --severity=NOTICE                                 
gcloud logging write --payload-type=json lab_log '{ "message": "Please check the storage configuration for the application", "custom_message": "This is the custom log entry for the lab","personal_type":"app_log"}' --severity=ERROR                                 
