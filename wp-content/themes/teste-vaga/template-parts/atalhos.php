<section class="atalhos">
    <div class="container">
        <?php 
            if(have_rows('atalhos', 'options')):
                while(have_rows('atalhos', 'options')):
                    the_row();
        ?>
        <div class="conteudo">
            <h1 class="titulo"><?php the_sub_field('titulo', 'option'); ?></h1>
            <a class="botao" href="<?php the_sub_field('link_botao', 'option'); ?>">
                <?php the_sub_field('texto_botao', 'option'); ?>
            </a>
        </div>
        <?php 
            endwhile;
        endif;
        ?>
    </div>
</section>