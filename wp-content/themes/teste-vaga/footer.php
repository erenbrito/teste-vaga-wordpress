<footer class="footer">
	<?php the_post(); ?>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<p class="texto">© 2022. Todos os direitos reservados.</p>
			</div>
			<div class="col-6 icons">
				<?php 
					if(have_rows('rodape_redes_sociais')):
						while(have_rows('rodape_redes_sociais')):
							the_row();
				?>
				
					<a href="<?php the_sub_field('link'); ?>">
						<img src="<?php the_sub_field('imagem'); ?>" alt="">
					</a>
				
				<?php 
					endwhile;
				endif;
				?>
			</div>
		</div>	
	</div>
</footer>
<?php wp_footer(); ?> 
</body>
</html>