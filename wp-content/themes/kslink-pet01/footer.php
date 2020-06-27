    </main>
    <footer id="footer" class="bg-dark text-center">
      <div class="container-fluid">
        <?php if(function_exists('get_site_copyright')) {
          get_site_copyright();
        } ?>
      </div>
  </div>
  <a id="to-top" class="position-fixed d-none"><span class="oi oi-arrow-top"></span></a>
  <?php wp_footer() ?>
</body>
</html>
