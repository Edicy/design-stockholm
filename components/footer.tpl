<div class="footer-inner">{% xcontent name="footer" %}</div>

{% if site.search.enabled %}
<form action="#" method="post" id="search" class="clear">
    <p><input type="text" name="" id="onpage_search" /></p>
    <p><input type="submit" name="" value="" class="search-submit" /></p>
</form>
{% endif %}

<div id="edicy">{% loginblock %}<img src="{{ images_path }}/edicy.png" alt="Edicy" />{% endloginblock %}</div>

