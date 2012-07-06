# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  if $("#history_list").size() > 0
    $("#history_list").jqGrid( {
      url: gon.page_json_url
      datatype: 'json',
      mtype: 'GET',
      colModel: [
        {name: 'lottery_full_id', label: "期數", width: 100, sortable: false}
        {name: 'end_time', label: "開獎時間", width: 120, sortable: false}
        {name: 'ball_1', label: "1", width: 30, height:50, sortable: false}
        {name: 'ball_2', label: "2", width: 30, sortable: false}
        {name: 'ball_3', label: "3", width: 30, sortable: false}
        {name: 'ball_4', label: "4", width: 30, sortable: false}
        {name: 'ball_5', label: "5", width: 30, sortable: false}
        {name: 'ball_6', label: "6", width: 30, sortable: false}
        {name: 'ball_7', label: "7", width: 30, sortable: false}
        {name: 'ball_8', label: "8", width: 30, sortable: false}
        {name: 'sum', label: "總和", width: 35, sortable: false}
        {name: 'sum_big_small', label: "大小", width: 35, sortable: false}
        {name: 'sum_even_odd', label: "單雙", width: 35, sortable: false}
        {name: 'sum_trail_big_small', label: "尾大小", width: 50, sortable: false}
        {name: 'dragon_tiger', label: "龍虎", width: 40, sortable: false}
      ],
      jsonReader : {
      root:"rows",
      repeatitems: false,
      id: "_id"
      },
      pager: '#pager',
      rowNum: 20,
      rowList:[20, 40, 60, 100],
      sortname: 'stat_time',
      sortorder: 'asc',
      viewrecords: true,
      gridview: true,
      caption: '開獎历史',
      resizable: true,
      height: 500,
      #width: 600,
      id: "_id"

    })

    jQuery("#history_list").jqGrid('setGroupHeaders', {
      useColSpanStyle: false,
      groupHeaders: [
        {startColumnName: "ball_1", numberOfColumns: 8, titleText: "<em>開出號碼</em>"},
        {startColumnName: "sum", numberOfColumns: 4, titleText: "<em>總和</em>"}
      ]
    })



