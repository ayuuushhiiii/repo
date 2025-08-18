output "public_ip_address"{
    value=aws_instance.server_tf.public_ip
}