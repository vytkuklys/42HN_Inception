<?php
define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'vkuklys' );
define( 'DB_PASSWORD', 'whynot123' );
define( 'DB_HOST', 'mariadb' );
$table_prefix = 'wp_';

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';