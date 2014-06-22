#!/usr/bin/env bash

mkdir bin
ln -s ../vendor/wp-cli/wp-cli/bin/wp bin/wp
cat <<- 'EOF' > wordpress/wp-config.php
<?php
define('DB_NAME', 'ida');
define('DB_USER', 'ida');
define('DB_PASSWORD', 'ida');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
define('AUTH_KEY',         '`z%Wq[u6 /bpBEl9#+v1`&Q(j !*?l}5A<}NSLVWO.7m.EC;8$cg/xrKryH&j;C8');
define('SECURE_AUTH_KEY',  'Sw_dU8eq -*]0Qj~`y_i_Il5A1vN;-A^N1$snw41}/p~&w~;g=H-C; 2.)hSl&(u');
define('LOGGED_IN_KEY',    'JFH|f !tu9#t({J)GDRt#x$W/a,rU_*!nne(kZ:|ePXp.->-T*SrQ-?Rw4H|Vdi&');
define('NONCE_KEY',        'Mg+Zww)6QP5fTh_UbM`zw!i+ zx8D0yHy]m=Sb$Ad;+IJ~Pcs`-TM:5pZsx% xjD');
define('AUTH_SALT',        'q{t^[06i[H&g2rHTg+lN_D|7cO[66F|-bJCs-@ub2Yi6hc4acLC^0+BJPe+vt:O{');
define('SECURE_AUTH_SALT', 'UF{CDFQIvim8g~w~nm^XGke7MoTfnW(a9;`43%+E3(#MoS/>k.IwDp]oj_8Zc1Yy');
define('LOGGED_IN_SALT',   '(@sP)kc7o_-L)idFt.1Dal,PXpBp6Bw3o!TuAxi D>[;kD!B_:.7ILUr(L]/LRuK');
define('NONCE_SALT',       'm)WP||R6Z:*9CK-U=<rp B?oQiiY38~T0u}#0~xR0!^C;Ss(dNZ#;5 0y4wG|MYz');
$table_prefix  = 'wp_';
define('WPLANG', '');

define('WP_DEBUG', false);
/** Absolute path to the WordPress directory. */

if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
require_once(ABSPATH . '../vendor/autoload.php');
EOF
