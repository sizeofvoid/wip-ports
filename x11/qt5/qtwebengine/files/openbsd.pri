include(linux.pri)

gn_args +=	clang_use_chrome_plugins=false \
		enable_basic_printing=true \
		enable_nacl=false \
		enable_one_click_signin=true \
		enable_print_preview=true \
		enable_remoting=false \
		ffmpeg_branding=\"Chrome\" \
		fieldtrial_testing_like_official_build=true \
		is_cfi=false \
		is_clang=true \
		is_debug=false \
		is_official_build=true \
		optimize_webui=false \
		proprietary_codecs=true \
		treat_warnings_as_errors=false \
		use_allocator=\"none\" \
		use_bundled_fontconfig=false \
		use_cups=true \
		use_dbus=true \
		use_gnome_keyring=false \
		use_jumbo_build=true \
		use_kerberos=false \
		use_sndio=true \
		use_sysroot=false \
		use_system_ffmpeg=false \
		use_system_minizip=true \
		use_system_re2=false

gn_args +=	optimize_webui=true \
		enable_hangout_services_extension=true \
		enable_log_error_not_reached=true \
		enable_rust=false \
		use_system_libdrm=true \
		use_system_libjpeg=true \
		use_system_harfbuzz=true \
		use_system_freetype=false \
		icu_use_data_file=false \
		use_allocator_shim=false \
		use_partition_alloc=true \
		use_partition_alloc_as_malloc=false \
		enable_backup_ref_ptr_support=false \
		disable_fieldtrial_testing_config=true \
		fatal_linker_warnings=false \
		use_custom_libcxx=true \
		use_custom_libunwind=true \
		use_udev=true \
		use_gio=true \
		v8_enable_cet_ibt=true \
		use_thin_lto=false \
		thin_lto_enable_optimizations=true
