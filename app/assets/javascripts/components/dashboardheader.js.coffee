@DashboardHeader = React.createClass
  getInitialState: ->
    currentUser: @props.current_user
  render: ->
    React.DOM.header
      className: 'dashboardHeader'
      React.DOM.div
        className: 'left-side'
        React.DOM.div
          className: 'wrap-logo'
          React.DOM.h1
            className: 'logo'
            React.DOM.a
              href: '#'
              'Autonexo'
        React.DOM.div
          className: 'wrap-search'
          React.DOM.form
            className: 'search-form'
            React.DOM.input
              type: 'text'
              placeholder: 'Buscar'
