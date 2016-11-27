@HomeHeader = React.createClass
  getInitialState: ->
    currentUser: @props.current_user
  render: ->
    React.DOM.header
      className: 'homeHeader'
      React.DOM.div
        className: 'container'
        React.DOM.div
          className: 'logoContainer'
          React.DOM.h1
            className: 'logoWhite'
            React.DOM.a
              href: '/'
              className: 'defaultAnchor'
              'Autonexo'
        React.DOM.div
          className: 'menuContainer'
          React.DOM.nav
            className: 'menu'
            React.DOM.ul
              className: 'menuList'
              if @state.currentUser
                [React.createElement 'li', {key: 3, className: 'menuItem'},
                  React.createElement 'a', {className: 'text-white', href: '#'}, @state.currentUser.email
                React.createElement 'li', {key: 2, className: 'menuItem'},
                  React.createElement 'a', {'data-method':'delete', className: 'text-white', href: '/users/sign_out'}, 'logout']
              else
                [React.createElement 'li', {key: 1, className: 'menuItem'},
                  React.createElement 'a', {className: 'text-white', href: '/users/sign_in'}, 'Login'
                React.createElement 'li', {key: 2, className: 'menuItem'},
                  React.createElement 'a', {className: 'text-white', href: '/users/sign_up'}, 'Register']

