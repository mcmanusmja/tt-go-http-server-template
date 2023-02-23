# GENERIC GO HTTP SERVER PROJECT STRUCTURE 

## Purpose

### Background

This is just a useful template from which to build a web server application in Go suitable for APIs, web content etc.
It uses the Julien Schmidt router which is simple and fast.

### Specifics

The file cloudbuild.yaml is of course specific to GCP. It requires customization for your environment but has build steps for those using VPCs.
Maintain the Go versions as you see fit.
I recommend setting a trigger in Cloud Build which relies on a Github webhook fired from new release or other event (e.g. push to branch).
Mostly I use a tag based on a regex that represents the latest release, e.g. v0.0.1-some-comment. 

