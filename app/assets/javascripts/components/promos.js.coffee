@Promos = React.createClass
  getInitialState: ->
    promos: @props.data
  getDefaultProps: ->
    promos: []
  addPromo: (promo) ->
    promos = @state.promos.slice()
    promos.push promo
    @setState promos: promos
  render: ->
    React.DOM.div
      className: 'vechicles-wrapper'
      React.createElement NewPromo, handleNewPromo: @addPromo
      React.DOM.table
        className: 'table'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'First Date'
            React.DOM.th null, 'Due Date'
            React.DOM.th null, 'Vehicle'
            React.DOM.th null, 'Description'
            React.DOM.th null, 'Created at'
        React.DOM.tbody null,
          for promo in @state.promos
            React.createElement Promo, key: promo.id, promo: promo