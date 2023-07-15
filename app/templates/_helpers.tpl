{{/*
Generic labels for each Kubernetes resource
*/}}
{{- define "app.labels" -}}
app.kubernetes.io/name: {{ .Values.app.name }}
app.kubernetes.io/version: {{ .Release.Name }}-{{ .Release.Revision }}
app: {{ include "app.fullName" . }}
group: {{ .Values.app.group }}
{{- end }}

{{- define "app.fullName" -}}
{{- default .Release.Name .Values.app.name | trunc 63 | trimSuffix "-" }}
{{- end }}
