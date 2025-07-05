---
layout: page
title: Projects
order: 5
description: The following contains list of several projects during my voyage into Robotics.
---

<div>
{% assign sorted_projects = site.projects | sort:"order" %}

{% for project in sorted_projects %}

    <div>
    <br/>
    
    <h3>{{ project.title }}</h3><br/>

    {% assign sorted_pubs = project.publications | sort:"date" %}

    {% for publication in sorted_pubs reversed %}

        {% if publication.links.doi %}
            <a href="{{ publication.links.doi }}"><b>{{ publication.title }}</b></a>
        {% else %}
            <b>{{ publication.title }}</b>
        {% endif %}

        {% if publication.links.img %}
        <img class="right" style="height: 6em; padding-left: 1em" src="{{ publication.links.img }}">
        {% endif %}

        <br/>

        <i>{{ publication.authors }}</i>
        <br/>

        {{ publication.venue }}
        <br/>

        {% if publication.note %}
            <i>{{ publication.note }}</i><br/>
        {% endif %}

        {% if publication.award %}
            <b>{{ publication.award }}</b><br/>
        {% endif %}


        {% if publication.links.preprint %}
            <a href="{{ publication.links.preprint }}"><i class="fa fa-file-text-o"></i>&nbsp;Paper</a>&nbsp;
        {% endif %}

        {% if publication.links.code %}
            <a href="{{ publication.links.code }}"><i class="fa fa-code-fork"></i>&nbsp;Code</a>&nbsp;
        {% endif %}

        {% if publication.links.slides %}
            <a href="{{ publication.links.slides }}"><i class="fa fa-television"></i>&nbsp;Slides</a>&nbsp;
        {% endif %}

        {% if publication.links.poster %}
            <a href="{{ publication.links.poster }}"><i class="fa fa-image"></i>&nbsp;Poster</a>&nbsp;
        {% endif %}

        {% if publication.links.video %}
            <a href="{{ publication.links.video }}"><i class="fa fa-film"></i>&nbsp;Video</a>&nbsp;
        {% endif %}

        {% if publication.links.page %}
            <a href="{{ publication.links.page }}"><i class="fa fa-globe"></i>&nbsp;Project Page</a>&nbsp;
        {% endif %}

        {% if publication.links %}
            <br/>
        {% endif %}

        <br/>
    {% endfor %}

    </div>
    <hr/>
{% endfor %}
</div>
