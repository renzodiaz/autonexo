@Dealers = React.createClass
  getInitialState: ->
    dealers: @props.data
  getDefaultProps: ->
    dealers: []
  addDealer: (dealer) ->
    dealers = @state.dealers.slice()
    dealers.push dealer
    @setState dealers: dealers
  render: ->
    React.DOM.div
      className: 'vechicles-wrapper'
      React.createElement NewDealer, handleNewDealer: @addDealer
      React.DOM.table
        className: 'table'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Address'
            React.DOM.th null, 'Created at'
        React.DOM.tbody null,
          for dealer in @state.dealers
            React.createElement Dealer, key: dealer.id, dealer: dealer