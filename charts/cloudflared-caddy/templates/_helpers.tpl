{{- define "cloudflared-caddy.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cloudflared-caddy.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "cloudflared-caddy.name" . -}}
{{- end -}}
{{- end -}}

{{- define "cloudflared-caddy.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "cloudflared-caddy.selectorLabelsCloudflared" -}}
app: {{ .Values.cloudflared.name }}
{{- end -}}
