<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações
// com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'db_vagateste');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'F/lSf5]s<UW( :lkPPdP~0U-EGPf[f~er/[b~&~QYw>-[L]2Pf/$2)jYzD/!bu7`');
define('SECURE_AUTH_KEY',  'F-x:7L8-fWj@_ac +(*%5{1tkD3MTs/gTZO>)-z.NCle)G*pHEd$&H}`1.2|h3:L');
define('LOGGED_IN_KEY',    'j7Q]CmsY2@;A#T_=Kk[BE$nF!MD7,:1K?/S2r(Y$L{m2nq1iG11t~Y!1,$:$tEH@');
define('NONCE_KEY',        'ro[wZ*Z(~vMAsHsM0~Xl19.E;7DyJCqg*1U&J!mCP|ERwv Wb-I}zFEEBYTq+Xoo');
define('AUTH_SALT',        'r((686-TUTu!!ib+gU]dV3F_F]5klKbk F>m{FyA8JPTU1(9$-O:T~Y9G6h}/`TS');
define('SECURE_AUTH_SALT', 'u)?}X<X/nj;:~HdLFqv4Iv0Ix2Jf??R)){}qKVU6HOVly5{^Ex#rknzX_qG`yyB}');
define('LOGGED_IN_SALT',   'IM5v]a_k]hxyrGE1VcOfyCAC;{XztQK=cf(y79fUdctr_?4g<m_%aoi;Q&n}vg-?');
define('NONCE_SALT',       'c<tg>N*pn2SW}0jN>pzP9y>EMC75Env(V7xb,T8OC$3h-zqGzkC|)2Os[5_d!x#(');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

define('FS_METHOD','direct');


/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

define( 'UPLOADS', 'wp-content/uploads' );

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');




