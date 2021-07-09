{{/*
Expand the name of the chart.
*/}}
{{- define "nextcloud.name" -}}
{{- default .Chart.Name .Values.nextcloud.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nextcloud.fullname" -}}
{{- if .Values.nextcloud.fullnameOverride }}
{{- .Values.nextcloud.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nextcloud.nameOverride }}
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
{{- define "nextcloud.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "nextcloud.labels" -}}
helm.sh/chart: {{ include "nextcloud.chart" . }}
{{ include "nextcloud.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "nextcloud.redis.labels" -}}
helm.sh/chart: {{ include "nextcloud.chart" . }}
{{ include "nextcloud.redis.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "nextcloud.postgres.labels" -}}
helm.sh/chart: {{ include "nextcloud.chart" . }}
{{ include "nextcloud.postgres.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "nextcloud.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nextcloud.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "nextcloud.redis.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-redis
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "nextcloud.postgres.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-postgres
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Get the password secret.
*/}}
{{- define "nextcloud.secretName" -}}
{{- if .Values.nextcloud.existingSecret -}}
    {{- printf "%s" (tpl .Values.existingSecret $) -}}
{{- else -}}
    {{- printf "%s" (.Release.Name ) -}}
{{- end -}}
{{- end -}}

{{/*
Return true if we should use an existingSecret.
*/}}
{{- define "nextcloud.useExistingSecret" -}}
{{- if .Values.nextcloud.existingSecret -}}
    {{- true -}}
{{- end -}}
{{- end -}}

{{/*
Return true if a secret object should be created
*/}}
{{- define "nextcloud.createSecret" -}}
{{- if not (include "nextcloud.useExistingSecret" .) -}}
    {{- true -}}
{{- end -}}
{{- end -}}

