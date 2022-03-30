<?php get_header(); 
	the_post();
?>

<main class="page-notfound">
	<div class="notfound">
		<div class="notfound-404">
			<h1>Ops...</h1>
			<p>A página que você está procurando não foi encontrada.</p>
			<button class="botao" onClick="javascript:window.history.back();" alt="Voltar">
				Voltar
			</button>
		</div>
	</div>
</main>

<?php get_footer(); ?>