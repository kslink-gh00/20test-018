<?php get_header(); ?>
	<?php if ( have_posts() ) : ?>
		<div class="container">
			<?php while ( have_posts() ) :
				the_post(); ?>
				<?php get_template_part( 'template-parts/content', get_post_format() ); ?>
			<?php endwhile; ?>
			<?php if(is_archive() || is_home()): ?>
				<?php
				the_posts_pagination(
					array(
						'mid_size'  => 2,
						'prev_text' => sprintf(
							'%s <span class="nav-prev-text">%s</span>',
							__( '<<' ),
							__( 'Newer posts' )
						),
						'next_text' => sprintf(
							'<span class="nav-next-text">%s</span> %s',
							__( 'Older posts' ),
							__( '>>' )
						),
					)
				);
				?>
			<?php endif ?>
		</div>
	<?php else : ?>
		<?php get_template_part( 'template-parts/content', 'none' ); ?>
	<?php endif; ?>
<?php get_footer(); ?>
