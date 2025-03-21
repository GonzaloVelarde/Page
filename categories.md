---
layout: page
title: "Categories"
permalink: /blog/categories/
---

<h2>Categories</h2>
<ul>
  {% for category in site.categories %}
    <li>
      <a href="{{ site.baseurl }}/blog/category/{{ category[0] | slugize }}/">{{ category[0] }}</a>
    </li>
  {% endfor %}
</ul>
