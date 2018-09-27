<?php
/**
 * Created by PhpStorm.
 * User: nightracer
 * Date: 25.09.2018
 * Time: 22:07
 */

namespace Modules\Main\Controllers;


use Modules\Main\Models\Comment;
use Simff\Controller\Controller;
use Simff\Form\Form;
use Simff\Pagination\Pagination;

class MainController extends Controller
{
    public function indexAction()
    {
        $comments = Comment::all();

        $form = new Form(Comment::class);

        $this->ajaxValidation($form);

        $pager = new Pagination([
            'source' => $comments,
            'pageSize' => 6
        ]);

        echo $this->render("index/index.tpl", [
            'comments' => $pager->getData(),
            'form' => $form,
            'pager' => $pager
        ]);
    }

    public function createTableCommentAction()
    {
        $created = Comment::createTable();

        if ($created) {
            echo "Таблица создана!";
        } else {
            echo "Не удалось создать таблицу";
        }
    }
}