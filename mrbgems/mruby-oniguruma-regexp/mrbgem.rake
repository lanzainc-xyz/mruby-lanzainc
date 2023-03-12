MRuby::Gem::Specification.new('mruby-oniguruma-regexp') do |spec|
	spec.license = 'MIT'
	spec.authors = 'mattn'
	spec.add_dependency 'mruby-string-ext', core: 'mruby-string-ext'


	# Bundled in
	spec.cc.defines << 'HAVE_ONIGURUMA_H'
	
	onig_dirname = 'oniguruma'
	onig_src = "#{spec.dir}/#{onig_dirname}"
	spec.objs += %W(
	#{onig_src}/regerror.c
	#{onig_src}/regparse.c
	#{onig_src}/regext.c
	#{onig_src}/regcomp.c
	#{onig_src}/regexec.c
	#{onig_src}/reggnu.c
	#{onig_src}/regenc.c
	#{onig_src}/regsyntax.c
	#{onig_src}/regtrav.c
	#{onig_src}/regversion.c
	#{onig_src}/st.c
	#{onig_src}/onig_init.c
	#{onig_src}/unicode.c
	#{onig_src}/ascii.c
	#{onig_src}/utf8.c
	#{onig_src}/utf16_be.c
	#{onig_src}/utf16_le.c
	#{onig_src}/utf32_be.c
	#{onig_src}/utf32_le.c
	#{onig_src}/euc_jp.c
	#{onig_src}/sjis.c
	#{onig_src}/iso8859_1.c
	#{onig_src}/iso8859_2.c
	#{onig_src}/iso8859_3.c
	#{onig_src}/iso8859_4.c
	#{onig_src}/iso8859_5.c
	#{onig_src}/iso8859_6.c
	#{onig_src}/iso8859_7.c
	#{onig_src}/iso8859_8.c
	#{onig_src}/iso8859_9.c
	#{onig_src}/iso8859_10.c
	#{onig_src}/iso8859_11.c
	#{onig_src}/iso8859_13.c
	#{onig_src}/iso8859_14.c
	#{onig_src}/iso8859_15.c
	#{onig_src}/iso8859_16.c
	#{onig_src}/euc_tw.c
	#{onig_src}/euc_kr.c
	#{onig_src}/big5.c
	#{onig_src}/gb18030.c
	#{onig_src}/koi8_r.c
	#{onig_src}/cp1251.c
	#{onig_src}/euc_jp_prop.c
	#{onig_src}/sjis_prop.c
	#{onig_src}/unicode_unfold_key.c
	#{onig_src}/unicode_fold1_key.c
	#{onig_src}/unicode_fold2_key.c
	#{onig_src}/unicode_fold3_key.c
	).map { |f| f.relative_path_from(dir).pathmap("#{build_dir}/%X#{spec.exts.object}" ) }
	
	
end
