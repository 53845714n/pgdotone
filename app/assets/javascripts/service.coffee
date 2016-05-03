$ ->
  $(document).on 'change', '#categories_select', (evt) ->
    $.ajax 'update_subcategories',
      type: 'GET'
      dataType: 'script'
      data: {
        category_id: $("#categories_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic category select OK!")

  $(document).on 'change', '#subcategories_select', (evt) ->
    $.ajax 'update_articles',
      type: 'GET'
      dataType: 'script'
      data: {
        subcategory_id: $("#subcategories_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Article Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic subcategory select OK!")
