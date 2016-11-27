@DashboardMenu = React.createClass
  render: ->
    React.DOM.nav
      className: 'dashboardMenu'
      React.DOM.div
        className: 'wrap-menu'
        React.DOM.ul
          className: 'menu-list'
          [React.createElement 'li', {key: 1, className: 'menu-item'},
            React.createElement 'a', {href: '/dashboard'}, 'Dashboard',
          React.createElement 'li', {key: 2, className: 'menu-item'},
            React.createElement 'a', {href: '/dashboard/vehicles'}, 'Vehicles']