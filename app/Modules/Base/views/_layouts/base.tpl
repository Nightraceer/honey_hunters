<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">

    {block 'head'}{/block}


    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic" rel="stylesheet">

    <link rel="stylesheet" href="/static/dist/css/main.css?v={time()}">
    <script src="/static/dist/js/main.js?v={time()}}"></script>


</head>
<body>
<div id="wrapper">
    <header>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="header-inner">
                        <a href="/" rel="nofollow" class="logo">
                            <img src="/static/images/base/logo.png" alt="Honey Hunters">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div id="main">
        {block 'main'}
            <div class="container">

                <div class="row">
                    <div class="col-12">
                        {block 'content'}

                        {/block}
                    </div>
                </div>

            </div>
        {/block}
    </div>

    <div id="push"></div>

</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="footer-inner">
                    <a href="/" rel="nofollow" class="logo">
                        <img src="/static/images/base/logo.png" alt="Honey Hunters">
                    </a>

                    <div class="socials">
                        <div class="social">
                            <a href="#" rel="nofollow" class="fa-vk far"></a>
                        </div>

                        <div class="social">
                            <a href="#" rel="nofollow" class="fa-facebook-f far"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

{block 'js'}

{/block}

</body>
</html>