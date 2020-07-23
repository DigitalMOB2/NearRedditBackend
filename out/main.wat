(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_i64_=>_none (func (param i64 i64)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_i64_i64_=>_i64 (func (param i64 i64 i64) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i64_i64_i64_=>_none (func (param i32 i64 i64 i64 i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "input" (func $node_modules/near-sdk-as/assembly/runtime/env/imports/env.input (param i64)))
 (import "env" "register_len" (func $node_modules/near-sdk-as/assembly/runtime/env/imports/env.register_len (param i64) (result i64)))
 (import "env" "panic" (func $node_modules/near-sdk-as/assembly/runtime/env/imports/env.panic))
 (import "env" "read_register" (func $node_modules/near-sdk-as/assembly/runtime/env/imports/env.read_register (param i64 i64)))
 (import "env" "log_utf8" (func $~lib/near-sdk-as/runtime/env/imports/env.log_utf8 (param i64 i64)))
 (import "env" "storage_read" (func $~lib/near-sdk-as/runtime/env/imports/env.storage_read (param i64 i64 i64) (result i64)))
 (import "env" "register_len" (func $~lib/near-sdk-as/runtime/env/imports/env.register_len (param i64) (result i64)))
 (import "env" "read_register" (func $~lib/near-sdk-as/runtime/env/imports/env.read_register (param i64 i64)))
 (import "env" "storage_write" (func $~lib/near-sdk-as/runtime/env/imports/env.storage_write (param i64 i64 i64 i64 i64) (result i64)))
 (import "env" "signer_account_id" (func $~lib/near-sdk-as/runtime/env/imports/env.signer_account_id (param i64)))
 (import "env" "value_return" (func $node_modules/near-sdk-as/assembly/runtime/env/imports/env.value_return (param i64 i64)))
 (import "env" "storage_remove" (func $~lib/near-sdk-as/runtime/env/imports/env.storage_remove (param i64 i64 i64) (result i64)))
 (import "env" "storage_has_key" (func $~lib/near-sdk-as/runtime/env/imports/env.storage_has_key (param i64 i64) (result i64)))
 (memory $0 1)
 (data (i32.const 16) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 48) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 80) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 112) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 144) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00b\00l\00o\00c\00k\00_\00i\00n\00d\00e\00x\00_\00s\00e\00e\00d\00e\00d\00_\00a\00t\00")
 (data (i32.const 208) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00k\00e\00y\00")
 (data (i32.const 272) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00i\00n\00d\00e\00x\00_\00k\00e\00y\00")
 (data (i32.const 336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 368) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 512) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 560) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 592) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 608) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00:\00")
 (data (i32.const 640) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00:\00")
 (data (i32.const 672) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00c\00:\00")
 (data (i32.const 704) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00m\00:\00")
 (data (i32.const 736) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 768) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 800) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 848) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 912) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 1008) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1072) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1136) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 1200) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 1232) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1280) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 1328) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1440) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s\00")
 (data (i32.const 1520) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 1552) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1584) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 1632) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1664) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 1744) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 1824) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1872) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1904) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 1936) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 1968) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 2000) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 2032) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 2064) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 2096) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 2128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 2160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 2192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 2224) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 2288) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 2368) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2400) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 2448) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 2512) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 2560) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 2592) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 2624) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 2688) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 2736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 2768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 2800) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 2864) "X\00\00\00\01\00\00\00\01\00\00\00X\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00b\00i\00n\00d\00g\00e\00n\00.\00t\00s\00")
 (data (i32.const 2976) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00i\00n\00i\00t\00i\00a\00l\00O\00w\00n\00e\00r\00")
 (data (i32.const 3024) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 3088) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 3136) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00t\00y\00p\00e\00 \00")
 (data (i32.const 3168) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 3200) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 3248) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00:\00 \00")
 (data (i32.const 3280) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 3328) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 3376) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 \00")
 (data (i32.const 3424) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 3488) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00o\00t\00a\00l\00S\00u\00p\00p\00l\00y\00")
 (data (i32.const 3536) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00u\001\002\008\00")
 (data (i32.const 3568) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x\00")
 (data (i32.const 3616) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s\00")
 (data (i32.const 3680) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 3776) "\10\00\00\00\01\00\00\00\1d\00\00\00\10\00\00\00p\0e\00\00p\0e\00\00K\00\00\00K\00\00\00")
 (data (i32.const 3808) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00i\00n\00i\00t\00i\00a\00l\00O\00w\00n\00e\00r\00:\00 \00")
 (data (i32.const 3856) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00i\00n\00i\00t\00")
 (data (i32.const 3888) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00a\00s\00/\00r\00u\00n\00t\00i\00m\00e\00/\00s\00t\00o\00r\00a\00g\00e\00.\00t\00s\00")
 (data (i32.const 3984) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00A\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d\00 \00t\00o\00k\00e\00n\00 \00s\00u\00p\00p\00l\00y\00")
 (data (i32.const 4064) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00a\00i\00n\00.\00t\00s\00")
 (data (i32.const 4112) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 4208) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 4240) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 4272) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 4304) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 4336) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 4368) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 4400) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 4496) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 4528) "\90\01\00\00\01\00\00\00 \00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 4944) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 5040) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 5120) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 5168) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00o\00w\00n\00e\00r\00")
 (data (i32.const 5200) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00d\00o\00n\00e\00")
 (data (i32.const 5232) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00o\00d\00e\00r\00a\00t\00o\00r\00")
 (data (i32.const 5280) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00a\00s\00/\00r\00u\00n\00t\00i\00m\00e\00/\00c\00o\00n\00t\00r\00a\00c\00t\00.\00t\00s\00")
 (data (i32.const 5376) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00T\00h\00i\00s\00 \00a\00c\00c\00o\00u\00n\00t\00 \00c\00a\00n\00 \00n\00o\00t\00 \00a\00d\00d\00 \00m\00o\00d\00e\00r\00a\00t\00o\00r\00s\00")
 (data (i32.const 5472) "L\00\00\00\01\00\00\00\01\00\00\00L\00\00\00T\00h\00i\00s\00 \00a\00c\00c\00o\00u\00n\00t\00 \00c\00a\00n\00 \00n\00o\00t\00 \00r\00e\00m\00o\00v\00e\00 \00m\00o\00d\00e\00r\00a\00t\00o\00r\00s\00")
 (data (i32.const 5568) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00 \00\'\00")
 (data (i32.const 5600) ">\00\00\00\01\00\00\00\01\00\00\00>\00\00\00\'\00 \00i\00s\00 \00n\00o\00t\00 \00p\00r\00e\00s\00e\00n\00t\00 \00i\00n\00 \00t\00h\00e\00 \00s\00t\00o\00r\00a\00g\00e\00")
 (data (i32.const 5680) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00o\00k\00e\00n\00O\00w\00n\00e\00r\00")
 (data (i32.const 5728) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00b\00a\00l\00a\00n\00c\00e\00O\00f\00:\00 \00")
 (data (i32.const 5776) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00s\00p\00e\00n\00d\00e\00r\00")
 (data (i32.const 5808) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00t\00o\00")
 (data (i32.const 5840) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00t\00o\00k\00e\00n\00s\00")
 (data (i32.const 5872) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00 \00f\00r\00o\00m\00:\00 \00")
 (data (i32.const 5920) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00 \00t\00o\00:\00 \00")
 (data (i32.const 5952) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00 \00t\00o\00k\00e\00n\00s\00:\00 \00")
 (data (i32.const 6000) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00n\00o\00t\00 \00e\00n\00o\00u\00g\00h\00 \00t\00o\00k\00e\00n\00s\00 \00o\00n\00 \00a\00c\00c\00o\00u\00n\00t\00")
 (data (i32.const 6080) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00 \00a\00t\00 \00t\00h\00e\00 \00r\00e\00c\00e\00i\00v\00e\00r\00 \00s\00i\00d\00e\00")
 (data (i32.const 6160) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00a\00p\00p\00r\00o\00v\00e\00:\00 \00")
 (data (i32.const 6208) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00r\00o\00m\00")
 (data (i32.const 6240) "L\00\00\00\01\00\00\00\01\00\00\00L\00\00\00n\00o\00t\00 \00e\00n\00o\00u\00g\00h\00 \00t\00o\00k\00e\00n\00s\00 \00a\00p\00p\00r\00o\00v\00e\00d\00 \00t\00o\00 \00t\00r\00a\00n\00s\00f\00e\00r\00")
 (data (i32.const 6336) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00b\00u\00r\00n\00 \00f\00r\00o\00m\00 \00b\00a\00l\00a\00n\00c\00e\00:\00 \00")
 (data (i32.const 6400) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00 \00a\00m\00o\00u\00n\00t\00 \00t\00o\00 \00b\00u\00r\00n\00:\00 \00")
 (data (i32.const 6464) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00 \00f\00r\00o\00m\00 \00a\00c\00c\00o\00u\00n\00t\00:\00 \00")
 (data (i32.const 6512) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00n\00o\00t\00 \00e\00n\00o\00u\00g\00h\00 \00t\00o\00k\00e\00n\00s\00 \00t\00o\00 \00b\00u\00r\00n\00")
 (data (i32.const 6592) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00T\00h\00i\00s\00 \00a\00c\00c\00o\00u\00n\00t\00 \00c\00a\00n\00 \00n\00o\00t\00 \00m\00i\00n\00t\00 \00t\00o\00k\00e\00n\00s\00")
 (data (i32.const 6672) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00m\00o\00u\00n\00t\00 \00t\00o\00 \00m\00i\00n\00t\00:\00 \00")
 (data (i32.const 6720) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00n\00e\00w\00O\00w\00n\00e\00r\00")
 (data (i32.const 6752) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00T\00h\00i\00s\00 \00a\00c\00c\00o\00u\00n\00t\00 \00c\00a\00n\00 \00n\00o\00t\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00m\00e\00t\00h\00o\00d\00")
 (data (i32.const 6848) "\"\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\0d\00\00\00\10\00\00\00\00\00\00\00\98 A\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\0d\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\0d\00\00\00\10\00\00\00\0d\00\00\00\10\00\00\00\0d\00\00\00\10\00\00\00\0d\00\00\003\00\00\00\02\00\00\00\10\00\00\00\1f\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/near-sdk-as/runtime/storage/storage (mut i32) (i32.const 0))
 (global $~lib/near-sdk-as/runtime/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 32))
 (global $~lib/near-sdk-as/runtime/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 64))
 (global $~lib/near-sdk-as/runtime/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 96))
 (global $~lib/near-sdk-as/runtime/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 128))
 (global $~lib/near-sdk-as/runtime/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $~lib/near-sdk-as/runtime/math/math._BLOCK_INDEX_SEED_AT_KEY i32 (i32.const 160))
 (global $~lib/near-sdk-as/runtime/math/math._RANDOM_BUFFER_KEY i32 (i32.const 224))
 (global $~lib/near-sdk-as/runtime/math/math._RANDOM_BUFFER_INDEX_KEY i32 (i32.const 288))
 (global $~lib/near-sdk-as/runtime/contract/context (mut i32) (i32.const 0))
 (global $~lib/near-sdk-as/runtime/base64/base64.PADCHAR i32 (i32.const 352))
 (global $~lib/near-sdk-as/runtime/base64/base64.ALPHA i32 (i32.const 384))
 (global $~lib/as-bignum/utils/HEX_CHARS i32 (i32.const 528))
 (global $~lib/as-bignum/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $~lib/near-sdk-as/vm/outcome/NONE (mut i32) (i32.const 0))
 (global $~lib/near-sdk-as/vm/outcome/ValueID i32 (i32.const 8))
 (global $~lib/near-sdk-as/vm/outcome/ReceiptIndexID i32 (i32.const 9))
 (global $~lib/near-sdk-as/vm/outcome/NoneID i32 (i32.const 6))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/main/balances (mut i32) (i32.const 0))
 (global $assembly/main/approves (mut i32) (i32.const 0))
 (global $assembly/main/total_supply (mut i32) (i32.const 0))
 (global $assembly/main/moderators (mut i32) (i32.const 0))
 (global $node_modules/near-sdk-as/assembly/runtime/storage/storage (mut i32) (i32.const 0))
 (global $node_modules/near-sdk-as/assembly/runtime/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 32))
 (global $node_modules/near-sdk-as/assembly/runtime/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 64))
 (global $node_modules/near-sdk-as/assembly/runtime/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 96))
 (global $node_modules/near-sdk-as/assembly/runtime/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 128))
 (global $node_modules/near-sdk-as/assembly/runtime/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $node_modules/near-sdk-as/assembly/runtime/math/math._BLOCK_INDEX_SEED_AT_KEY i32 (i32.const 160))
 (global $node_modules/near-sdk-as/assembly/runtime/math/math._RANDOM_BUFFER_KEY i32 (i32.const 224))
 (global $node_modules/near-sdk-as/assembly/runtime/math/math._RANDOM_BUFFER_INDEX_KEY i32 (i32.const 288))
 (global $node_modules/near-sdk-as/assembly/runtime/contract/context (mut i32) (i32.const 0))
 (global $node_modules/near-sdk-as/assembly/runtime/base64/base64.PADCHAR i32 (i32.const 352))
 (global $node_modules/near-sdk-as/assembly/runtime/base64/base64.ALPHA i32 (i32.const 384))
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 752))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 784))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 576))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 i32 (i32.const 48))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 i32 (i32.const 57))
 (global $~lib/assemblyscript-json/decoder/CHAR_A i32 (i32.const 65))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER i32 (i32.const 97))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/as-bignum/utils/RadixCharsTable i32 (i32.const 3792))
 (global $~lib/as-bignum/integer/u128/HEX_CHARS i32 (i32.const 528))
 (global $~lib/rt/__rtti_base i32 (i32.const 6848))
 (global $~lib/heap/__heap_base i32 (i32.const 7124))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (export "init" (func $assembly/main/__wrapper_init))
 (export "addModerator" (func $assembly/main/__wrapper_addModerator))
 (export "removeModerator" (func $assembly/main/__wrapper_removeModerator))
 (export "totalSupply" (func $assembly/main/__wrapper_totalSupply))
 (export "balanceOf" (func $assembly/main/__wrapper_balanceOf))
 (export "allowance" (func $assembly/main/__wrapper_allowance))
 (export "transfer" (func $assembly/main/__wrapper_transfer))
 (export "approve" (func $assembly/main/__wrapper_approve))
 (export "transferFrom" (func $assembly/main/__wrapper_transferFrom))
 (export "burn" (func $assembly/main/__wrapper_burn))
 (export "mint" (func $assembly/main/__wrapper_mint))
 (export "transferOwnership" (func $assembly/main/__wrapper_transferOwnership))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 14 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 15 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 16 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#constructor (; 17 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/near-sdk-as/runtime/storage (; 18 ;)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $~lib/near-sdk-as/runtime/storage/Storage#constructor
  global.set $~lib/near-sdk-as/runtime/storage/storage
 )
 (func $~lib/near-sdk-as/runtime/contract/Context#constructor (; 19 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/near-sdk-as/runtime/contract (; 20 ;)
  i32.const 0
  call $~lib/near-sdk-as/runtime/contract/Context#constructor
  global.set $~lib/near-sdk-as/runtime/contract/context
 )
 (func $start:~lib/near-sdk-as/runtime/index (; 21 ;)
  call $start:~lib/near-sdk-as/runtime/storage
  call $start:~lib/near-sdk-as/runtime/contract
 )
 (func $~lib/near-sdk-as/vm/outcome/ReturnData#constructor (; 22 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/near-sdk-as/vm/outcome/None#constructor (; 23 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/near-sdk-as/vm/outcome/ReturnData#constructor
  local.set $0
  local.get $0
 )
 (func $start:~lib/near-sdk-as/vm/outcome (; 24 ;)
  i32.const 0
  call $~lib/near-sdk-as/vm/outcome/None#constructor
  global.set $~lib/near-sdk-as/vm/outcome/NONE
 )
 (func $start:~lib/near-sdk-as/vm/vm (; 25 ;)
  call $start:~lib/near-sdk-as/vm/outcome
 )
 (func $start:~lib/near-sdk-as/vm/index (; 26 ;)
  call $start:~lib/near-sdk-as/vm/vm
 )
 (func $start:~lib/near-sdk-as/index (; 27 ;)
  call $start:~lib/near-sdk-as/runtime/index
  call $start:~lib/near-sdk-as/vm/index
 )
 (func $~lib/rt/stub/__release (; 28 ;) (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (; 29 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/memory/memcpy (; 30 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 31 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/string/String#concat (; 32 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 576
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 608
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 33 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.const 576
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#constructor (; 34 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 10
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $3
  local.get $1
  global.get $~lib/near-sdk-as/runtime/collections/index/collections._KEY_ELEMENT_SUFFIX
  call $~lib/string/String.__concat
  local.tee $2
  local.tee $4
  local.get $3
  i32.load
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $5
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.store
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#constructor (; 35 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 11
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $3
  local.get $1
  global.get $~lib/near-sdk-as/runtime/collections/index/collections._KEY_ELEMENT_SUFFIX
  call $~lib/string/String.__concat
  local.tee $2
  local.tee $4
  local.get $3
  i32.load
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $5
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.store
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $start:assembly/main (; 36 ;)
  call $start:~lib/near-sdk-as/index
  i32.const 0
  i32.const 624
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#constructor
  global.set $assembly/main/balances
  i32.const 0
  i32.const 656
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#constructor
  global.set $assembly/main/approves
  i32.const 0
  i32.const 688
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#constructor
  global.set $assembly/main/total_supply
  i32.const 0
  i32.const 720
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#constructor
  global.set $assembly/main/moderators
 )
 (func $node_modules/near-sdk-as/assembly/runtime/storage/Storage#constructor (; 37 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 16
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:node_modules/near-sdk-as/assembly/runtime/storage (; 38 ;)
  i32.const 0
  call $node_modules/near-sdk-as/assembly/runtime/storage/Storage#constructor
  global.set $node_modules/near-sdk-as/assembly/runtime/storage/storage
 )
 (func $node_modules/near-sdk-as/assembly/runtime/contract/Context#constructor (; 39 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 17
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:node_modules/near-sdk-as/assembly/runtime/contract (; 40 ;)
  i32.const 0
  call $node_modules/near-sdk-as/assembly/runtime/contract/Context#constructor
  global.set $node_modules/near-sdk-as/assembly/runtime/contract/context
 )
 (func $start:node_modules/near-sdk-as/assembly/runtime/index (; 41 ;)
  call $start:node_modules/near-sdk-as/assembly/runtime/storage
  call $start:node_modules/near-sdk-as/assembly/runtime/contract
 )
 (func $~lib/memory/memory.fill (; 42 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $9
    local.get $9
    if
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 43 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 816
   i32.const 864
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $6
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor (; 44 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 19
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#constructor (; 45 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 18
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  i32.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#constructor (; 46 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 20
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $start:~lib/assemblyscript-json/JSON (; 47 ;)
  i32.const 0
  call $~lib/assemblyscript-json/JSON/Handler#constructor
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  i32.const 0
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#constructor
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
 )
 (func $start:~lib/assemblyscript-json/index (; 48 ;)
  call $start:~lib/assemblyscript-json/JSON
 )
 (func $start:node_modules/near-sdk-as/assembly/bindgen (; 49 ;)
  call $start:node_modules/near-sdk-as/assembly/runtime/index
  call $start:~lib/assemblyscript-json/index
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/input (; 50 ;) (param $0 i64)
  local.get $0
  call $node_modules/near-sdk-as/assembly/runtime/env/imports/env.input
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/register_len (; 51 ;) (param $0 i64) (result i64)
  local.get $0
  call $node_modules/near-sdk-as/assembly/runtime/env/imports/env.register_len
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/panic (; 52 ;)
  call $node_modules/near-sdk-as/assembly/runtime/env/imports/env.panic
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 53 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 22
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/read_register (; 54 ;) (param $0 i64) (param $1 i64)
  local.get $0
  local.get $1
  call $node_modules/near-sdk-as/assembly/runtime/env/imports/env.read_register
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#set:state (; 55 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=4
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 56 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 21
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 608
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state (; 57 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 928
   i32.const 94
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 58 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Uint8Array#__get (; 59 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1024
   i32.const 1088
   i32.const 152
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (; 60 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  i32.load offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $2
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $3
  i32.load offset=8
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
  local.set $5
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#isWhitespace (; 61 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (; 62 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  i32.load offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $2
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 1152
   i32.const 928
   i32.const 120
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $3
  i32.load offset=8
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $6
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $4
  i32.load offset=4
  local.tee $5
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $5
  call $~lib/typedarray/Uint8Array#__get
  local.set $5
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (; 63 ;) (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#isWhitespace
   local.set $1
   local.get $1
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/string/String#charCodeAt (; 64 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value#constructor (; 65 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 13
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 66 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 816
   i32.const 864
   i32.const 54
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#clear (; 67 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#constructor (; 68 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 14
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#clear
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 69 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 15
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#constructor (; 70 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 12
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $2
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value.Object (; 71 ;) (result i32)
  i32.const 0
  call $~lib/assemblyscript-json/JSON/JSON.Obj#constructor
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length (; 72 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/rt/stub/__realloc (; 73 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.load
  local.set $3
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 46
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.add
  global.get $~lib/rt/stub/offset
  i32.eq
  local.set $4
  local.get $1
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $4
   if
    local.get $1
    i32.const 1073741808
    i32.gt_u
    if
     unreachable
    end
    local.get $0
    local.get $5
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $2
    local.get $5
    i32.store
   else
    local.get $5
    local.tee $6
    local.get $3
    i32.const 1
    i32.shl
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_u
    select
    local.get $2
    i32.load offset=8
    call $~lib/rt/stub/__alloc
    local.set $6
    local.get $6
    local.get $0
    local.get $2
    i32.load offset=12
    call $~lib/memory/memory.copy
    local.get $6
    local.tee $0
    i32.const 16
    i32.sub
    local.set $2
   end
  else
   local.get $4
   if
    local.get $0
    local.get $5
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $2
    local.get $5
    i32.store
   end
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/ensureSize (; 74 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 816
    i32.const 1248
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/stub/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push (; 75 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__unchecked_get (; 76 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get (; 77 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1024
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1344
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/JSON/Handler#get:peek (; 78 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
 )
 (func $~lib/rt/__instanceof (; 79 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.set $2
  global.get $~lib/rt/__rtti_base
  local.set $3
  local.get $2
  local.get $3
  i32.load
  i32.le_u
  if
   loop $do-continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    i32.const 4
    i32.add
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    local.set $4
    local.get $4
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/util/hash/hashStr (; 80 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const -2128831035
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    local.set $4
    local.get $4
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $1
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/util/string/compareImpl (; 81 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     local.set $10
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $10
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
  local.set $7
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $~lib/string/String.__eq (; 82 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find (; 83 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $5
     local.get $1
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has (; 84 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  i32.const 0
  i32.ne
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 85 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash (; 86 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i32)
      local.get $10
      i32.load
      call $~lib/rt/stub/__retain
      local.set $12
      local.get $12
      call $~lib/util/hash/hashStr
      local.set $13
      local.get $12
      call $~lib/rt/stub/__release
      local.get $13
      br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/stub/__retain
   local.set $12
   local.get $9
   call $~lib/rt/stub/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/stub/__retain
   local.set $9
   local.get $11
   call $~lib/rt/stub/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set (; 87 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $3
   call $~lib/util/hash/hashStr
   local.set $4
   local.get $3
   call $~lib/rt/stub/__release
   local.get $4
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.1
  end
  local.set $5
  local.get $0
  local.get $1
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.set $6
  local.get $6
  if
   local.get $6
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $6
    local.get $2
    call $~lib/rt/stub/__retain
    i32.store offset=4
    local.get $3
    call $~lib/rt/stub/__release
   end
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.set $6
   local.get $6
   local.get $1
   call $~lib/rt/stub/__retain
   i32.store
   local.get $6
   local.get $2
   call $~lib/rt/stub/__retain
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $5
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $4
   local.get $6
   local.get $4
   i32.load
   i32.store offset=8
   local.get $4
   local.get $6
   i32.store
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#_set (; 88 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $0
  i32.load
  local.get $1
  local.get $2
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#set<~lib/assemblyscript-json/JSON/JSON.Value> (; 89 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/JSON/JSON.Obj#_set
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  return
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#push (; 90 ;) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (; 91 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  i32.const 0
  i32.eq
  if (result i32)
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length
   i32.const 0
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   drop
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $3
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 12
   call $~lib/rt/__instanceof
  end
  if
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $4
   local.tee $5
   i32.const 12
   call $~lib/rt/__instanceof
   if (result i32)
    local.get $5
   else
    i32.const 0
    i32.const 1456
    i32.const 74
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/JSON/JSON.Obj#set<~lib/assemblyscript-json/JSON/JSON.Value>
   local.get $4
   call $~lib/rt/stub/__release
  else
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $4
   local.tee $5
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $5
    i32.const 23
    call $~lib/rt/__instanceof
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/JSON/Handler#get:peek
    local.tee $5
    local.tee $6
    i32.const 23
    call $~lib/rt/__instanceof
    if (result i32)
     local.get $6
    else
     i32.const 0
     i32.const 1456
     i32.const 77
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    call $~lib/assemblyscript-json/JSON/JSON.Arr#push
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/JSON/Handler#pushObject (; 92 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  call $~lib/assemblyscript-json/JSON/JSON.Value.Object
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $0
  i32.load
  local.get $2
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  drop
  i32.const 1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 93 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.getDataPtr (; 94 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.add
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 95 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $4
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 735
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $5
  local.get $5
  local.set $6
  block $while-break|0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.lt_u
    local.set $7
    local.get $7
    if
     local.get $3
     i32.load8_u
     local.set $8
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 128
     i32.and
     i32.eqz
     if
      local.get $2
      local.get $8
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $6
      local.get $8
      i32.store16
     else
      local.get $4
      local.get $3
      i32.eq
      if
       br $while-break|0
      end
      local.get $3
      i32.load8_u
      i32.const 63
      i32.and
      local.set $9
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      local.get $8
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $6
       local.get $8
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $9
       i32.or
       i32.store16
      else
       local.get $4
       local.get $3
       i32.eq
       if
        br $while-break|0
       end
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       local.set $10
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       local.get $8
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $8
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $9
        i32.const 6
        i32.shl
        i32.or
        local.get $10
        i32.or
        local.set $8
       else
        local.get $4
        local.get $3
        i32.eq
        if
         br $while-break|0
        end
        local.get $8
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $9
        i32.const 12
        i32.shl
        i32.or
        local.get $10
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.set $8
        local.get $3
        i32.const 1
        i32.add
        local.set $3
       end
       local.get $8
       i32.const 65536
       i32.lt_u
       if
        local.get $6
        local.get $8
        i32.store16
       else
        local.get $8
        i32.const 65536
        i32.sub
        local.set $8
        local.get $8
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.set $11
        local.get $8
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        local.set $12
        local.get $6
        local.get $11
        local.get $12
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $6
        i32.const 2
        i32.add
        local.set $6
       end
      end
     end
     local.get $6
     i32.const 2
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $6
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
  call $~lib/rt/stub/__retain
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.readString (; 96 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/assemblyscript-json/util/index/Buffer.getDataPtr
  local.get $1
  i32.add
  local.get $2
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString (; 97 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $2
  i32.const 1
  i32.sub
  call $~lib/assemblyscript-json/util/index/Buffer.readString
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 98 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/DecoderState#readString
 )
 (func $~setArgumentsLength (; 99 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 100 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/util/string/joinStringArray (; 101 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 608
   local.set $4
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $4
   if (result i32)
    local.get $4
    call $~lib/rt/stub/__retain
   else
    i32.const 608
   end
   local.set $4
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  i32.const 0
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $6
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $8
     local.get $9
     call $~lib/rt/stub/__release
    end
    local.get $8
    local.set $6
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $5
     local.get $6
     call $~lib/string/String#get:length
     i32.add
     local.set $5
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $10
  local.get $2
  call $~lib/string/String#get:length
  local.set $11
  local.get $5
  local.get $11
  local.get $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $12
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $3
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $9
    local.get $6
    local.tee $8
    i32.ne
    if
     local.get $9
     call $~lib/rt/stub/__retain
     local.set $9
     local.get $8
     call $~lib/rt/stub/__release
    end
    local.get $9
    local.set $6
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $6
     call $~lib/string/String#get:length
     local.set $9
     local.get $12
     local.get $10
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $9
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $10
     local.get $9
     i32.add
     local.set $10
    end
    local.get $11
    if
     local.get $12
     local.get $10
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $11
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $10
     local.get $11
     i32.add
     local.set $10
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $8
  local.get $6
  local.tee $4
  i32.ne
  if
   local.get $8
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $8
  local.set $6
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $12
   local.get $10
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $12
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $2
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 102 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $2
  local.get $3
  local.get $1
  call $~lib/util/string/joinStringArray
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $~lib/rt/__allocBuffer (; 103 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $~lib/rt/__allocArray (; 104 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/rt/__allocBuffer
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (; 105 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2240
   i32.const 928
   i32.const 277
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/string/String.fromCodePoint (; 106 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1114111
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 33
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 65535
  i32.gt_s
  local.set $1
  i32.const 2
  local.get $1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $1
  i32.eqz
  if
   local.get $2
   local.get $0
   i32.store16
  else
   local.get $0
   i32.const 65536
   i32.sub
   local.set $0
   local.get $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.or
   local.set $3
   local.get $0
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.or
   local.set $4
   local.get $2
   local.get $4
   local.get $3
   i32.const 16
   i32.shl
   i32.or
   i32.store
  end
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.fromCharCode (; 107 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.gt_s
  local.set $2
  i32.const 2
  local.get $2
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.get $0
  i32.store16
  local.get $2
  if
   local.get $3
   local.get $1
   i32.store16 offset=2
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.fromCharCode|trampoline (; 108 ;) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/string/String.fromCharCode
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar (; 109 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.set $1
  local.get $1
  i32.const 1648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1648
   return
  end
  local.get $1
  i32.const 1888
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1888
   return
  end
  local.get $1
  i32.const 1920
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1920
   return
  end
  local.get $1
  i32.const 1952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1984
   return
  end
  local.get $1
  i32.const 2016
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2048
   return
  end
  local.get $1
  i32.const 2080
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2112
   return
  end
  local.get $1
  i32.const 2144
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2176
   return
  end
  local.get $1
  i32.const 2208
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 2304
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 928
   i32.const 263
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 608
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (; 110 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 1648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 1680
   i32.const 928
   i32.const 205
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  i32.load offset=4
  local.set $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  loop $for-loop|0
   i32.const 1
   local.set $4
   local.get $4
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.set $5
    local.get $5
    i32.const 32
    i32.ge_s
    i32.eqz
    if
     i32.const 1760
     i32.const 928
     i32.const 211
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1648
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     i32.const 1
     global.set $~argumentsLength
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     local.tee $6
     local.get $2
     i32.const 0
     call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
     local.set $7
     local.get $3
     call $~lib/array/Array<~lib/string/String>#get:length
     i32.const 0
     i32.eq
     if
      local.get $7
      local.set $8
      local.get $1
      call $~lib/rt/stub/__release
      local.get $3
      call $~lib/rt/stub/__release
      local.get $6
      call $~lib/rt/stub/__release
      local.get $8
      return
     end
     local.get $3
     local.get $7
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $3
     i32.const 608
     call $~lib/array/Array<~lib/string/String>#join
     local.set $8
     local.get $6
     call $~lib/rt/stub/__release
     local.get $7
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $8
     return
    else
     local.get $5
     i32.const 1888
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
      local.tee $7
      i32.load offset=4
      local.get $2
      i32.const 1
      i32.add
      i32.gt_s
      if
       local.get $3
       i32.const 1
       global.set $~argumentsLength
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
       local.tee $6
       local.get $2
       i32.const 0
       call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
       local.tee $8
       call $~lib/array/Array<~lib/string/String>#push
       drop
       local.get $6
       call $~lib/rt/stub/__release
       local.get $8
       call $~lib/rt/stub/__release
      end
      local.get $3
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
      local.tee $8
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
      local.tee $6
      i32.load offset=4
      local.set $2
      local.get $7
      call $~lib/rt/stub/__release
      local.get $8
      call $~lib/rt/stub/__release
      local.get $6
      call $~lib/rt/stub/__release
     end
    end
    br $for-loop|0
   end
  end
  i32.const 608
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseKey (; 111 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  local.tee $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/stub/__release
  local.get $3
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2384
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2416
   i32.const 928
   i32.const 167
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop (; 112 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2528
   i32.const 1248
   i32.const 288
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $~lib/assemblyscript-json/JSON/Handler#popObject (; 113 ;) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
   call $~lib/rt/stub/__release
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (; 114 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 1216
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  i32.load
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $3
  local.tee $4
  i32.const 608
  local.set $5
  local.get $4
  i32.load
  call $~lib/rt/stub/__release
  local.get $5
  i32.store
  local.get $0
  i32.load
  local.get $2
  call $~lib/assemblyscript-json/JSON/Handler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $4
   loop $while-continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 1536
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    local.set $5
    local.get $5
    if
     local.get $4
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      i32.const 1568
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 1600
       i32.const 928
       i32.const 150
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else
      i32.const 0
      local.set $4
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   i32.const 1536
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 2464
    i32.const 928
    i32.const 157
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#popObject
  i32.const 1
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#constructor (; 115 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 23
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value.Array (; 116 ;) (result i32)
  i32.const 0
  call $~lib/assemblyscript-json/JSON/JSON.Arr#constructor
 )
 (func $~lib/assemblyscript-json/JSON/Handler#pushArray (; 117 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  call $~lib/assemblyscript-json/JSON/JSON.Value.Array
  local.set $2
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length
  i32.const 0
  i32.eq
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   drop
  else
   local.get $0
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   drop
  end
  i32.const 1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/JSON/Handler#popArray (; 118 ;) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
   call $~lib/rt/stub/__release
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray (; 119 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  i32.load
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $3
  local.tee $4
  i32.const 608
  local.set $5
  local.get $4
  i32.load
  call $~lib/rt/stub/__release
  local.get $5
  i32.store
  local.get $0
  i32.load
  local.get $2
  call $~lib/assemblyscript-json/JSON/Handler#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $4
   loop $while-continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 2608
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    local.set $5
    local.get $5
    if
     local.get $4
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      i32.const 1568
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 1600
       i32.const 928
       i32.const 184
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else
      i32.const 0
      local.set $4
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   i32.const 2608
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 2640
    i32.const 928
    i32.const 190
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#popArray
  i32.const 1
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Str#constructor (; 120 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 25
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $0
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value.String (; 121 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  call $~lib/assemblyscript-json/JSON/JSON.Str#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setString (; 122 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  call $~lib/assemblyscript-json/JSON/JSON.Value.String
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString (; 123 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 1648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.tee $1
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
  local.tee $2
  call $~lib/assemblyscript-json/JSON/Handler#setString
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (; 124 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $1
   call $~lib/string/String#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 2704
     local.get $1
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2752
     call $~lib/string/String.__concat
     local.tee $5
     i32.const 928
     i32.const 329
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Bool#constructor (; 125 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1
   i32.const 26
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $0
  local.get $0
  local.get $1
  i32.store8
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value.Bool (; 126 ;) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $~lib/assemblyscript-json/JSON/JSON.Bool#constructor
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (; 127 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/assemblyscript-json/JSON/JSON.Value.Bool
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (; 128 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 784
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
   local.tee $1
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/JSON/Handler#setBoolean
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 752
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
   local.tee $1
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/JSON/Handler#setBoolean
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Num#constructor (; 129 ;) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 27
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $0
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value.Number (; 130 ;) (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  call $~lib/assemblyscript-json/JSON/JSON.Num#constructor
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setInteger (; 131 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/assemblyscript-json/JSON/JSON.Value.Number
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (; 132 ;) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2784
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
  end
  i32.const 0
  local.set $3
  loop $while-continue|0
   i32.const 48
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.le_s
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 57
    i32.le_s
   else
    i32.const 0
   end
   local.set $4
   local.get $4
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.set $5
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $5
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
   local.tee $4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/JSON/Handler#setInteger
   i32.const 1
   local.set $6
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Null#constructor (; 133 ;) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 28
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value.Null (; 134 ;) (result i32)
  i32.const 0
  call $~lib/assemblyscript-json/JSON/JSON.Null#constructor
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setNull (; 135 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  call $~lib/assemblyscript-json/JSON/JSON.Value.Null
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (; 136 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
   local.tee $1
   i32.load
   call $~lib/assemblyscript-json/JSON/Handler#setNull
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (; 137 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize (; 138 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.get $2
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#set:state
  else
   local.get $0
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.tee $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#set:state
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 2816
   i32.const 928
   i32.const 108
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/JSON/Handler#reset (; 139 ;) (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#get:length
   i32.const 0
   i32.gt_s
   local.set $1
   local.get $1
   if
    local.get $0
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
    call $~lib/rt/stub/__release
    br $while-continue|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array> (; 140 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.set $1
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  local.set $1
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.get $1
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#reset
  local.get $3
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/getInput (; 141 ;) (result i32)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i64.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/input
  i64.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/register_len
  local.set $0
  local.get $0
  i64.const 4294967295
  i64.eq
  if
   call $node_modules/near-sdk-as/assembly/bindgen/panic
  end
  i32.const 0
  local.get $0
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  i64.const 0
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/read_register
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  local.tee $2
  i32.const 12
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 2880
   i32.const 64
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String.__ne (; 142 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get (; 143 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.3
  end
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   call $~lib/rt/stub/__release
   i32.const 3040
   i32.const 3104
   i32.const 111
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#get (; 144 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
  i32.eqz
  if
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/string/String> (; 145 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj> (; 146 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 12
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 608
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   local.tee $4
   i32.const 12
   call $~lib/rt/__instanceof
   if (result i32)
    local.get $4
   else
    i32.const 0
    i32.const 2880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    call $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     local.tee $6
     if (result i32)
      local.get $6
     else
      i32.const 0
      i32.const 2880
      i32.const 164
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     call $~lib/rt/stub/__retain
     local.set $6
     local.get $0
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
     local.get $6
     return
    else
     local.get $0
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
     i32.const 3152
     i32.const 3184
     call $~lib/string/String.__concat
     local.tee $6
     i32.const 3216
     call $~lib/string/String.__concat
     local.tee $7
     i32.const 2880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  i32.const 0
  local.set $8
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 28
   call $~lib/rt/__instanceof
  end
  if
   call $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 3264
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 3296
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3184
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 3344
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $9
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   call $~lib/rt/stub/__release
   local.get $9
   return
  end
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $9
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 25
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 3392
   local.get $9
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3440
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.tee $5
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $5
  else
   i32.const 0
   i32.const 2880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $9
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128> (; 147 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/as-bignum/integer/u128/u128#constructor (; 148 ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 149 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 150 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1024
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/as-bignum/globals/__multi3 (; 151 ;) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  local.get $1
  local.set $5
  local.get $3
  local.set $6
  local.get $5
  i64.const 4294967295
  i64.and
  local.set $9
  local.get $6
  i64.const 4294967295
  i64.and
  local.set $10
  local.get $9
  local.get $10
  i64.mul
  local.set $11
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $12
  local.get $5
  i64.const 32
  i64.shr_u
  local.set $5
  local.get $5
  local.get $10
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.set $11
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $8
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $7
  local.get $6
  i64.const 32
  i64.shr_u
  local.set $6
  local.get $9
  local.get $6
  i64.mul
  local.get $8
  i64.add
  local.set $11
  local.get $12
  local.get $11
  i64.const 32
  i64.shl
  i64.add
  local.set $13
  local.get $5
  local.get $6
  i64.mul
  local.get $7
  i64.add
  local.set $14
  local.get $14
  local.get $2
  local.get $3
  i64.mul
  i64.add
  local.set $14
  local.get $14
  local.get $1
  local.get $4
  i64.mul
  i64.add
  local.set $14
  local.get $14
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.set $14
  local.get $13
  global.set $~lib/as-bignum/globals/__res128_lo
  local.get $14
  global.set $~lib/as-bignum/globals/__res128_hi
 )
 (func $~lib/as-bignum/utils/atou128 (; 152 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  i32.eqz
  if
   i32.const 10
   local.set $1
  end
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   local.get $0
   call $~lib/rt/stub/__release
   i32.const 3584
   i32.const 3632
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $3
   local.set $4
   local.get $0
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.set $5
  local.get $2
  i32.const 1
  i32.eq
  if (result i32)
   local.get $5
   i32.const 48
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $3
   local.set $4
   local.get $0
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $5
  i32.const 45
  i32.eq
  local.set $6
  local.get $6
  if (result i32)
   local.get $6
  else
   local.get $5
   i32.const 43
   i32.eq
  end
  local.set $7
  local.get $0
  local.get $7
  call $~lib/string/String#charCodeAt
  i32.const 48
  i32.eq
  if
   local.get $0
   local.get $7
   i32.const 1
   i32.add
   local.tee $7
   call $~lib/string/String#charCodeAt
   local.set $3
   local.get $3
   i32.const 120
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $3
    i32.const 88
    i32.eq
   end
   if
    i32.const 16
    local.set $1
    local.get $7
    i32.const 1
    i32.add
    local.set $7
   else
    local.get $3
    i32.const 111
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $3
     i32.const 79
     i32.eq
    end
    if
     i32.const 8
     local.set $1
     local.get $7
     i32.const 1
     i32.add
     local.set $7
    else
     local.get $3
     i32.const 98
     i32.eq
     if (result i32)
      i32.const 1
     else
      local.get $3
      i32.const 66
      i32.eq
     end
     if
      i32.const 2
      local.set $1
      local.get $7
      i32.const 1
      i32.add
      local.set $7
     end
    end
   end
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.tee $3
  call $~lib/rt/stub/__retain
  local.set $8
  global.get $~lib/as-bignum/utils/RadixCharsTable
  call $~lib/rt/stub/__retain
  local.set $9
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       local.get $1
       local.set $4
       local.get $4
       i32.const 2
       i32.eq
       br_if $case0|0
       local.get $4
       i32.const 10
       i32.eq
       br_if $case1|0
       local.get $4
       i32.const 16
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      block $do-break|1
       loop $do-continue|1
        local.get $0
        local.get $7
        call $~lib/string/String#charCodeAt
        i32.const 48
        i32.sub
        local.set $4
        local.get $4
        i32.const 2
        i32.ge_u
        if
         br $do-break|1
        end
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $11
        i32.const 1
        local.set $10
        local.get $10
        i32.const 127
        i32.and
        local.set $10
        local.get $10
        i64.extend_i32_s
        local.set $12
        local.get $12
        i64.const 127
        i64.add
        local.get $12
        i64.or
        i64.const 64
        i64.and
        i64.const 6
        i64.shr_u
        i64.const 1
        i64.sub
        local.set $13
        local.get $12
        i64.const 6
        i64.shr_u
        i64.const 1
        i64.sub
        local.set $14
        local.get $12
        i64.const 63
        i64.and
        local.set $12
        local.get $11
        i64.load
        local.set $15
        local.get $15
        local.get $12
        i64.shl
        local.set $16
        local.get $16
        local.get $14
        i64.const -1
        i64.xor
        i64.and
        local.set $17
        local.get $17
        local.get $11
        i64.load offset=8
        local.get $12
        i64.shl
        local.get $15
        i64.const 64
        local.get $12
        i64.sub
        i64.shr_u
        local.get $13
        i64.and
        i64.or
        local.get $14
        i64.and
        i64.or
        local.set $17
        i32.const 0
        local.get $16
        local.get $14
        i64.and
        local.get $17
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $18
        local.get $11
        call $~lib/rt/stub/__release
        local.get $18
        local.tee $11
        local.tee $18
        local.get $8
        local.tee $10
        i32.ne
        if
         local.get $18
         call $~lib/rt/stub/__retain
         local.set $18
         local.get $10
         call $~lib/rt/stub/__release
        end
        local.get $18
        local.set $8
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $19
        local.get $4
        i64.extend_i32_u
        local.set $12
        i32.const 0
        local.get $12
        i64.const 0
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.tee $18
        call $~lib/rt/stub/__retain
        local.set $10
        i32.const 0
        local.get $19
        i64.load
        local.get $10
        i64.load
        i64.or
        local.get $19
        i64.load offset=8
        local.get $10
        i64.load offset=8
        i64.or
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $20
        local.get $10
        call $~lib/rt/stub/__release
        local.get $19
        call $~lib/rt/stub/__release
        local.get $20
        local.tee $19
        local.tee $20
        local.get $8
        local.tee $10
        i32.ne
        if
         local.get $20
         call $~lib/rt/stub/__retain
         local.set $20
         local.get $10
         call $~lib/rt/stub/__release
        end
        local.get $20
        local.set $8
        local.get $11
        call $~lib/rt/stub/__release
        local.get $18
        call $~lib/rt/stub/__release
        local.get $19
        call $~lib/rt/stub/__release
        local.get $7
        i32.const 1
        i32.add
        local.tee $7
        local.get $2
        i32.lt_s
        local.set $20
        local.get $20
        br_if $do-continue|1
       end
      end
      br $break|0
     end
     block $do-break|2
      loop $do-continue|2
       local.get $0
       local.get $7
       call $~lib/string/String#charCodeAt
       i32.const 48
       i32.sub
       local.set $20
       local.get $20
       i32.const 10
       i32.ge_u
       if
        br $do-break|2
       end
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $21
       i32.const 3
       local.set $10
       local.get $10
       i32.const 127
       i32.and
       local.set $10
       local.get $10
       i64.extend_i32_s
       local.set $12
       local.get $12
       i64.const 127
       i64.add
       local.get $12
       i64.or
       i64.const 64
       i64.and
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $17
       local.get $12
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $16
       local.get $12
       i64.const 63
       i64.and
       local.set $12
       local.get $21
       i64.load
       local.set $15
       local.get $15
       local.get $12
       i64.shl
       local.set $14
       local.get $14
       local.get $16
       i64.const -1
       i64.xor
       i64.and
       local.set $13
       local.get $13
       local.get $21
       i64.load offset=8
       local.get $12
       i64.shl
       local.get $15
       i64.const 64
       local.get $12
       i64.sub
       i64.shr_u
       local.get $17
       i64.and
       i64.or
       local.get $16
       i64.and
       i64.or
       local.set $13
       i32.const 0
       local.get $14
       local.get $16
       i64.and
       local.get $13
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $22
       local.get $21
       call $~lib/rt/stub/__release
       local.get $22
       local.tee $21
       call $~lib/rt/stub/__retain
       local.set $24
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $10
       i32.const 1
       local.set $22
       local.get $22
       i32.const 127
       i32.and
       local.set $22
       local.get $22
       i64.extend_i32_s
       local.set $13
       local.get $13
       i64.const 127
       i64.add
       local.get $13
       i64.or
       i64.const 64
       i64.and
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $14
       local.get $13
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $15
       local.get $13
       i64.const 63
       i64.and
       local.set $13
       local.get $10
       i64.load
       local.set $16
       local.get $16
       local.get $13
       i64.shl
       local.set $17
       local.get $17
       local.get $15
       i64.const -1
       i64.xor
       i64.and
       local.set $12
       local.get $12
       local.get $10
       i64.load offset=8
       local.get $13
       i64.shl
       local.get $16
       i64.const 64
       local.get $13
       i64.sub
       i64.shr_u
       local.get $14
       i64.and
       i64.or
       local.get $15
       i64.and
       i64.or
       local.set $12
       i32.const 0
       local.get $17
       local.get $15
       i64.and
       local.get $12
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $23
       local.get $10
       call $~lib/rt/stub/__release
       local.get $23
       local.tee $10
       call $~lib/rt/stub/__retain
       local.set $23
       local.get $23
       i64.load
       local.set $12
       local.get $24
       i64.load
       local.get $12
       i64.add
       local.set $17
       local.get $24
       i64.load offset=8
       local.get $23
       i64.load offset=8
       i64.add
       local.get $17
       local.get $12
       i64.lt_u
       i64.extend_i32_u
       i64.add
       local.set $16
       i32.const 0
       local.get $17
       local.get $16
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $22
       local.get $23
       call $~lib/rt/stub/__release
       local.get $24
       call $~lib/rt/stub/__release
       local.get $22
       local.tee $24
       local.tee $22
       local.get $8
       local.tee $23
       i32.ne
       if
        local.get $22
        call $~lib/rt/stub/__retain
        local.set $22
        local.get $23
        call $~lib/rt/stub/__release
       end
       local.get $22
       local.set $8
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $25
       local.get $20
       i64.extend_i32_u
       local.set $13
       i32.const 0
       local.get $13
       i64.const 0
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.tee $22
       call $~lib/rt/stub/__retain
       local.set $23
       local.get $23
       i64.load
       local.set $13
       local.get $25
       i64.load
       local.get $13
       i64.add
       local.set $16
       local.get $25
       i64.load offset=8
       local.get $23
       i64.load offset=8
       i64.add
       local.get $16
       local.get $13
       i64.lt_u
       i64.extend_i32_u
       i64.add
       local.set $17
       i32.const 0
       local.get $16
       local.get $17
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $26
       local.get $23
       call $~lib/rt/stub/__release
       local.get $25
       call $~lib/rt/stub/__release
       local.get $26
       local.tee $25
       local.tee $26
       local.get $8
       local.tee $23
       i32.ne
       if
        local.get $26
        call $~lib/rt/stub/__retain
        local.set $26
        local.get $23
        call $~lib/rt/stub/__release
       end
       local.get $26
       local.set $8
       local.get $21
       call $~lib/rt/stub/__release
       local.get $10
       call $~lib/rt/stub/__release
       local.get $24
       call $~lib/rt/stub/__release
       local.get $22
       call $~lib/rt/stub/__release
       local.get $25
       call $~lib/rt/stub/__release
       local.get $7
       i32.const 1
       i32.add
       local.tee $7
       local.get $2
       i32.lt_s
       local.set $26
       local.get $26
       br_if $do-continue|2
      end
     end
     br $break|0
    end
    block $do-break|3
     loop $do-continue|3
      local.get $0
      local.get $7
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.set $26
      local.get $26
      i32.const 74
      i32.gt_u
      if
       br $do-break|3
      end
      local.get $9
      local.get $26
      call $~lib/array/Array<u8>#__get
      local.set $23
      local.get $23
      i32.const 16
      i32.ge_u
      if
       br $do-break|3
      end
      local.get $8
      call $~lib/rt/stub/__retain
      local.set $28
      i32.const 4
      local.set $27
      local.get $27
      i32.const 127
      i32.and
      local.set $27
      local.get $27
      i64.extend_i32_s
      local.set $17
      local.get $17
      i64.const 127
      i64.add
      local.get $17
      i64.or
      i64.const 64
      i64.and
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.set $16
      local.get $17
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.set $13
      local.get $17
      i64.const 63
      i64.and
      local.set $17
      local.get $28
      i64.load
      local.set $12
      local.get $12
      local.get $17
      i64.shl
      local.set $15
      local.get $15
      local.get $13
      i64.const -1
      i64.xor
      i64.and
      local.set $14
      local.get $14
      local.get $28
      i64.load offset=8
      local.get $17
      i64.shl
      local.get $12
      i64.const 64
      local.get $17
      i64.sub
      i64.shr_u
      local.get $16
      i64.and
      i64.or
      local.get $13
      i64.and
      i64.or
      local.set $14
      i32.const 0
      local.get $15
      local.get $13
      i64.and
      local.get $14
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $29
      local.get $28
      call $~lib/rt/stub/__release
      local.get $29
      local.tee $28
      local.tee $29
      local.get $8
      local.tee $27
      i32.ne
      if
       local.get $29
       call $~lib/rt/stub/__retain
       local.set $29
       local.get $27
       call $~lib/rt/stub/__release
      end
      local.get $29
      local.set $8
      local.get $8
      call $~lib/rt/stub/__retain
      local.set $30
      local.get $23
      i64.extend_i32_u
      local.set $17
      i32.const 0
      local.get $17
      i64.const 0
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.tee $29
      call $~lib/rt/stub/__retain
      local.set $27
      i32.const 0
      local.get $30
      i64.load
      local.get $27
      i64.load
      i64.or
      local.get $30
      i64.load offset=8
      local.get $27
      i64.load offset=8
      i64.or
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $31
      local.get $27
      call $~lib/rt/stub/__release
      local.get $30
      call $~lib/rt/stub/__release
      local.get $31
      local.tee $30
      local.tee $31
      local.get $8
      local.tee $27
      i32.ne
      if
       local.get $31
       call $~lib/rt/stub/__retain
       local.set $31
       local.get $27
       call $~lib/rt/stub/__release
      end
      local.get $31
      local.set $8
      local.get $28
      call $~lib/rt/stub/__release
      local.get $29
      call $~lib/rt/stub/__release
      local.get $30
      call $~lib/rt/stub/__release
      local.get $7
      i32.const 1
      i32.add
      local.tee $7
      local.get $2
      i32.lt_s
      local.set $31
      local.get $31
      br_if $do-continue|3
     end
    end
    br $break|0
   end
   local.get $1
   i64.extend_i32_s
   local.set $16
   i32.const 0
   local.get $16
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $31
   block $do-break|4
    loop $do-continue|4
     local.get $0
     local.get $7
     call $~lib/string/String#charCodeAt
     i32.const 48
     i32.sub
     local.set $27
     local.get $27
     i32.const 74
     i32.gt_u
     if
      br $do-break|4
     end
     local.get $9
     local.get $27
     call $~lib/array/Array<u8>#__get
     local.set $32
     local.get $32
     local.get $1
     i32.const 255
     i32.and
     i32.ge_u
     if
      br $do-break|4
     end
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $34
     local.get $31
     call $~lib/rt/stub/__retain
     local.set $33
     i32.const 0
     local.get $34
     i64.load
     local.get $34
     i64.load offset=8
     local.get $33
     i64.load
     local.get $33
     i64.load offset=8
     call $~lib/as-bignum/globals/__multi3
     i32.const 0
     global.get $~lib/as-bignum/globals/__res128_lo
     global.get $~lib/as-bignum/globals/__res128_hi
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $35
     local.get $33
     call $~lib/rt/stub/__release
     local.get $34
     call $~lib/rt/stub/__release
     local.get $35
     local.tee $34
     local.tee $35
     local.get $8
     local.tee $33
     i32.ne
     if
      local.get $35
      call $~lib/rt/stub/__retain
      local.set $35
      local.get $33
      call $~lib/rt/stub/__release
     end
     local.get $35
     local.set $8
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $36
     local.get $32
     i64.extend_i32_u
     local.set $13
     i32.const 0
     local.get $13
     i64.const 0
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.tee $35
     call $~lib/rt/stub/__retain
     local.set $33
     local.get $33
     i64.load
     local.set $13
     local.get $36
     i64.load
     local.get $13
     i64.add
     local.set $16
     local.get $36
     i64.load offset=8
     local.get $33
     i64.load offset=8
     i64.add
     local.get $16
     local.get $13
     i64.lt_u
     i64.extend_i32_u
     i64.add
     local.set $17
     i32.const 0
     local.get $16
     local.get $17
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $37
     local.get $33
     call $~lib/rt/stub/__release
     local.get $36
     call $~lib/rt/stub/__release
     local.get $37
     local.tee $36
     local.tee $37
     local.get $8
     local.tee $33
     i32.ne
     if
      local.get $37
      call $~lib/rt/stub/__retain
      local.set $37
      local.get $33
      call $~lib/rt/stub/__release
     end
     local.get $37
     local.set $8
     local.get $34
     call $~lib/rt/stub/__release
     local.get $35
     call $~lib/rt/stub/__release
     local.get $36
     call $~lib/rt/stub/__release
     local.get $7
     i32.const 1
     i32.add
     local.tee $7
     local.get $2
     i32.lt_s
     local.set $37
     local.get $37
     br_if $do-continue|4
    end
   end
   local.get $31
   call $~lib/rt/stub/__release
   br $break|0
  end
  local.get $6
  if (result i32)
   local.get $8
   local.set $33
   local.get $33
   i64.load
   i64.const -1
   i64.xor
   local.set $17
   local.get $33
   i64.load offset=8
   i64.const -1
   i64.xor
   local.set $16
   local.get $17
   i64.const 1
   i64.and
   local.get $17
   i64.const 1
   i64.shr_u
   i64.add
   i64.const 63
   i64.shr_u
   local.set $13
   i32.const 0
   local.get $17
   i64.const 1
   i64.add
   local.get $16
   local.get $13
   i64.add
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $33
  else
   local.get $8
  end
  local.set $33
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $33
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj> (; 153 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 12
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 608
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   local.tee $4
   i32.const 12
   call $~lib/rt/__instanceof
   if (result i32)
    local.get $4
   else
    i32.const 0
    i32.const 2880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    call $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     local.tee $6
     if (result i32)
      local.get $6
     else
      i32.const 0
      i32.const 2880
      i32.const 164
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     call $~lib/rt/stub/__retain
     local.set $6
     local.get $0
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
     local.get $6
     return
    else
     local.get $0
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
     i32.const 3152
     i32.const 3552
     call $~lib/string/String.__concat
     local.tee $6
     i32.const 3216
     call $~lib/string/String.__concat
     local.tee $7
     i32.const 2880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  i32.const 0
  local.set $8
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 28
   call $~lib/rt/__instanceof
  end
  if
   call $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 3264
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 3296
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3552
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 3344
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $9
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   call $~lib/rt/stub/__release
   local.get $9
   return
  end
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 25
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2880
   i32.const 215
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $9
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 25
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 3392
   local.get $9
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3440
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.tee $5
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $5
  else
   i32.const 0
   i32.const 2880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $9
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  call $~lib/as-bignum/utils/atou128
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $~lib/string/String#toString (; 154 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.UTF8.byteLength (; 155 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $1
  i32.const 0
  i32.ne
  local.set $4
  block $while-break|0
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_u
    local.set $5
    local.get $5
    if
     local.get $2
     i32.load16_u
     local.set $6
     local.get $6
     i32.const 128
     i32.lt_u
     if
      local.get $1
      local.get $6
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
     else
      local.get $6
      i32.const 2048
      i32.lt_u
      if
       local.get $4
       i32.const 2
       i32.add
       local.set $4
      else
       local.get $6
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       if (result i32)
        local.get $2
        i32.const 2
        i32.add
        local.get $3
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $4
         i32.const 4
         i32.add
         local.set $4
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $4
       i32.const 3
       i32.add
       local.set $4
      end
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $4
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/string/String.UTF8.encode (; 156 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $5
  local.get $5
  local.get $4
  i32.add
  local.get $1
  i32.const 0
  i32.ne
  i32.sub
  local.set $6
  local.get $5
  local.set $7
  loop $while-continue|0
   local.get $7
   local.get $6
   i32.lt_u
   local.set $8
   local.get $8
   if
    local.get $2
    i32.load16_u
    local.set $9
    local.get $9
    i32.const 128
    i32.lt_u
    if
     local.get $7
     local.get $9
     i32.store8
     local.get $7
     i32.const 1
     i32.add
     local.set $7
    else
     local.get $9
     i32.const 2048
     i32.lt_u
     if
      local.get $9
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.set $10
      local.get $9
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $11
      local.get $7
      local.get $11
      i32.const 8
      i32.shl
      local.get $10
      i32.or
      i32.store16
      local.get $7
      i32.const 2
      i32.add
      local.set $7
     else
      local.get $9
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       local.set $11
       local.get $11
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        i32.const 65536
        local.get $9
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.add
        local.get $11
        i32.const 1023
        i32.and
        i32.or
        local.set $9
        local.get $9
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.set $10
        local.get $9
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $12
        local.get $9
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $13
        local.get $9
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $14
        local.get $7
        local.get $14
        i32.const 24
        i32.shl
        local.get $13
        i32.const 16
        i32.shl
        i32.or
        local.get $12
        i32.const 8
        i32.shl
        i32.or
        local.get $10
        i32.or
        i32.store
        local.get $7
        i32.const 4
        i32.add
        local.set $7
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $while-continue|0
       end
      end
      local.get $9
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.set $11
      local.get $9
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $14
      local.get $9
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $13
      local.get $7
      local.get $14
      i32.const 8
      i32.shl
      local.get $11
      i32.or
      i32.store16
      local.get $7
      local.get $13
      i32.store8 offset=2
      local.get $7
      i32.const 3
      i32.add
      local.set $7
     end
    end
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $2
  local.get $3
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 1840
   i32.const 719
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  if
   local.get $7
   i32.const 0
   i32.store8
  end
  local.get $5
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/near-sdk-as/runtime/util/util.toUTF8 (; 157 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.encode
  local.tee $2
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-sdk-as/runtime/util/util.stringToBytes (; 158 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  i32.sub
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  local.get $2
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/near-sdk-as/runtime/util/util.toUTF8
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String> (; 159 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.set $1
  local.get $0
  call $~lib/string/String#toString
  local.set $2
  local.get $2
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  local.set $1
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-as/runtime/env/imports/env.log_utf8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/util/util.read_register (; 160 ;) (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i32)
  local.get $0
  call $~lib/near-sdk-as/runtime/env/imports/env.register_len
  local.set $1
  i32.const 0
  local.get $1
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  i64.const 0
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-as/runtime/env/imports/env.read_register
  local.get $2
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#_internalReadBytes (; 161 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $2
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-as/runtime/env/imports/env.storage_read
  local.set $3
  local.get $3
  i64.const 1
  i64.eq
  if
   i64.const 0
   call $~lib/near-sdk-as/runtime/util/util.read_register
   local.set $4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  else
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  unreachable
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 162 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 163 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $7
  local.get $7
  local.get $0
  local.get $1
  i32.add
  local.get $6
  call $~lib/memory/memory.copy
  local.get $7
  call $~lib/rt/stub/__retain
 )
 (func $~lib/near-sdk-as/runtime/util/util.uint8ArrayToBuffer (; 164 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $0
  i32.load offset=8
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/string/String.UTF8.decode (; 165 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.get $1
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-sdk-as/runtime/util/util.bytesToString (; 166 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  if
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   return
  end
  local.get $0
  call $~lib/near-sdk-as/runtime/util/util.uint8ArrayToBuffer
  local.tee $1
  i32.const 1
  call $~lib/string/String.UTF8.decode
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#getString (; 167 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/storage/Storage#_internalReadBytes
  local.tee $2
  call $~lib/near-sdk-as/runtime/util/util.bytesToString
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-sdk-as/runtime/util/util.parseFromString<~lib/string/String> (; 168 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  return
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#get<~lib/string/String> (; 169 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/storage/Storage#getString
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   local.get $2
   call $~lib/rt/stub/__retain
  else
   local.get $3
   local.tee $4
   if (result i32)
    local.get $4
   else
    i32.const 0
    i32.const 3904
    i32.const 171
    i32.const 79
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/near-sdk-as/runtime/util/util.parseFromString<~lib/string/String>
  end
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#_key (; 170 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  call $~lib/string/String#toString
  local.tee $2
  call $~lib/string/String.__concat
  local.tee $3
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/isNull<~lib/as-bignum/integer/u128/u128> (; 171 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  return
 )
 (func $~lib/array/Array<i32>#get:length (; 172 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 173 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 174 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1024
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey (; 175 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 176 ;) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 177 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 178 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1024
    i32.const 1248
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__unchecked_set
 )
 (func $~lib/string/String#substring (; 179 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $6
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $7
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $8
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $8
  i32.sub
  local.set $10
  local.get $10
  i32.eqz
  if
   i32.const 608
   call $~lib/rt/stub/__retain
   return
  end
  local.get $8
  i32.eqz
  if (result i32)
   local.get $9
   local.get $3
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/stub/__retain
   return
  end
  local.get $10
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $11
  local.get $11
  local.get $0
  local.get $8
  i32.add
  local.get $10
  call $~lib/memory/memory.copy
  local.get $11
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/decimalCount32 (; 180 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 181 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 4544
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 4544
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 4544
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 4544
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 182 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4512
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.set $6
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 183 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 184 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i32>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 185 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.const 1648
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  i32.const 0
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   call $~lib/string/String#get:length
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $1
    local.get $3
    call $~lib/string/String#charCodeAt
    local.set $5
    local.get $5
    i32.const 32
    i32.lt_s
    local.tee $6
    if (result i32)
     local.get $6
    else
     local.get $5
     i32.const 1648
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.tee $6
    if (result i32)
     local.get $6
    else
     local.get $5
     i32.const 1888
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.set $6
    local.get $6
    if
     local.get $0
     local.get $1
     local.get $2
     local.get $3
     call $~lib/string/String#substring
     local.tee $7
     call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     local.get $3
     i32.const 1
     i32.add
     local.set $2
     local.get $5
     i32.const 1648
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      i32.const 4224
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      local.get $5
      i32.const 1888
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      if
       local.get $0
       i32.const 4256
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       local.get $5
       i32.const 1984
       i32.const 0
       call $~lib/string/String#charCodeAt
       i32.eq
       if
        local.get $0
        i32.const 4288
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        local.get $5
        i32.const 2048
        i32.const 0
        call $~lib/string/String#charCodeAt
        i32.eq
        if
         local.get $0
         i32.const 4320
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         local.get $5
         i32.const 2112
         i32.const 0
         call $~lib/string/String#charCodeAt
         i32.eq
         if
          local.get $0
          i32.const 4352
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          local.get $5
          i32.const 2176
          i32.const 0
          call $~lib/string/String#charCodeAt
          i32.eq
          if
           local.get $0
           i32.const 4384
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 0
           i32.eqz
           if
            i32.const 4416
            local.get $5
            call $~lib/number/I32#toString
            local.tee $8
            call $~lib/string/String.__concat
            local.tee $9
            i32.const 4128
            i32.const 108
            i32.const 20
            call $~lib/builtins/abort
            unreachable
           end
           local.get $8
           call $~lib/rt/stub/__release
           local.get $9
           call $~lib/rt/stub/__release
          end
         end
        end
       end
      end
     end
     local.get $7
     call $~lib/rt/stub/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  call $~lib/string/String#substring
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.const 1648
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 186 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey
  i32.eqz
  if
   local.get $0
   i32.const 1568
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  else
   local.get $0
   i32.load
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#get:length
   i32.const 1
   i32.sub
   i32.const 0
   call $~lib/array/Array<i32>#__set
  end
  local.get $1
  i32.const 0
  call $~lib/string/String.__ne
  if (result i32)
   local.get $1
   local.tee $2
   if (result i32)
    local.get $2
   else
    i32.const 0
    i32.const 4128
    i32.const 78
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/string/String#get:length
   i32.const 0
   i32.gt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   local.tee $2
   if (result i32)
    local.get $2
   else
    i32.const 0
    i32.const 4128
    i32.const 79
    i32.const 29
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 2384
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 187 ;) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 576
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/string/String#charAt (; 188 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 608
   call $~lib/rt/stub/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/typedarray/Int8Array#constructor (; 189 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 33
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#get:length (; 190 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Int8Array#__get (; 191 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1024
   i32.const 1088
   i32.const 24
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (; 192 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1024
   i32.const 1088
   i32.const 35
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/as-bignum/utils/processU64 (; 193 ;) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/typedarray/Int8Array#get:length
  i32.const 1
  i32.sub
  local.set $2
  i32.const 63
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const -1
   i32.ne
   local.set $4
   local.get $4
   if
    i32.const 0
    local.set $5
    loop $for-loop|1
     local.get $5
     local.get $2
     i32.le_s
     local.set $6
     local.get $6
     if
      local.get $0
      local.get $5
      local.get $0
      local.get $5
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $5
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|1
     end
    end
    local.get $2
    local.set $5
    loop $for-loop|2
     local.get $5
     i32.const -1
     i32.ne
     local.set $6
     local.get $6
     if
      local.get $0
      local.get $5
      local.get $0
      local.get $5
      call $~lib/typedarray/Int8Array#__get
      i32.const 1
      i32.shl
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $5
      local.get $2
      i32.lt_s
      if
       local.get $0
       local.get $5
       i32.const 1
       i32.add
       local.get $0
       local.get $5
       i32.const 1
       i32.add
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $5
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $0
      local.get $5
      local.get $0
      local.get $5
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i64.const 1
    local.get $3
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $~lib/as-bignum/utils/u128toa10 (; 194 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 40
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.set $2
  local.get $2
  local.get $0
  i64.load offset=8
  call $~lib/as-bignum/utils/processU64
  local.get $2
  local.get $0
  i64.load
  call $~lib/as-bignum/utils/processU64
  i32.const 608
  local.set $3
  i32.const 0
  local.set $4
  local.get $1
  i32.const 1
  i32.sub
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const -1
   i32.ne
   local.set $6
   local.get $6
   if
    local.get $4
    i32.eqz
    if (result i32)
     local.get $2
     local.get $5
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    else
     i32.const 0
    end
    if
     i32.const 1
     local.set $4
    end
    local.get $4
    if
     local.get $3
     global.get $~lib/as-bignum/utils/HEX_CHARS
     local.get $2
     local.get $5
     call $~lib/typedarray/Int8Array#__get
     call $~lib/string/String#charAt
     local.tee $7
     call $~lib/string/String#concat
     local.set $8
     local.get $3
     call $~lib/rt/stub/__release
     local.get $8
     local.set $3
     local.get $7
     call $~lib/rt/stub/__release
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/as-bignum/integer/u128/u128#toString (; 195 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  local.get $1
  i32.eqz
  if
   i32.const 10
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 16
   i32.eq
  end
  i32.eqz
  if
   i32.const 4960
   i32.const 5056
   i32.const 894
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  i64.or
  i64.const 0
  i64.ne
  i32.eqz
  if
   i32.const 4512
   return
  end
  i32.const 608
  local.set $3
  local.get $0
  local.set $2
  i32.const 0
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $4
  local.get $1
  i32.const 16
  i32.eq
  if
   i32.const 124
   local.get $4
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   i64.load
   local.set $6
   local.get $2
   i64.load offset=8
   local.set $5
   local.get $5
   local.get $5
   i64.const 1
   i64.sub
   i64.xor
   i64.const 63
   i64.shr_s
   local.set $7
   local.get $5
   local.get $7
   i64.const -1
   i64.xor
   i64.and
   local.get $6
   local.get $7
   i64.and
   i64.or
   i64.clz
   i32.wrap_i64
   local.get $7
   i32.wrap_i64
   i32.const 64
   i32.and
   i32.add
   local.set $8
   local.get $2
   call $~lib/rt/stub/__release
   local.get $8
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.sub
   local.set $2
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    local.set $8
    local.get $8
    if
     local.get $4
     call $~lib/rt/stub/__retain
     local.set $10
     local.get $2
     local.set $9
     local.get $9
     i32.const 127
     i32.and
     local.set $9
     local.get $9
     i64.extend_i32_s
     local.set $7
     local.get $7
     i64.const 127
     i64.add
     local.get $7
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $6
     local.get $7
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $5
     local.get $7
     i64.const 63
     i64.and
     local.set $7
     local.get $10
     i64.load offset=8
     local.set $11
     local.get $11
     local.get $7
     i64.shr_u
     local.set $12
     local.get $12
     local.get $5
     i64.const -1
     i64.xor
     i64.and
     local.set $13
     local.get $13
     local.get $10
     i64.load
     local.get $7
     i64.shr_u
     local.get $11
     i64.const 64
     local.get $7
     i64.sub
     i64.shl
     local.get $6
     i64.and
     i64.or
     local.get $5
     i64.and
     i64.or
     local.set $13
     i32.const 0
     local.get $13
     local.get $12
     local.get $5
     i64.and
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $14
     local.get $10
     call $~lib/rt/stub/__release
     local.get $14
     local.tee $10
     local.tee $14
     local.get $4
     local.tee $9
     i32.ne
     if
      local.get $14
      call $~lib/rt/stub/__retain
      local.set $14
      local.get $9
      call $~lib/rt/stub/__release
     end
     local.get $14
     local.set $4
     local.get $3
     global.get $~lib/as-bignum/integer/u128/HEX_CHARS
     local.get $4
     i64.load
     i64.const 15
     i64.and
     i32.wrap_i64
     call $~lib/string/String#charAt
     local.tee $14
     call $~lib/string/String#concat
     local.set $9
     local.get $3
     call $~lib/rt/stub/__release
     local.get $9
     local.set $3
     local.get $2
     i32.const 4
     i32.sub
     local.set $2
     local.get $10
     call $~lib/rt/stub/__release
     local.get $14
     call $~lib/rt/stub/__release
     br $while-continue|0
    end
   end
   local.get $3
   local.set $8
   local.get $4
   call $~lib/rt/stub/__release
   local.get $8
   return
  else
   local.get $1
   i32.const 10
   i32.eq
   if
    local.get $0
    call $~lib/as-bignum/utils/u128toa10
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    return
   end
  end
  i32.const 5136
  local.set $2
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 196 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 197 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 608
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 198 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $7
  local.get $4
  local.get $7
  i32.gt_u
  local.get $4
  i32.const 0
  i32.and
  i32.or
  if
   local.get $5
   call $~lib/rt/stub/__release
   i32.const 1024
   i32.const 1088
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $7
    i32.const 0
    i32.and
    if
     local.get $5
     call $~lib/rt/stub/__release
     i32.const 816
     i32.const 1088
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    local.get $4
    i32.sub
    local.set $6
   else
    local.get $5
    call $~lib/rt/stub/__release
    i32.const 816
    i32.const 1088
    i32.const 1750
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $3
   i32.const 0
   i32.shl
   local.set $6
   local.get $4
   local.get $6
   i32.add
   local.get $7
   i32.gt_s
   if
    local.get $5
    call $~lib/rt/stub/__release
    i32.const 816
    i32.const 1088
    i32.const 1755
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 12
  i32.const 22
  call $~lib/rt/stub/__alloc
  local.set $8
  local.get $8
  local.get $5
  call $~lib/rt/stub/__retain
  i32.store
  local.get $8
  local.get $6
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  call $~lib/rt/stub/__retain
  local.set $9
  local.get $5
  call $~lib/rt/stub/__release
  local.get $9
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/typedarray/Uint8Array.wrap|trampoline (; 199 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 200 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.set $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap|trampoline
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 201 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  local.tee $1
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array> (; 202 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $node_modules/near-sdk-as/assembly/bindgen/isNull<~lib/as-bignum/integer/u128/u128>
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/as-bignum/integer/u128/u128#toString
   local.tee $3
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $4
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
  return
 )
 (func $~lib/array/Array<i32>#constructor (; 203 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 24
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i32>#push (; 204 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 205 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 31
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 10
  call $~lib/array/Array<i32>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $2
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/JSONEncoder#constructor (; 206 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 30
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $0
  local.get $0
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline (; 207 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 608
    local.set $1
   end
   i32.const 0
   call $node_modules/near-sdk-as/assembly/bindgen/JSONEncoder#constructor
   local.tee $3
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#setBytes (; 208 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-as/runtime/env/imports/env.storage_write
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/as-bignum/integer/u128/u128> (; 209 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline
  local.tee $3
  call $~lib/near-sdk-as/runtime/storage/Storage#setBytes
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set (; 210 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  global.get $~lib/near-sdk-as/runtime/storage/storage
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#_key
  local.tee $3
  local.get $2
  call $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/as-bignum/integer/u128/u128>
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#setString (; 211 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $3
  local.get $2
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $4
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  local.get $4
  i32.load offset=8
  i64.extend_i32_s
  local.get $4
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-as/runtime/env/imports/env.storage_write
  local.set $5
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/string/String> (; 212 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/near-sdk-as/runtime/storage/Storage#setString
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/init (; 213 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 3824
  local.get $0
  call $~lib/string/String.__concat
  local.tee $2
  call $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String>
  global.get $~lib/near-sdk-as/runtime/storage/storage
  i32.const 3872
  i32.const 0
  call $~lib/near-sdk-as/runtime/storage/Storage#get<~lib/string/String>
  local.tee $3
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 4000
   i32.const 4080
   i32.const 14
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/main/total_supply
  i32.const 3504
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  global.get $assembly/main/balances
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  global.get $~lib/near-sdk-as/runtime/storage/storage
  i32.const 5184
  local.get $0
  call $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/string/String>
  global.get $~lib/near-sdk-as/runtime/storage/storage
  i32.const 3872
  i32.const 5216
  call $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/string/String>
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/__wrapper_init (; 214 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 2992
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  local.get $0
  i32.const 3504
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $2
  call $assembly/main/init
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/contract/Context#_readRegisterContentsAsString (; 215 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/near-sdk-as/runtime/util/util.read_register
  local.tee $2
  call $~lib/near-sdk-as/runtime/util/util.bytesToString
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/string/String.__ne
  if (result i32)
   local.get $3
   local.tee $4
   if (result i32)
    local.get $4
   else
    i32.const 0
    i32.const 5296
    i32.const 92
    i32.const 33
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/rt/stub/__retain
  else
   i32.const 608
  end
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/near-sdk-as/runtime/contract/Context#get:sender (; 216 ;) (param $0 i32) (result i32)
  i64.const 0
  call $~lib/near-sdk-as/runtime/env/imports/env.signer_account_id
  local.get $0
  i64.const 0
  call $~lib/near-sdk-as/runtime/contract/Context#_readRegisterContentsAsString
 )
 (func $assembly/main/isOwner (; 217 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  global.get $~lib/near-sdk-as/runtime/storage/storage
  i32.const 5184
  i32.const 0
  call $~lib/near-sdk-as/runtime/storage/Storage#get<~lib/string/String>
  local.tee $1
  call $~lib/string/String.__eq
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#_key (; 218 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  call $~lib/string/String#toString
  local.tee $2
  call $~lib/string/String.__concat
  local.tee $3
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#set (; 219 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  global.get $~lib/near-sdk-as/runtime/storage/storage
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#_key
  local.tee $3
  local.get $2
  call $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/string/String>
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/addModerator (; 220 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $1
  call $assembly/main/isOwner
  i32.eqz
  if
   i32.const 5392
   i32.const 4080
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/main/moderators
  local.get $0
  local.get $0
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#set
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean (; 221 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  if (result i32)
   i32.const 752
   call $~lib/rt/stub/__retain
   local.tee $2
  else
   i32.const 784
   call $~lib/rt/stub/__retain
   local.tee $3
  end
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean (; 222 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array> (; 223 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  local.get $1
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline (; 224 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 608
    local.set $1
   end
   i32.const 0
   call $node_modules/near-sdk-as/assembly/bindgen/JSONEncoder#constructor
   local.tee $3
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/value_return (; 225 ;) (param $0 i64) (param $1 i64)
  local.get $0
  local.get $1
  call $node_modules/near-sdk-as/assembly/runtime/env/imports/env.value_return
 )
 (func $assembly/main/__wrapper_addModerator (; 226 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5248
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  call $assembly/main/addModerator
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#delete (; 227 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $2
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-as/runtime/env/imports/env.storage_remove
  drop
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#delete (; 228 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  global.get $~lib/near-sdk-as/runtime/storage/storage
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#_key
  local.tee $2
  call $~lib/near-sdk-as/runtime/storage/Storage#delete
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/removeModerator (; 229 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $1
  call $assembly/main/isOwner
  i32.eqz
  if
   i32.const 5488
   i32.const 4080
   i32.const 26
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/main/moderators
  local.get $0
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#delete
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/main/__wrapper_removeModerator (; 230 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5248
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  call $assembly/main/removeModerator
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#contains (; 231 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  call $~lib/near-sdk-as/runtime/util/util.stringToBytes
  local.set $2
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-as/runtime/env/imports/env.storage_has_key
  i64.const 0
  i64.ne
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#contains (; 232 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  global.get $~lib/near-sdk-as/runtime/storage/storage
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#_key
  local.tee $2
  call $~lib/near-sdk-as/runtime/storage/Storage#contains
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#getBytes (; 233 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/storage/Storage#_internalReadBytes
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array> (; 234 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  local.tee $5
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $5
   i32.const 12
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 608
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $3
   local.tee $5
   i32.const 12
   call $~lib/rt/__instanceof
   if (result i32)
    local.get $5
   else
    i32.const 0
    i32.const 2880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $5
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.set $6
   local.get $6
   i32.const 0
   i32.eq
   if
    call $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     local.tee $7
     if (result i32)
      local.get $7
     else
      i32.const 0
      i32.const 2880
      i32.const 164
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     call $~lib/rt/stub/__retain
     local.set $7
     local.get $0
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
     local.get $6
     call $~lib/rt/stub/__release
     local.get $7
     return
    else
     local.get $0
     call $~lib/rt/stub/__release
     local.get $1
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $3
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
     local.get $6
     call $~lib/rt/stub/__release
     i32.const 3152
     i32.const 3552
     call $~lib/string/String.__concat
     local.tee $7
     i32.const 3216
     call $~lib/string/String.__concat
     local.tee $8
     i32.const 2880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $6
   local.tee $7
   local.get $4
   local.tee $8
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $8
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $4
   local.get $5
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
  else
   local.get $3
   local.tee $8
   local.get $4
   local.tee $6
   i32.ne
   if
    local.get $8
    call $~lib/rt/stub/__retain
    local.set $8
    local.get $6
    call $~lib/rt/stub/__release
   end
   local.get $8
   local.set $4
  end
  i32.const 0
  local.set $9
  local.get $4
  local.tee $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   i32.const 28
   call $~lib/rt/__instanceof
  end
  if
   call $node_modules/near-sdk-as/assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 3264
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 3296
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 3552
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3344
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $10
   local.get $8
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $7
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $9
   call $~lib/rt/stub/__release
   local.get $10
   return
  end
  local.get $4
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 25
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2880
   i32.const 215
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $8
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 25
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 3392
   local.get $10
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 3440
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  local.tee $6
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $6
  else
   i32.const 0
   i32.const 2880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $10
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $6
  i32.const 0
  local.set $5
  local.get $6
  local.get $5
  call $~lib/as-bignum/utils/atou128
  local.set $7
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $5
  return
 )
 (func $~lib/near-sdk-as/runtime/util/util.parseFromBytes<~lib/as-bignum/integer/u128/u128> (; 235 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 608
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/near-sdk-as/runtime/storage/Storage#getSome<~lib/as-bignum/integer/u128/u128> (; 236 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.set $3
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $3
  local.get $2
  call $~lib/near-sdk-as/runtime/storage/Storage#contains
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  i32.eqz
  if
   i32.const 0
   i32.eqz
   if
    i32.const 5584
    local.get $1
    call $~lib/string/String.__concat
    local.tee $3
    i32.const 5616
    call $~lib/string/String.__concat
    local.tee $2
    i32.const 3904
    i32.const 218
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/storage/Storage#getBytes
  local.tee $2
  local.tee $3
  if (result i32)
   local.get $3
  else
   i32.const 0
   i32.const 3904
   i32.const 223
   i32.const 36
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/near-sdk-as/runtime/util/util.parseFromBytes<~lib/as-bignum/integer/u128/u128>
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  return
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#getSome (; 237 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  global.get $~lib/near-sdk-as/runtime/storage/storage
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#_key
  local.tee $2
  call $~lib/near-sdk-as/runtime/storage/Storage#getSome<~lib/as-bignum/integer/u128/u128>
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/main/totalSupply (; 238 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/main/total_supply
  i32.const 3504
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#contains
  i32.eqz
  if
   i32.const 4512
   return
  end
  global.get $assembly/main/total_supply
  i32.const 3504
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#getSome
  local.tee $0
  i32.const 0
  call $~lib/as-bignum/integer/u128/u128#toString
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/isNull<~lib/string/String> (; 239 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  return
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array> (; 240 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $node_modules/near-sdk-as/assembly/bindgen/isNull<~lib/string/String>
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  end
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline (; 241 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 608
    local.set $1
   end
   i32.const 0
   call $node_modules/near-sdk-as/assembly/bindgen/JSONEncoder#constructor
   local.tee $3
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $assembly/main/__wrapper_totalSupply (; 242 ;)
  (local $0 i32)
  (local $1 i32)
  call $assembly/main/totalSupply
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.set $1
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/balanceOf (; 243 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 5744
  local.get $0
  call $~lib/string/String.__concat
  local.tee $1
  call $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String>
  global.get $assembly/main/balances
  local.get $0
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#contains
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $2
   local.set $3
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  global.get $assembly/main/balances
  local.get $0
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#getSome
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/main/__wrapper_balanceOf (; 244 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5696
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  call $assembly/main/balanceOf
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/allowance (; 245 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.const 2384
  call $~lib/string/String.__concat
  local.tee $2
  local.get $1
  call $~lib/string/String.__concat
  local.tee $3
  call $~lib/rt/stub/__retain
  local.set $4
  global.get $assembly/main/approves
  local.get $4
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#contains
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $5
   local.set $6
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   return
  end
  global.get $assembly/main/approves
  local.get $4
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#getSome
  local.set $5
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $assembly/main/__wrapper_allowance (; 246 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5696
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  local.get $0
  i32.const 5792
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $2
  call $assembly/main/allowance
  local.set $3
  i32.const 1
  global.set $~argumentsLength
  local.get $3
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline
  local.set $4
  local.get $4
  i32.load offset=8
  i64.extend_i32_s
  local.get $4
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/getBalance (; 247 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $assembly/main/balances
  local.get $0
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#contains
  if (result i32)
   global.get $assembly/main/balances
   local.get $0
   call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#getSome
  else
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $1
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
  end
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $assembly/main/transfer (; 248 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (local $18 i64)
  (local $19 i32)
  (local $20 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 5888
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $2
  call $~lib/string/String.__concat
  local.tee $3
  i32.const 5936
  call $~lib/string/String.__concat
  local.tee $4
  local.get $0
  call $~lib/string/String.__concat
  local.tee $5
  i32.const 5968
  call $~lib/string/String.__concat
  local.tee $6
  local.get $1
  i32.const 0
  call $~lib/as-bignum/integer/u128/u128#toString
  local.tee $7
  call $~lib/string/String.__concat
  local.tee $8
  call $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String>
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $9
  call $assembly/main/getBalance
  local.set $10
  local.get $10
  call $~lib/rt/stub/__retain
  local.set $12
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $12
  call $~lib/rt/stub/__retain
  local.set $14
  local.get $11
  call $~lib/rt/stub/__retain
  local.set $13
  local.get $14
  i64.load offset=8
  local.set $15
  local.get $13
  i64.load offset=8
  local.set $16
  local.get $15
  local.get $16
  i64.eq
  if (result i32)
   local.get $14
   i64.load
   local.get $13
   i64.load
   i64.lt_u
  else
   local.get $15
   local.get $16
   i64.lt_u
  end
  local.set $17
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $17
  i32.eqz
  local.set $14
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $14
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6016
   i32.const 4080
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $assembly/main/getBalance
  local.tee $12
  call $~lib/rt/stub/__retain
  local.set $19
  local.get $0
  call $assembly/main/getBalance
  local.set $13
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $17
  local.get $17
  i64.load
  local.set $16
  local.get $13
  i64.load
  local.get $16
  i64.add
  local.set $15
  local.get $13
  i64.load offset=8
  local.get $17
  i64.load offset=8
  i64.add
  local.get $15
  local.get $16
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $18
  i32.const 0
  local.get $15
  local.get $18
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $11
  local.get $17
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $11
  local.tee $13
  call $~lib/rt/stub/__retain
  local.set $14
  local.get $19
  call $~lib/rt/stub/__retain
  local.set $17
  local.get $14
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $17
  i64.load offset=8
  local.set $18
  local.get $11
  i64.load offset=8
  local.set $15
  local.get $18
  local.get $15
  i64.eq
  if (result i32)
   local.get $17
   i64.load
   local.get $11
   i64.load
   i64.gt_u
  else
   local.get $18
   local.get $15
   i64.gt_u
  end
  local.set $20
  local.get $11
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $20
  i32.eqz
  local.set $17
  local.get $14
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $17
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6096
   i32.const 4080
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/main/balances
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $19
  local.get $10
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $20
  local.get $11
  i64.load
  local.set $15
  local.get $15
  local.get $20
  i64.load
  i64.sub
  local.set $18
  local.get $11
  i64.load offset=8
  local.get $20
  i64.load offset=8
  i64.sub
  local.get $18
  local.get $15
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.set $16
  i32.const 0
  local.get $18
  local.get $16
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $14
  local.get $20
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $14
  local.tee $11
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  global.get $assembly/main/balances
  local.get $0
  local.get $0
  call $assembly/main/getBalance
  local.set $14
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $17
  local.get $17
  i64.load
  local.set $16
  local.get $14
  i64.load
  local.get $16
  i64.add
  local.set $18
  local.get $14
  i64.load offset=8
  local.get $17
  i64.load offset=8
  i64.add
  local.get $18
  local.get $16
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $15
  i32.const 0
  local.get $18
  local.get $15
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $20
  local.get $17
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $20
  local.tee $14
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  i32.const 1
  local.set $17
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $17
 )
 (func $assembly/main/__wrapper_transfer (; 249 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5824
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  local.get $0
  i32.const 5856
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $2
  call $assembly/main/transfer
  local.set $3
  i32.const 1
  global.set $~argumentsLength
  local.get $3
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $4
  local.get $4
  i32.load offset=8
  i64.extend_i32_s
  local.get $4
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/approve (; 250 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 6176
  local.get $0
  call $~lib/string/String.__concat
  local.tee $2
  i32.const 5968
  call $~lib/string/String.__concat
  local.tee $3
  local.get $1
  i32.const 0
  call $~lib/as-bignum/integer/u128/u128#toString
  local.tee $4
  call $~lib/string/String.__concat
  local.tee $5
  call $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String>
  global.get $assembly/main/approves
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $6
  i32.const 2384
  call $~lib/string/String.__concat
  local.tee $7
  local.get $0
  call $~lib/string/String.__concat
  local.tee $8
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  i32.const 1
  local.set $9
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $9
 )
 (func $assembly/main/__wrapper_approve (; 251 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5792
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  local.get $0
  i32.const 5856
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $2
  call $assembly/main/approve
  local.set $3
  i32.const 1
  global.set $~argumentsLength
  local.get $3
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $4
  local.get $4
  i32.load offset=8
  i64.extend_i32_s
  local.get $4
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/transferFrom (; 252 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $assembly/main/getBalance
  local.set $3
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $5
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $7
  i64.load offset=8
  local.set $8
  local.get $6
  i64.load offset=8
  local.set $9
  local.get $8
  local.get $9
  i64.eq
  if (result i32)
   local.get $7
   i64.load
   local.get $6
   i64.load
   i64.lt_u
  else
   local.get $8
   local.get $9
   i64.lt_u
  end
  local.set $10
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $10
  i32.eqz
  local.set $7
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6016
   i32.const 4080
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $assembly/main/allowance
  local.set $5
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $5
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $6
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $10
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $4
  i64.load offset=8
  local.set $9
  local.get $7
  i64.load offset=8
  local.set $8
  local.get $9
  local.get $8
  i64.eq
  if (result i32)
   local.get $4
   i64.load
   local.get $7
   i64.load
   i64.gt_u
  else
   local.get $9
   local.get $8
   i64.gt_u
  end
  local.set $11
  local.get $7
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $11
  i32.eqz
  local.set $4
  local.get $10
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6256
   i32.const 4080
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $assembly/main/getBalance
  local.tee $6
  call $~lib/rt/stub/__retain
  local.set $13
  local.get $1
  call $assembly/main/getBalance
  local.set $7
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $11
  i64.load
  local.set $8
  local.get $7
  i64.load
  local.get $8
  i64.add
  local.set $9
  local.get $7
  i64.load offset=8
  local.get $11
  i64.load offset=8
  i64.add
  local.get $9
  local.get $8
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $12
  i32.const 0
  local.get $9
  local.get $12
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $10
  local.get $11
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $10
  local.tee $7
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $13
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $11
  i64.load offset=8
  local.set $12
  local.get $10
  i64.load offset=8
  local.set $9
  local.get $12
  local.get $9
  i64.eq
  if (result i32)
   local.get $11
   i64.load
   local.get $10
   i64.load
   i64.gt_u
  else
   local.get $12
   local.get $9
   i64.gt_u
  end
  local.set $14
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $14
  i32.eqz
  local.set $11
  local.get $4
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $11
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6096
   i32.const 4080
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/main/balances
  local.get $0
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $14
  local.get $10
  i64.load
  local.set $9
  local.get $9
  local.get $14
  i64.load
  i64.sub
  local.set $12
  local.get $10
  i64.load offset=8
  local.get $14
  i64.load offset=8
  i64.sub
  local.get $12
  local.get $9
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.set $8
  i32.const 0
  local.get $12
  local.get $8
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $13
  local.get $14
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $13
  local.tee $10
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  global.get $assembly/main/balances
  local.get $1
  local.get $1
  call $assembly/main/getBalance
  local.set $4
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $11
  i64.load
  local.set $8
  local.get $4
  i64.load
  local.get $8
  i64.add
  local.set $12
  local.get $4
  i64.load offset=8
  local.get $11
  i64.load offset=8
  i64.add
  local.get $12
  local.get $8
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $9
  i32.const 0
  local.get $12
  local.get $9
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $14
  local.get $11
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $14
  local.tee $4
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  i32.const 1
  local.set $11
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $11
 )
 (func $assembly/main/__wrapper_transferFrom (; 253 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 6224
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  local.get $0
  i32.const 5824
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $2
  local.get $0
  i32.const 5856
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $3
  call $assembly/main/transferFrom
  local.set $4
  i32.const 1
  global.set $~argumentsLength
  local.get $4
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $5
  local.get $5
  i32.load offset=8
  i64.extend_i32_s
  local.get $5
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/burn (; 254 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (local $18 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $1
  call $assembly/main/getBalance
  local.set $2
  i32.const 6352
  local.get $2
  i32.const 0
  call $~lib/as-bignum/integer/u128/u128#toString
  local.tee $3
  call $~lib/string/String.__concat
  local.tee $4
  i32.const 6416
  call $~lib/string/String.__concat
  local.tee $5
  local.get $0
  i32.const 0
  call $~lib/as-bignum/integer/u128/u128#toString
  local.tee $6
  call $~lib/string/String.__concat
  local.tee $7
  i32.const 6480
  call $~lib/string/String.__concat
  local.tee $8
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  call $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String>
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $12
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $12
  call $~lib/rt/stub/__retain
  local.set $14
  local.get $11
  call $~lib/rt/stub/__retain
  local.set $13
  local.get $14
  i64.load offset=8
  local.set $15
  local.get $13
  i64.load offset=8
  local.set $16
  local.get $15
  local.get $16
  i64.eq
  if (result i32)
   local.get $14
   i64.load
   local.get $13
   i64.load
   i64.lt_u
  else
   local.get $15
   local.get $16
   i64.lt_u
  end
  local.set $17
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $17
  i32.eqz
  local.set $14
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $14
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6528
   i32.const 4080
   i32.const 77
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/main/total_supply
  i32.const 3504
  call $assembly/main/totalSupply
  local.set $17
  i32.const 0
  local.set $12
  local.get $17
  local.get $12
  call $~lib/as-bignum/utils/atou128
  local.set $11
  local.get $17
  call $~lib/rt/stub/__release
  local.get $11
  local.set $14
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $13
  local.get $14
  i64.load
  local.set $16
  local.get $16
  local.get $13
  i64.load
  i64.sub
  local.set $15
  local.get $14
  i64.load offset=8
  local.get $13
  i64.load offset=8
  i64.sub
  local.get $15
  local.get $16
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.set $18
  i32.const 0
  local.get $15
  local.get $18
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $12
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $12
  local.tee $14
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  global.get $assembly/main/balances
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $13
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $17
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $11
  local.get $17
  i64.load
  local.set $18
  local.get $18
  local.get $11
  i64.load
  i64.sub
  local.set $15
  local.get $17
  i64.load offset=8
  local.get $11
  i64.load offset=8
  i64.sub
  local.get $15
  local.get $18
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.set $16
  i32.const 0
  local.get $15
  local.get $16
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $12
  local.get $11
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $12
  local.tee $17
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  i32.const 1
  local.set $11
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $11
 )
 (func $assembly/main/__wrapper_burn (; 255 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5856
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  call $assembly/main/burn
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#contains (; 256 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  global.get $~lib/near-sdk-as/runtime/storage/storage
  local.get $0
  local.get $1
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#_key
  local.tee $2
  call $~lib/near-sdk-as/runtime/storage/Storage#contains
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/main/isModerator (; 257 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $assembly/main/moderators
  local.get $0
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/string/String>#contains
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $assembly/main/mint (; 258 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $1
  call $assembly/main/isOwner
  if (result i32)
   i32.const 1
  else
   global.get $~lib/near-sdk-as/runtime/contract/context
   call $~lib/near-sdk-as/runtime/contract/Context#get:sender
   local.tee $2
   call $assembly/main/isModerator
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 6608
   i32.const 4080
   i32.const 83
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6688
  local.get $0
  i32.const 0
  call $~lib/as-bignum/integer/u128/u128#toString
  local.tee $2
  call $~lib/string/String.__concat
  local.tee $3
  call $~lib/near-sdk-as/runtime/logging/logging.log<~lib/string/String>
  global.get $assembly/main/total_supply
  i32.const 3504
  call $assembly/main/totalSupply
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  local.get $5
  call $~lib/as-bignum/utils/atou128
  local.set $6
  local.get $4
  call $~lib/rt/stub/__release
  local.get $6
  local.set $4
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $6
  i64.load
  local.set $7
  local.get $4
  i64.load
  local.get $7
  i64.add
  local.set $8
  local.get $4
  i64.load offset=8
  local.get $6
  i64.load offset=8
  i64.add
  local.get $8
  local.get $7
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $9
  i32.const 0
  local.get $8
  local.get $9
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $5
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.tee $4
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  global.get $assembly/main/balances
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $6
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $5
  call $assembly/main/getBalance
  local.set $11
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $10
  i64.load
  local.set $9
  local.get $11
  i64.load
  local.get $9
  i64.add
  local.set $8
  local.get $11
  i64.load offset=8
  local.get $10
  i64.load offset=8
  i64.add
  local.get $8
  local.get $9
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $7
  i32.const 0
  local.get $8
  local.get $7
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $12
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  local.tee $11
  call $~lib/near-sdk-as/runtime/collections/persistentMap/PersistentMap<~lib/string/String,~lib/as-bignum/integer/u128/u128>#set
  i32.const 1
  local.set $10
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $10
 )
 (func $assembly/main/__wrapper_mint (; 259 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 5856
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  call $assembly/main/mint
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/transferOwnership (; 260 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $~lib/near-sdk-as/runtime/contract/context
  call $~lib/near-sdk-as/runtime/contract/Context#get:sender
  local.tee $1
  call $assembly/main/isOwner
  i32.eqz
  if
   i32.const 6768
   i32.const 4080
   i32.const 90
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/near-sdk-as/runtime/storage/storage
  i32.const 5184
  local.get $0
  call $~lib/near-sdk-as/runtime/storage/Storage#set<~lib/string/String>
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/main/__wrapper_transferOwnership (; 261 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $node_modules/near-sdk-as/assembly/bindgen/getInput
  local.set $0
  local.get $0
  i32.const 6736
  call $node_modules/near-sdk-as/assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $1
  call $assembly/main/transferOwnership
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 608
  i32.const 0
  call $node_modules/near-sdk-as/assembly/bindgen/encode<bool,~lib/typedarray/Uint8Array>|trampoline
  local.set $3
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $node_modules/near-sdk-as/assembly/bindgen/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $~start (; 262 ;)
  call $start:assembly/main
  call $start:node_modules/near-sdk-as/assembly/bindgen
 )
)
