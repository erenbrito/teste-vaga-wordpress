<?php get_header(); the_post();?>

<main class="home">
	<section class="banner fadeIn">
		<?php the_post(); ?>
		<div class="container">
			<div class="row">
					
				<?php 
					if(have_rows('banner')):
						while(have_rows('banner')):
							the_row();
				?>
					<div class="col-6 content-left">
						<h1>
							<?php the_sub_field('titulo'); ?>
						</h1>
						<p>
							<?php the_sub_field('texto_abaixo_do_titulo'); ?>
						</p>
						<?php 
							if(have_rows('botao')):
								while(have_rows('botao')):
									the_row();
						?>
							<a class="button scroll-to" href="<?php the_sub_field('link'); ?>"><?php the_sub_field('texto'); ?></a>
						<?php 
							endwhile;
						endif;
						?>
						<p class="text-blue"><?php the_sub_field('texto_abaixo_botao'); ?></p>
						
					</div>

					<div class="col-6 content-right">
						<img class="image" src="<?php the_sub_field('imagem'); ?>" alt="">
					</div>
				<?php 
					endwhile;
				endif;
				?>
			</div>
		</div>
		
	</section>

	<section class="organizar">
		<div class="container">
			<div class="row box">
				<?php 
					if(have_rows('secao_organizar')):
						while(have_rows('secao_organizar')):
							the_row();
				?>
					<div class="col-6 content-left">
						<h1>
							<?php the_sub_field('titulo'); ?>
						</h1>
						<p>
							<?php the_sub_field('texto_abaixo_do_titulo'); ?>
						</p>
						<?php 
							if(have_rows('botao')):
								while(have_rows('botao')):
									the_row();
						?>
							<a class="button scroll-to" href="<?php the_sub_field('link'); ?>"><?php the_sub_field('texto_botao'); ?></a>
						<?php 
							endwhile;
						endif;
						?>
						
					</div>

					<div class="col-6 content-right">
						<img class="image" src="<?php the_sub_field('imagem'); ?>" alt="">
					</div>
				<?php 
					endwhile;
				endif;
				?>
			</div>
		</div>
	</section>

	<section class="plataforma">
		<div class="container">
			<?php 
				if(have_rows('secao_plataforma')):
					while(have_rows('secao_plataforma')):
						the_row();
			?>
				<h1 class="title"><?php the_sub_field('titulo'); ?></h1>
				<p class="content">
					<?php the_sub_field('subtitulo'); ?>
				</p>
				<ul class="carroussel">
					<div class="swiper" id="swiper-plataforma">
						<div class="swiper-wrapper">
							<?php 
								if(have_rows('beneficios')):
									while(have_rows('beneficios')):
										the_row();
							?>
								<div class="swiper-slide">
									<li class="item">
										<img src="<?php the_sub_field('imagem'); ?>" alt="">
										<h2><?php the_sub_field('titulo'); ?></h2>
										<p class="content"><?php the_sub_field('conteudo'); ?></p>
									</li>
								</div>
							<?php 
								endwhile;
							endif;
							?>
						</div>
					</div>
					<div class="swiper-button-prev"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/seta.svg" alt=""></div>
					<div class="swiper-button-next"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/seta.svg" alt=""></div>
				</ul>
					
			</div>
			<?php 
				endwhile;
			endif;
			?>	
		</div>
	</section>

	<section class="calcule" id="calcule">
		<div class="container">
			<div class="row box">
				<?php 
					if(have_rows('secao_chega_de_pagar_caro')):
						while(have_rows('secao_chega_de_pagar_caro')):
							the_row();
				?>
					<div class="col-5 content-left">
						<h1>
							<?php the_sub_field('titulo'); ?>
						</h1>
						<p>
							<?php the_sub_field('conteudo'); ?>
						</p>
					</div>

					<div class="col-7 content-right">
						<div class="box-calc">
							<h2>Calcule a sua economia</h2>
							<p>Quantos pagamentos você costuma fazer por mês?</p>
							<div class="slider-range">
								<span id="ted-bullet" class="rs-label">10</span>
								<input id="num-ted-mes" class="rs-range" type="range" value="0" min="10" max="1000" onChange="rangeSlides(this.value)" onmousemove="rangeSlides(this.value)">
								<span class="numbers-left">10</span>
								<span class="numbers-right">+1000</span>
							</div>
							<h3>Quanto você paga pelo TED atualmente?*</h3>
							<div class="box-input">
								<input class="valor-ted" type="number" id="valor-ted">
								<span>R$</span>
							</div>
							<button type="button" data-toggle="modal" data-target="#calculeModal">calcular</button>
						</div>
					</div>
				<?php 
					endwhile;
				endif;
				?>
			</div>
		</div>
	</section>

	<!-- Modal -->
	<div class="modal fade" id="calculeModal" tabindex="-1" role="dialog" aria-labelledby="calculeModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<h1>Com o BPP Corp, você economiza</h1>
				<p class="results">R$ 6000,00</p>
				<span>por mês</span>
				<button>Peça já sua proposta</button>

			</div>
			</div>
		</div>
	</div>

	<section class="posts">
		<div class="container">
			<h1 class="title-section">Últimos posts</h1>
			<div class="row">
                <?php 
                    $blog = new WP_Query('post_type=post&posts_per_page=-1');

                    if($blog->have_posts()):
                        while($blog->have_posts()):
                            $blog->the_post();
                ?>
                    <div class="col-4 post">
                        <a class="thumb" href="<?php the_permalink(); ?>" alt="Saiba Mais">
                            <div class="image" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>)">
                            </div>
						</a>
                    
                        <div class="box">
                            <h1 class="title">
                                <?php the_title(); ?>
                            </h1>

                            <div class="text">
                                <?php the_excerpt(); ?>
                            </div>
                        </div>
                    </div>
                <?php
                    endwhile;
                    wp_reset_postdata();
                endif;
                ?>
            </div>
		</div>
	</section>
</main>	
<?php get_footer(); ?>