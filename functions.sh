# General functions
getos() {
    if [ "$(uname)" == "Darwin" ]
  then uname
  else hostnamectl | grep -Po "^Operating System: \K[^<]+"
  fi
}

# Docker functions
dbash(){
  docker exec -it $1 bash
}

di() {
  case $1 in
    env)   docker inspect --format '{{range .Config.Env}} {{printf "%s\n" .}} {{end}}' $2 | sort ;;
    ip)    docker inspect --format '{{range.NetworkSettings.Networks}} {{.IPAddress}} {{end}}' $2 ;;
    ports) docker inspect --format '{{range $p,$i := .NetworkSettings.Ports}} {{$p}} -> {{(index $i 0).HostPort}} {{end}}' $2 ;;
    mount) docker inspect --format '{{.Name}} {{.Options.o}}:{{.Options.device}}' $2 ;;
    *) ;;
  esac
}

# Terraform functions
tf(){
  case $1 in
    apply)   terraform apply -auto-approve ;;
    destroy) terraform destroy -auto-approve ;;
    *)       terraform $1 ;;
  esac
}
