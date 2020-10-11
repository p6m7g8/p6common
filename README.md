### init.zsh:
- p6df::modules::p6common::init()
- p6df::modules::p6common::version()

### _bootstrap.sh:
- p6_bootstrap([dir=$P6_DFZ_SRC_P6M7G8_DIR/p6common], [islocal=])
- p6_bootstrap_optimize(dir, islocal)

### alias.sh:
- p6_alias(from, to)
- p6_alias_cd_dirs(dir)

### color.sh:
- p6_color_hex_to_d16b(hex, ord)
- p6_color_ize(color_fg, color_bg, msg)
- p6_color_opacity_factor()
- p6_color_say(color_fg, color_bg, msg)
- size_t code = p6_color_to_code(color)
- str rgb = p6_color_name_to_rgb(name)

### config.sh:
- p6_config_load([defaults_file=$(dirname $0)/../conf/defaults.conf])

### debug.sh:
- bool rv = p6_debugging()
- bool rv = p6_dryrunning()
- code rc = p6_debugging_system_on(systems, system)
- p6_debug(msg)
- p6_log(msg)
- p6_verbose(level)

### dir.sh:
- code rc = p6_dir_exists(dir)
- p6_dir_cd(dir)
- p6_dir_cp(src, dst)
- p6_dir_load(dirs)
- p6_dir_mk(dir)
- p6_dir_mv(src, dst)
- p6_dir_rmrf(dir)
- words children = p6_dir_list(dir)
- words descendants = p6_dir_list_recursive(dir)
- words entries = p6_dirs_list(dirs)

### dt.sh:
- size_t epoch_seconds = p6_dt_now_epoch_seconds()
- size_t modified_epoch_seconds = p6_dt_mtime(file)
- str dt = p6_dt_now()
- str dt = p6_dt_tomorrow()
- str dt = p6_dt_yesterday()

### env.sh:
- p6_env_export(var, val)
- p6_env_export_un(var)
- p6_env_list(glob)

### file.sh:
- bool rv = p6_file_exists(file)
- p6_file_append(file, contents)
- p6_file_contains(pattern, file)
- p6_file_copy(src, dst)
- p6_file_create(file)
- p6_file_display(file)
- p6_file_line_delete_last(file)
- p6_file_load(file)
- p6_file_ma_sync(from, to)
- p6_file_move(src, dst)
- p6_file_repalce(file, sed_cmd)
- p6_file_rmf(file)
- p6_file_symlink(to, from)
- p6_file_unlink(file)
- p6_file_write(file, contents)
- path path/$cmd = p6_file_cascade(cmd, exts, ...)

### inc.sh:
- p6_include_module(module, [start=init.sh])

### interactive.sh:
- code 42 = p6_int_confirm_ask()
- str PASSWORD = p6_int_password_read()

### io.sh:
- p6_die(code)
- p6_echo()
- p6_error(msg)
- p6_h1(header)
- p6_h2(header)
- p6_h3(header)
- p6_h4(header)
- p6_h5(header)
- p6_msg(msg)

### json.sh:
- str val = p6_json_key_2_value(key, file)
- str val = p6_json_value_2_key(key, file)

### lang.sh:
- str prefix = p6_lang_cmd_2_env(cmd)
- str rcmd = p6_lang_env_2_cmd(prefix)
- str sys@$ver = p6_lang_system_version(prefix)
- str v = p6_lang_version(prefix)

### math.sh:
- code rc = p6_math_gt(a, b)
- code rc = p6_math_gte(a, b)
- code rc = p6_math_lt(a, b)
- code rc = p6_math_lte(a, b)
- int result = p6_math_inc(a, [b=1])
- int rv = p6_math_sub(a, b)
- p6_math_dec(a)

### misc.sh:
- p6_pgs()
- p6_xclean()
- size_t len = p6_len(s)

### os.sh:
- str name = p6_os_name()

### path.sh:
- p6_path_current()
- p6_path_default()
- true  = p6_path_if(dir)

### remote.sh:
- p6_remote_ssh_do(cmd)

### retry.sh:
- p6_retry_delay_doubling()
- p6_retry_delay_log()
- size_t i = p6_retry_delay(type, i)

### return.sh:
- code  = p6_return_false()
- code  = p6_return_true()
- code bool = p6_return_bool(bool)
- code rc = p6_return_code_as_code(rc)
- code rc = p6_return_code_as_value(rc)
- p6_return_void()
- true  = p6_return(rv)
- unkown float = p6_return_float(float)
- unkown int = p6_return_int(int)
- unkown path = p6_return_path(path)
- unkown size_t = p6_return_size_t(size_t)
- unkown str = p6_return_str(str)
- unkown words = p6_return_words(words)

### run.sh:
- code rc = p6_run_code(code)
- code rc = p6_run_read_cmd(cmd)
- code rc = p6_run_write_cmd(cmd)
- code rc = p6_run_yield(func, ...)
- p6_run_parallel(i, parallel, things, cmd, ...)
- p6_run_retry(stop, fail, func, ...)
- p6_run_script(cmd_env, shell, set_flags, cmd, [exts=.sh], arg_list, ...)
- p6_run_serial(things, cmd, ...)
- true  = p6_run_if_not_in(script, skip_list)

### ssh.sh:
- code rc = p6_ssh_key_check(priv, test_pub)
- p6_ssh_key_add(key_file_priv)
- p6_ssh_key_delete(key_file_priv)
- p6_ssh_key_fingerprint()
- p6_ssh_key_make(key_file_priv)
- p6_ssh_key_pub_from_priv(key_file_priv, [key_file_pub=${key_file_priv])
- p6_ssh_key_remove(key_file_priv, [key_file_pub=${key_file_priv])
- p6_ssh_keys_chmod(key_file_priv)

### string.sh:
- bool rv = p6_string_blank(str)
- bool rv = p6_string_eq(str, val)
- size_t len = p6_string_len(str)
- str str_a = p6_string_append(str, add, [sep= ])
- str str_ic = p6_string_init_cap(str)
- str str_lc = p6_string_lc(str)
- str str_r = p6_string_replace(str, from, to)
- str str_uc = p6_string_uc(str)

### template.sh:
- str processed = p6_template_process(infile, ...)

### tokens.sh:
- str hashed = p6_token_hash(string)
- str pass = p6_token_passwd(len)
- str token = p6_token_random(len)

### transients.sh:
- code rc = p6_transient_is(dir)
- code rc = p6_transient_persist_is(dir)
- p6_transient_delete(dir, [handler_name=])
- p6_transient_persist(dir)
- p6_transient_persist_un(dir)
- path file = p6_transient_create_file(file_name)
- str  = p6_transient_create(dir_name, [len=4])

### uri.sh:
- path name = p6_uri_name(uri)
- path name = p6_uri_path(uri)

### versioning.sh:
- str next_version = p6_version_bump(version, [file=conf/meta])
- str next_version = p6_version_next(next_version, [file=conf/meta])
- str version = p6_version_get([file=conf/meta])

### word.sh:
- words result = p6_word_not(a, b)
- words words = p6_word_unique(...)

### zsh.sh:
- p6_zsh_profile_off()
- p6_zsh_profile_on(name)

