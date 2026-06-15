{% macro learn_variables() %}

    {% set your_name_jinja = "Zoltan" %}
    {{ log("Hello" ~ your_name_jinja, info=True)}}

{% endmacro %}
