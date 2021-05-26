push-dockerhub:
	docker tag terraform_dbp_learn_web:latest zipofar/terraform_dbp_learn:latest && docker push zipofar/terraform_dbp_learn:latest
