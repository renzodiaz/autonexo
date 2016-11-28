@DashboardTitle = React.createClass
  getInitialState: ->
    dashTitle: @props.title
  render: ->
    React.DOM.div
      className: 'dash-head-title'
      React.DOM.h3
        className: 'dash-uppercase-title'
        @state.dashTitle
      React.DOM.hr
        className: 'title-divisor'