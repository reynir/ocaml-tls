open Core

type own_cert = Certificate.certificate * Nocrypto.RSA.priv

(* some config parameters *)
type config = {
  ciphers                 : Ciphersuite.ciphersuite list ;
  protocol_versions       : tls_version * tls_version ;
  hashes                  : Ciphersuite.hash_algorithm list ;
  (* signatures              : Packet.signature_algorithm_type list ; *)
  use_rekeying            : bool ;
  require_secure_rekeying : bool ;
  validator               : X509.Validator.t option ;
  peer_name               : string option ;
  own_certificate         : own_cert option ;
}

val default_config : config
