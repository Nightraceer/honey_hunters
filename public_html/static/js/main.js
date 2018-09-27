$(function () {
    var pagerLinkSelector = '[data-next-pager-link]';

    $(document)
        .on('update_blocks', function () {
            console.log('fwefwef');

            $.ajax({
                dataType: 'html',
                success: function (page) {
                    var $page = $(page);

                    $page.find('[data-update-block]').each(function () {
                        var $newBlock = $(this);
                        var name = $newBlock.data('update-block');
                        var $block = $('[data-update-block="' + name + '"]');

                        $block.html($newBlock.html());
                    });
                }
            });
        })

        .on('click', pagerLinkSelector, function (e) {
            e.preventDefault();
            var $this = $(this),
                updateIdContainer = $this.data('next-pager-link'),
                updateSelector = '[data-pagination-update="' + updateIdContainer + '"]',
                paginationListSelector = '[data-pagination-list="' + updateIdContainer + '"]';

            if ($this.hasClass('loading')) {
                return false;
            }

            $this.addClass('loading');
            $.ajax({
                url: $this.attr('href'),
                success: function (page) {
                    var $page = $('<div/>').append(page);

                    $(updateSelector).append($page.find(updateSelector).html());

                    $(paginationListSelector).html($page.find(paginationListSelector).html());
                    $this.removeClass('loading');
                }
            });
            return false;
        });
});