<?php
/**
 * WordPress の基本設定
 *
 * このファイルは、インストール時に wp-config.php 作成ウィザードが利用します。
 * ウィザードを介さずにこのファイルを "wp-config.php" という名前でコピーして
 * 直接編集して値を入力してもかまいません。
 *
 * このファイルは、以下の設定を含みます。
 *
 * * MySQL 設定
 * * 秘密鍵
 * * データベーステーブル接頭辞
 * * ABSPATH
 *
 * @link https://ja.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// 注意:
// Windows の "メモ帳" でこのファイルを編集しないでください !
// 問題なく使えるテキストエディタ
// (http://wpdocs.osdn.jp/%E7%94%A8%E8%AA%9E%E9%9B%86#.E3.83.86.E3.82.AD.E3.82.B9.E3.83.88.E3.82.A8.E3.83.87.E3.82.A3.E3.82.BF 参照)
// を使用し、必ず UTF-8 の BOM なし (UTF-8N) で保存してください。

// ** MySQL 設定 - この情報はホスティング先から入手してください。 ** //
/** WordPress のためのデータベース名 */
define( 'DB_NAME', 'kslink_pet01' );

/** MySQL データベースのユーザー名 */
define( 'DB_USER', 'root' );

/** MySQL データベースのパスワード */
define( 'DB_PASSWORD', '' );

/** MySQL のホスト名 */
define( 'DB_HOST', 'localhost' );

/** データベースのテーブルを作成する際のデータベースの文字セット */
define( 'DB_CHARSET', 'utf8mb4' );

/** データベースの照合順序 (ほとんどの場合変更する必要はありません) */
define( 'DB_COLLATE', '' );

/**#@+
 * 認証用ユニークキー
 *
 * それぞれを異なるユニーク (一意) な文字列に変更してください。
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org の秘密鍵サービス} で自動生成することもできます。
 * 後でいつでも変更して、既存のすべての cookie を無効にできます。これにより、すべてのユーザーを強制的に再ログインさせることになります。
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '!73d*U+_%j`>lEf 5Djp5.NeG^9&9}[gP]_E4EXD)Xrf}b?V8C*sq;17$u@}>N]2' );
define( 'SECURE_AUTH_KEY',  'YIXb97O$@/p`kaEvP{R$SD6.(sC,V#Yc>y#J%sxK6l~:6}EsDR,Yfx_5nz!)-nLi' );
define( 'LOGGED_IN_KEY',    'XKWCN@8G5rx<U/Sxgk{e+|e`kf:]WZch2eN@p>1zIF<O&Fa2#*nxjnel@O7T4pL*' );
define( 'NONCE_KEY',        '}v(a7G`6-hFgjrzPC~3g*XS?%eobpatjq^t8oi~fZ7,Gzsu#c8FIdNo{W(AP?7a!' );
define( 'AUTH_SALT',        '->JvyNq>^l9*0XK|,u2S_T[5^jM>-4T8:%h5Dld*m&T=VW2[38s2gOft[+.E6&js' );
define( 'SECURE_AUTH_SALT', 'W3jh|^Ku{it,8m(J^H|;)w~3]E5-q2{NY&aP>tmLO;({h,cx!>i (MBYvgA%vM~C' );
define( 'LOGGED_IN_SALT',   ']8I=-MVUgM>vqZd7xG .gqa.|K>3anXub_M_jqNz+~AFPlS^Rq;L+INPI.Pc?m.[' );
define( 'NONCE_SALT',       'O#+OIh;ereX|WwG1Ss4KLmkaOFvBbQJin0+i=a0dH6x k=G=,IOJNbla`S=Us+*D' );

/**#@-*/

/**
 * WordPress データベーステーブルの接頭辞
 *
 * それぞれにユニーク (一意) な接頭辞を与えることで一つのデータベースに複数の WordPress を
 * インストールすることができます。半角英数字と下線のみを使用してください。
 */
$table_prefix = 'wp_';

/**
 * 開発者へ: WordPress デバッグモード
 *
 * この値を true にすると、開発中に注意 (notice) を表示します。
 * テーマおよびプラグインの開発者には、その開発環境においてこの WP_DEBUG を使用することを強く推奨します。
 *
 * その他のデバッグに利用できる定数についてはドキュメンテーションをご覧ください。
 *
 * @link https://ja.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* 編集が必要なのはここまでです ! WordPress でのパブリッシングをお楽しみください。 */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
