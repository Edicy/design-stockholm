<!DOCTYPE html>
<head>
{% include "SiteHeader" %}
{{blog.rss_link}}
</head>
<body>
<div id="wrap">
  <div id="header">
    {% include "Langmenu" %}
    <div class="hgroup clear">
      <h1 id="logo">{% editable site.header %}</h1>
      <h2>{% content name="slogan" %}</h2>
    </div>
    {% include "Mainmenu" %}
    {% include "Submenu" %}
  </div>
  <!-- //header -->
  <div id="content-wrap" class="clear">
    <div class="center-column">
    {% if editmode %}<p>{% addbutton class="add-article" %}</p>{% endif %}
     <ul id="blog-list">
     {% for article in articles %}
        <li> <span class="date">{{article.created_at | format_date:"%d.%m"}}</span>
          <div class="text-container">
            <h2><a href="{{article.url}}">{{article.title}}</a></h2>
            <p><span class="author">{{article.author.name}}</span> / <a href="{{article.url}}">{% case article.comments_count %}{% when 0 %}{{"Write_first_comment" | lc}}{% else %}{{"comments" | lc}} ({{article.comments_count}}){% endcase %}</a></p>
             {{article.excerpt}}
          </div>
        </li>
        {% endfor %}
     </ul>
    </div>
  </div>
  <!-- //content-wrap -->
  <div id="footer" class="clear">{% include "Footer" %}</div>
  <!-- //footer -->
</div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>