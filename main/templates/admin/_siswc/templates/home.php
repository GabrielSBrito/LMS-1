<header class="dashboard_header">
    <div class="dashboard_header_title">
        <h1 class="icon-folder-open">Arquivos</h1>
        <p class="dashboard_header_breadcrumbs">
            &raquo; <?= ADMIN_NAME; ?>
            <span class="crumb">/</span>
            <a title="<?= ADMIN_NAME; ?>" href="dashboard.php?wc=home">Dashboard</a>
            <span class="crumb">/</span>
            Arquivos
        </p>
    </div>
</header>
  
<div class="dashboard_content custom_app">
    <article class="box box30">
        <header>
            <h1>Arquivos</h1>
        </header>
        <div class="box_content">
            <?php
            chdir('../themes/wc_default');
            $arquivos = glob("{*.php,*.css}", GLOB_BRACE);
            echo "<ul class='arqeditmenu'>";
            foreach ($arquivos as $arquivo):
                echo "<li><a href='dashboard.php?wc=templates/home&edit={$arquivo}' title='Editar página {$arquivo}'>{$arquivo}</a></li>";
            endforeach;
            echo "</ul>";

            $editArq = filter_input(INPUT_GET, 'edit', FILTER_DEFAULT);
            $editArq = $editArq ? $editArq : 'index.php';
            $lines = file($editArq, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
            ?>
        </div>
    </article>
    <article class="box box70">
        <header>
            <h1>Conteúdo do arquivo <strong>'<?= $editArq; ?>'</strong>:</h1>
        </header>
        <div class="box_content">
            <form name="home" action="" method="post" enctype="multipart/form-data">
                <input type="hidden" name="callback" value="Templates"/>
                <input type="hidden" name="callback_action" value="manager"/>
                
                <input type="hidden" name="arquivo" value="<?= $editArq; ?>"/>
                <textarea wrap="off" rows="30" name="code" id="code" class="editor_arquivos"><?php
                    foreach ($lines as $line_num => $line) {
                        echo htmlspecialchars($line) . "\n";
                    }
                    ?></textarea>
                
                <div class="wc_actions" style="text-align: left">
                    <button class="btn btn_green icon-share">ATUALIZAR ARQUIVO!</button>
                    <img class="form_load none" style="margin-left: 10px;" alt="Enviando Requisição!" title="Enviando Requisição!" src="_img/load.gif"/>
                </div>
            </form>
        </div>
    </article>
</div>
<link rel="stylesheet" href="<?= BASE; ?>/admin/_siswc/templates/lib/codemirror.css">
<script src="<?= BASE; ?>/admin/_siswc/templates/lib/codemirror.js"></script>
<script>
  var editor = CodeMirror.fromTextArea(myTextarea, {
    lineNumbers: true
  });
</script>
<script>
    var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
      lineNumbers: true,
      mode: "text/html",
      matchBrackets: true
    });
  </script>