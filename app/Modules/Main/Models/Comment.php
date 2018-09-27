<?php
/**
 * Created by PhpStorm.
 * User: nightracer
 * Date: 25.09.2018
 * Time: 22:02
 */

namespace Modules\Main\Models;


use Simff\Model\Fields\CharField;
use Simff\Model\Fields\EmailField;
use Simff\Model\Fields\TextField;
use Simff\Model\Model;

class Comment extends Model
{
    public static function getFields()
    {
        return [
            'name' => [
                'class' => CharField::class,
                'label' => 'Имя',
                'required' => true
            ],
            'email' => [
                'class' => EmailField::class,
                'label' => 'E-Mail',
                'required' => true
            ],
            'text' => [
                'class' => TextField::class,
                'label' => 'Комментарий',
                'required' => true
            ]
        ];
    }

    public function getCutEmail($length = 11)
    {
        $email = trim($this->email);
        return mb_substr($email, 0, $length, 'UTF-8') . '...';
    }
}