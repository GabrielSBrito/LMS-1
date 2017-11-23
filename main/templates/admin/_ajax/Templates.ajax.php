<?php

session_start();
require '../../_app/Config.inc.php';

if (empty($_SESSION['userLogin']) || empty($_SESSION['userLogin']['user_level']) || $_SESSION['userLogin']['user_level'] < 6):
    $jSON['trigger'] = AjaxErro('<b class="icon-warning">OPPSSS:</b> Você não tem permissão para essa ação ou não está logado como administrador!', E_USER_ERROR);
    echo json_encode($jSON);
    die;
endif;

//ADMIN
$Admin = $_SESSION['userLogin'];

$jSON = null;
$CallBack = 'Template';
$PostData = filter_input_array(INPUT_POST, FILTER_DEFAULT);

//PREPARA OS DADOS
$Case = $PostData['callback_action'];
unset($PostData['callback'], $PostData['callback_action']);

switch ($Case):

    case 'manager':
        if (is_writable("../../themes/" . THEME . "/" . $PostData['arquivo'])):
            chmod('../../themes/' . THEME . '/' . $PostData['arquivo'], 0777);
            $manipular = fopen("../../themes/" . THEME . "/" . $PostData['arquivo'], 'w+');

            if (!$manipular):
                $jSON['trigger'] = AjaxErro("<b class='icon-notification'>OPPSSS: </b> Não foi possível abrir o arquivo.", E_USER_ERROR);
            else:
                if (!fwrite($manipular, $PostData['code'])):
                    $jSON['trigger'] = AjaxErro("<b class='icon-notification'>OPPSSS: </b> Não foi possível atualizar o arquivo.", E_USER_ERROR);
                else:
                    $jSON['trigger'] = AjaxErro("<b class='icon-notification'>Tudo certo: </b> O arquivo foi atualizado.", E_USER_DEPRECATED);
                endif;

                fclose($manipular);
            endif;
        else:
            $jSON['trigger'] = AjaxErro("O arquivo {$PostData['arquivo']} não tem permissões de leitura e/ou escrita", E_USER_ERROR);
        endif;
        break;

endswitch;

if ($jSON):
    echo json_encode($jSON);
else:
    $jSON['trigger'] = AjaxErro('<b class="icon-warning">OPSS:</b> Desculpe. Mas uma ação do sistema não respondeu corretamente. Ao persistir, contate o desenvolvedor!', E_USER_ERROR);
    echo json_encode($jSON);
    endif;