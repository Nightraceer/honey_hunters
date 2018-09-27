{set $firstPage = $pagination->getFirstPage()}
{set $lastPage = $pagination->getLastPage()}

{set $prevPage = $pagination->getPreviousPage()}
{set $nextPage = $pagination->getNextPage()}

<div class="pagination-block-more" data-pagination-list="{$pagination->getId()}">
    {if $nextPage}
        <div class="pagination">
            <a id="pager-next" href="{$pagination->getUrl($nextPage)}" data-next-pager-link="{$pagination->getId()}">
                <span>Показать еще</span>
            </a>
        </div>
    {/if}
</div>