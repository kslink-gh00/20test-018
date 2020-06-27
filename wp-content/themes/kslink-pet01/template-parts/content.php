<article class="mb-5 pt-5">
	<?php if(is_archive() || is_home()) : ?>
	<header class="content-header">
		<h1 itemprop="headline"><a href="<?php the_permalink() ?>"><?php the_title() ?></a></h1>
	</header>
	<?php endif ?>
	<div class="content-main">
		<?php if(is_archive() || is_home()): ?>
			<?php the_excerpt() ?>
		<?php else: ?>
			<?php the_content() ?>
		<?php endif; ?>
	</div>
</article>
