{{/*
Expand the name of the chart.
*/}}
{{- define "local-path.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
- If nameOverride provided by values, use it instead of chart name, as name
---
- If fullnameOverride provided by values, use it
- Otherwise if release name contains name, use release name
- Otherwise use: releaseName-name
*/}}
{{- define "local-path.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "local-path.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "local-path.labels" -}}
helm.sh/chart: {{ include "local-path.chart" . }}
{{ include "local-path.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "local-path.selectorLabels" -}}
app.kubernetes.io/name: {{ include "local-path.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "local-path.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- $serviceAccountName := default (include "local-path.name" .) .Values.serviceAccount.nameOverride }}
{{- printf "%s-service-account" $serviceAccountName | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- default "default" .Values.serviceAccount.nameOverride }}
{{- end }}
{{- end }}

{{/*
Create the name of the storage class provisioner, use override or rancher default
*/}}
{{- define "local-path.provisionerName" -}}
{{- if .Values.deployement.provisionerNameOverride -}}
{{- printf .Values.deployement.provisionerNameOverride -}}
{{- else }}
{{- printf "rancher.io/local-path" -}}
{{- end }}
{{- end }}
