hello-openshift
----------------------------

Fill in the missing information for each resource

Create your own github repo based on this repo

Create the build See https://docs.openshift.com/container-platform/3.11/dev_guide/builds/index.html

    oc apply -f buildconfig.yml
    oc start-build hello-openshift
    oc get builds -w

Fill in the pod See https://kubernetes.io/docs/concepts/workloads/pods/

    oc apply -f pod.yml

Fill in the service to target the pod. See https://kubernetes.io/docs/concepts/services-networking/service/

    oc apply -f svc.yml

Create a route that targets the service and exposes it to the outside world See https://docs.openshift.com/container-platform/3.11/architecture/networking/routes.html#route-types

    oc apply -f route.yml

Finally create a Deployment that wraps up the pod and lets you easily deploy updates and add more replicas See https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

    oc delete pod hello-openshift
    oc apply -f deployment.yml