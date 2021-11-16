{{/*
yggdrasil.helper.image-tag-finder
Will find the image matching the env and name given
*/}}
{{- define "helper.image-tag-finder" }}
{{- $ := .context }}
{{- $images := $.Files.Get "image-tags.yaml" | fromYaml}}
{{- $imageName := index $images .name }}
{{- $imageTag := index $imageName $.Values.nameSuffix }}
{{- default "<tag>" $imageTag | printf "%s" | quote }}
{{- end -}}

{{/*
yggdrasil.helper.image-tag-finder
Will find the image matching the env and name given
*/}}
{{- define "helper.guid-finder" }}
{{- $ := .context }}
{{- $guids := $.Values.guids }}
{{- $guids := $.Files.Get "guids.yaml" | fromYaml}}
{{- $guidName := index $guids .name }}
{{- $guid := index $guidName $.Values.nameSuffix }}
{{- default "<guid>" $guid | printf "%s" | quote }}
{{- end -}}
