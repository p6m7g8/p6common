# p6m7g8/p6common

A POSIX.2 compliant BSD sh shell wrapper library.

## Functions

### bootstrap
- p6_bootstrap()

### alias
- p6_alias_cd_dirs()
- p6_alias()

### color
- p6_color_name_to_rgb()
- p6_color_hex_to_d16b()
- p6_color_say()
- p6_color_to_code()
- p6_color_opacity_factor()

### config
- p6_config_load()

### constants
- P6_DIR=$TMPDIR/p6
- P6_DIR_TRANSIENTS=$P6_DIR/transients
- P6_TRANSIENT_LOG=$P6_DIR_TRANSIENTS/list-$$.txt
- P6_TRUE=0
- P6_FALSE=1
- P6_RETURN_SUCCESS=0
- P6_RETURN_FAIL=0
- P6_EXIT_SUCCESS=0
- P6_EXIT_FAIL=1
- P6_EXIT_ARGS=2

### io & debug
- p6_dryrunning()
- p6_verbose()
- p6_debug()
- p6_log()
- p6_debugging()
- p6_debugging_system_on()
- p6_echo()
- p6_msg()
- p6_error()
- p6_die()
- p6_h1()
- p6_h2()
- p6_h3()
- p6_h4()
- p6_h5()

### dir
- p6_dir_list_recursive()
- p6_dir_exists()
- p6_dir_rmrf()
- p6_dir_mk()
- p6_dir_cp()
- p6_dir_mv()
- p6_dir_cd()
- p6_dir_load()
- p6_dir_list()
- p6_dirs_list()

### dt
- p6_dt_yesterday()
- p6_dt_tomorrow()
- p6_dt_mtime()
- p6_dt_now_epoch_seconds()
- p6_dt_now()

### env
- p6_env_export()
- p6_env_export_un()
- p6_env_list()

### file
- p6_file_unlink()
- p6_file_contains()
- p6_file_line_delete_last()
- p6_file_repalce()
- p6_file_exists()
- p6_file_display()
- p6_file_create()
- p6_file_write()
- p6_file_append()
- p6_file_load()
- p6_file_ma_sync()
- p6_file_symlink()
- p6_file_cascade()
- p6_file_move()
- p6_file_copy()
- p6_file_rmf()

### include
- p6_include_module()

### int
- p6_int_confirm_ask()

### json
- p6_json_key_2_value()
- p6_json_value_2_key()

### lang
- p6_lang_cmd_2_env()
- p6_lang_env_2_cmd()
- p6_lang_version()
- p6_lang_system_version()

### math
- p6_math_inc()
- p6_math_dec()
- p6_math_le()

### xxx
- p6_pgs()
- p6_len()
- p6_xclean()

### openssl
- p6_openssl_b64()
- p6_openssl_b64_d()
- p6_openssl_req_509()
- p6_openssl_genrsa()
- p6_openssl_sha1()
- p6_openssl_sha256()

### os
- p6_os_name()

### path
- p6_path_if()
- p6_path_default()
- p6_path_current()

### remote
- p6_remote_ssh_do()

### retry
- p6_retry_delay_doubling()
- p6_retry_delay_log()
- p6_retry_delay()

### return
- p6_return_size_t()
- p6_return_int()
- p6_return_true()
- p6_return_float()
- p6_return_str()
- p6_return_path()
- p6_return_words()
- p6_return_code_as_code()
- p6_return_code_as_value()
- p6_return_false()
- p6_return_void()
- p6_return_bool()
- p6_return()

### run
- p6_run_parallel()
- p6_run_serial()
- p6_run_if_not_in()
- p6_run_code()
- p6_run_script()
- p6_run_read_cmd()
- p6_run_write_cmd()
- p6_run_retry()

### ssh
- p6_ssh_key_delete()
- p6_ssh_key_pub_from_priv()
- p6_ssh_key_make()
- p6_ssh_key_remove()
- p6_ssh_keys_chmod()
- p6_ssh_key_check()
- p6_ssh_key_fingerprint()
- p6_ssh_key_add()

### string
- p6_string_lc()
- p6_string_uc()
- p6_string_replace()
- p6_string_init_cap()
- p6_string_blank()
- p6_string_len()
- p6_string_append()

### template
- p6_template_process()
- p6_template_fill_in()
- p6_template_fill_args()

### token
- p6_token_hash()
- p6_token_random()
- p6_token_passwd()

### transient
- p6_transient_create()
- p6_transient_delete()

### uri
- p6_uri_name()
- p6_uri_path()

### version
- p6_version_get()
- p6_version_bump()
- p6_version_next()
