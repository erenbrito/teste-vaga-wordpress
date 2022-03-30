<?php

function meupersonalizador($wp_customize){

    // Rede Social
		$wp_customize->add_section( 'sec_redesocial', array(
			'title'			=> 'Rede social',
			'description'	=> 'Informe imagem e url'
        ));
        
        // Facebook 
		$wp_customize->add_setting( 'set_redesocial_facebook', array(
			'type'		=> 'theme_mod',
			'default'	=> ''
		));

		$wp_customize->add_control( 'ctrl_redesocial_facebook', array(
			'label' 	=> 'Facebook',
			'description'	=> 'Coloque a url do facebook',
			'section'		=> 'sec_redesocial',
			'settings'		=> 'set_redesocial_facebook',
			'type'			=> 'text'
        ) );
        
        // Instagram 
		$wp_customize->add_setting( 'set_redesocial_instagram', array(
			'type'		=> 'theme_mod',
			'default'	=> ''
		));

		$wp_customize->add_control( 'ctrl_redesocial_instagram', array(
			'label' 	=> 'Instagram',
			'description'	=> 'Coloque a url do instagram',
			'section'		=> 'sec_redesocial',
			'settings'		=> 'set_redesocial_instagram',
			'type'			=> 'text'
        ) );
        
        // Linkedin 
		$wp_customize->add_setting( 'set_redesocial_linkedin', array(
			'type'		=> 'theme_mod',
			'default'	=> ''
		));

		$wp_customize->add_control( 'ctrl_redesocial_linkedin', array(
			'label' 	=> 'Linkedin',
			'description'	=> 'Coloque a url do linkedin',
			'section'		=> 'sec_redesocial',
			'settings'		=> 'set_redesocial_linkedin',
			'type'			=> 'text'
		) );

		// Twitter 
		$wp_customize->add_setting( 'set_redesocial_twitter', array(
			'type'		=> 'theme_mod',
			'default'	=> ''
		));

		$wp_customize->add_control( 'ctrl_redesocial_twitter', array(
			'label' 	=> 'Twitter',
			'description'	=> 'Coloque a url do twitter',
			'section'		=> 'sec_redesocial',
			'settings'		=> 'set_redesocial_twitter',
			'type'			=> 'text'
		) );

}
add_action( 'customize_register', 'meupersonalizador' );
