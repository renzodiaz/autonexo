@Dealer = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.dealer.name
      React.DOM.td null, @props.dealer.fulladdress
      React.DOM.td null, @props.dealer.created_at