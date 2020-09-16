hello-openshift
----------------------------

Fill in the missing information for each resource

Create the build

    oc apply -f build.yml

Retrieve the resulting image from the build and fill in the pod

    oc apply -f pod.yml

Fill in the service to target the pod

    oc apply -f svc.yml

Create a route that targets the service and exposes it to the outside world

    oc apply -f route.yml

Finally create a Deployment that wraps up the pod and lets you easily deploy updates and add more replicas

    oc apply -f deployment.yml