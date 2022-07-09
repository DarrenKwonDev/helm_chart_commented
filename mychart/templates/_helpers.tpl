# By convention, define functions should have a simple documentation block ({{/* ... */}}) describing what they do.
{{/* Generate basic labels */}}
# A popular naming convention is to prefix each defined template with the name of the chart
{{- define "mychart.labels" }} 
  labels:
    generator: helm
    date: {{ now | htmlDate }}
    chart: {{ .Chart.Name }} # 해당 템플릿을 호출하는 곳에서 호출 가능한 scope를 넘겨주어야만 값이 들어감.
    version: {{ .Chart.Version }}
{{- end }}
