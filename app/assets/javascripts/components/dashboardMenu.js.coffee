@DashboardMenu = React.createClass
  getInitialState: ->
    items: @props.data
    request: @props.request
    active: ''
  render: ->
    React.DOM.nav
      className: 'dashboardMenu'
      React.DOM.div
        className: 'wrap-menu'
        React.DOM.ul
          className: 'menu-list'
          for item in @state.items
            if @state.request == item.controller
              @state.active = 'menu-item-active'
            else
              @state.active = ''
            React.createElement 'li', {key: item.id, className: 'menu-item ' + @state.active},
              React.createElement 'a', {href: item.controller}, item.name


