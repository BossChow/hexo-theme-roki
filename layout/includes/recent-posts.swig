
{% if page.posts.length > 0 %}
  <section id="cd-timeline" class="cd-container">
    {% for postItem in page.posts.toArray() %}
    <!-- block -->
    <div class="cd-timeline-block">
      <div class="cd-timeline-img cd-picture">
        <img src="img/cd-icon-location.svg" alt="picture">
      </div>

      <div class="cd-timeline-content">
        <h2>{{ postItem.title }}</h2>
        <p>{{ postItem.description}}</p>
        <a class="cd-read-more"  href="{{ config.root }}{{ postItem.path }}">阅读全文</a>
        {% if postItem.date %}
          <span class="cd-date">{{ date(postItem.date) }}</span>
        {% endif %}
      </div>
   
    </div><!-- block end -->
    {% endfor %}
  </section>
  <div id="recent-posts">
    {% for postItem in page.posts.toArray() %}
      <div class="recent-post-item">
        <a href="{{ config.root }}{{ postItem.path }}">{{ postItem.title }}</a>
        {% if postItem.date %}
          <time datetime="{{ postItem.date.toJSON() }}">
            {{ date(postItem.date) }}
          </time>
        {% endif %}
      </div>
    {% endfor %}
  </div>
{% endif %}
