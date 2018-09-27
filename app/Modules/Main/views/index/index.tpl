{extends "_layouts/base.tpl"}

{block "main"}
    <div class="wrapper-index-page">

        <div class="wrapper-top-block">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="image">
                            <img src="/static/images/base/mail.png" alt="icon mail">
                        </div>

                        <div class="wrapper-form">
                            {set $formName = $form->getName()}
                            {set $nameField = $form->getField('name')}
                            {set $emailField = $form->getField('email')}
                            {set $textField = $form->getField('text')}

                            <form action="" data-ajax-form="{$formName}" method="post"
                                  data-reset="1" data-timeout="4000" data-success="$(document).trigger('update_blocks');">

                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="form-field">
                                            <label for="{$formName}_name">
                                                {$nameField->label}
                                                {if $nameField->required}<span class="required">*</span>{/if}
                                            </label>
                                            <input type="text" id="{$formName}_name" name="{$formName}[name]">
                                            <ul class="errors" id="{$formName}_name_errors">
                                                {if $nameField->error}
                                                    <li>{$nameField->error}</li>
                                                {/if}
                                            </ul>
                                        </div>

                                        <div class="form-field form-field-email">
                                            <label for="{$formName}_email">
                                                {$emailField->label}
                                                {if $emailField->required}<span class="required">*</span>{/if}
                                            </label>
                                            <input type="text" id="{$formName}_email" name="{$formName}[email]">
                                            <ul class="errors" id="{$formName}_email_errors">
                                                {if $emailField->error}
                                                    <li>{$emailField->error}</li>
                                                {/if}
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-xl-6">
                                        <div class="form-field">
                                            <label for="{$formName}_text">
                                                {$textField->label}
                                                {if $textField->required}<span class="required">*</span>{/if}
                                            </label>
                                            <textarea name="{$formName}[text]" id="{$formName}_text"></textarea>
                                            <ul class="errors" id="{$formName}_text_errors">
                                                {if $textField->error}
                                                    <li>{$textField->error}</li>
                                                {/if}
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <div class="holder-button">
                                            <button type="submit" class="red">Записать</button>
                                        </div>
                                    </div>
                                </div>

                                {include "_parts/success.tpl" text="Ваш комментарий принят!"}
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="wrapper-comments" data-update-block="comments">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="title">Выводим комментарии</h2>

                        <div class="comments" data-pagination-update="{$pager->getId()}">

                            {foreach $comments as $comment}
                                <div class="holder-comment">
                                    <div class="comment">

                                        <div class="header">
                                            <div class="name">{$comment->name}</div>
                                        </div>

                                        <div class="body">
                                            <a href="mailto:{$comment->email}" title="{$comment->email}" class="email">
                                                {$comment->getCutEmail()}
                                            </a>

                                            <div class="text">
                                                {$comment->text}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}

                        </div>

                        {raw $pager->render("pagination/more.tpl")}
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}