#!/bin/bash
set -x
for i in $(cat /home/_jcorrea/hosts_vcloud.txt); do
 echo "$i"
ssh root@$i "cd /root/.ssh ; echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDZQp71IG1zpQ84JpN6UPh/unCg528Ek0W65ON/B+3DL+CSL06sXz+9/1sGrVYPW/OiLHn6hmPBzPeCXAFFkwLQPL3fKMBJY622ca+WySTZVZk9HCcYodgKUB5zBZbbLNzeHKFROSxR0wXpAAmMmDmN5iTtSS7y2Qf6KfR6OzAzVq/WY9tdAJ541QKoVkIi8z1UFCLDjCq01DULYLkSIwBh9shBHDWPoLgRQoKubM/JWVLwB+LGYVi1t1c3JhBLfTQ6rRTmUkXfwD8/xWrdjeEsitamCQJKUMP+egp5dhoRQf5nkcP6OThJdG63G6PEb4ziwH+cz62zinsB1/2RJcaf82ZEJ+Y6XB+xyDcuWqRB+58RHPDT0d4TmbNLxbvf6vyWo/8xEQiIdok6gdXD9kcD2ocU1vWhwtvxcraUM6XUTwAwm4JuD5HXCdW1F3b0/a1w7ac4gjZ3IFpv2oYZzJhVP51zBOd5t0zQUTSIEQQOxr0SzOmGrJlifRCUGGQLYtrgrYzsGbP/W2V8y3ehw2VTXCdGZFvkPf04M35p/2T9WWJ2h+Acpau3DdUl/NI3mclXzbY88Y4Fyuc6mmuTlzkigRANhU+6HoiXEcZ6SQJ6LoS1ge5FnuR20o2aEPS+AlouRq87hdKrzEnvy/9WKkwvdv7pHFQ3F/PTyur3Ngm2hw== root@crash0001' >> authorized_keys ; chmod 644 authorized_keys"
echo "Servidor atualizado $i " >> lista-atualizada
done
