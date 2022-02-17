#!/bin/bash


new_client () {
        # Generates the custom client.ovpn
        {
        cat /etc/openvpn/server/client-common.txt
        echo "<ca>"
        cat /etc/openvpn/server/easy-rsa/pki/ca.crt
        echo "</ca>"
        echo "<cert>"
        sed -ne '/BEGIN CERTIFICATE/,$ p' /etc/openvpn/server/easy-rsa/pki/issued/"$user".crt
        echo "</cert>"
        echo "<key>"
        cat /etc/openvpn/server/easy-rsa/pki/private/"$user".key
        echo "</key>"
        echo "<tls-crypt>"
        sed -ne '/BEGIN OpenVPN Static key/,$ p' /etc/openvpn/server/tc.key
        echo "</tls-crypt>"
        } > ~/"$user".ovpn
}

                for (( i=1; i<=100; i++ ))
                do


                echo
                user=$(sed 's/[^0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-]/_/g' <<< "user$i")
                        while [[ -z "$user" || -e /etc/openvpn/server/easy-rsa/pki/issued/"$user".crt ]]; do
                                echo "$client: invalid name."
                                read -p "Name: " unsanitized_client
                                user=$(sed 's/[^0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-]/_/g' <<< "$unsanitized_client")
                        done
                        cd /etc/openvpn/server/easy-rsa/
                        EASYRSA_CERT_EXPIRE=3650 ./easyrsa build-client-full "$user" nopass
                        # Generates the custom user.ovpn
                        new_client
                        echo
                        echo "$client added. Configuration available in:" ~/"$user.ovpn"


                        done
                        exit
                        ;;
        echo "<ca>"
        cat /etc/openvpn/server/easy-rsa/pki/ca.crt
        echo "</ca>"
        echo "<cert>"
        sed -ne '/BEGIN CERTIFICATE/,$ p' /etc/openvpn/server/easy-rsa/pki/issued/"$user".crt
        echo "</cert>"
        echo "<key>"
        cat /etc/openvpn/server/easy-rsa/pki/private/"$user".key
        echo "</key>"
        echo "<tls-crypt>"
        sed -ne '/BEGIN OpenVPN Static key/,$ p' /etc/openvpn/server/tc.key
        echo "</tls-crypt>"
        } > ~/"$user".ovpn
}

                for (( i=1; i<=100; i++ ))
                do


                echo
                user=$(sed 's/[^0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-]/_/g' <<< "user$i")
                        while [[ -z "$user" || -e /etc/openvpn/server/easy-rsa/pki/issued/"$user".crt ]]; do
                                echo "$client: invalid name."
                                read -p "Name: " unsanitized_client
                                user=$(sed 's/[^0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-]/_/g' <<< "$unsanitized_client")
                        done
                        cd /etc/openvpn/server/easy-rsa/
                        EASYRSA_CERT_EXPIRE=3650 ./easyrsa build-client-full "$user" nopass
                        # Generates the custom user.ovpn
                        new_client
                        echo
                        echo "$client added. Configuration available in:" ~/"$user.ovpn"


                        done
                        exit
                        ;;
