{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block meta %}
  {% if theme.baidu_site.enable %}
    <meta name="baidu-site-verification" content="{{ theme.baidu_site.meta }}">
  {% endif %}
{% endblock %}
{% block title %}{{ title }}{% if theme.index_with_subtitle and subtitle %} &mdash; {{ subtitle }}{% endif %}{% endblock %}

{% block page_class %}
  {% if is_home() %}page-home{% endif -%}
{% endblock %}

{% block content %}
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
