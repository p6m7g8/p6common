#!/bin/sh

######################################################################
#<
#
# Function:
#	p6_openssl__debug()
#
#>
######################################################################
p6_openssl__debug() {
    local msg="$1"

    p6_debug "p6_openssl: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_openssl_req_509(key_file, crt_file, cert_exp, cert_subject)
#
#  Args:
#	key_file - 
#	crt_file - 
#	cert_exp - 
#	cert_subject - 
#
#>
######################################################################
p6_openssl_req_509() {
    local key_file="$1"
    local crt_file="$2"
    local cert_exp="$3"
    local cert_subject="$4"

    p6_run_read_cmd openssl req -new -x509 -key $key_file -out $crt_file -days $cert_exp -subj $cert_subject

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_openssl_genrsa(key_file, cert_bits)
#
#  Args:
#	key_file - 
#	cert_bits - 
#
#>
######################################################################
p6_openssl_genrsa() {
    local key_file="$1"
    local cert_bits="$2"

    p6_run_read_cmd openssl genrsa -out $key_file $cert_bits

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_openssl_sha1()
#
#>
######################################################################
p6_openssl_sha1() {

    p6_run_read_cmd openssl dgst -sha1

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_openssl_sha256()
#
#>
######################################################################
p6_openssl_sha256() {

    p6_run_read_cmd openssl dgst -sha256

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_openssl_b64()
#
#>
######################################################################
p6_openssl_b64() {

    p6_run_read_cmd openssl enc -base64

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_openssl_b64_d()
#
#>
######################################################################
p6_openssl_b64_d() {

    p6_run_read_cmd openssl enc -base64 -d

    p6_return_void
}