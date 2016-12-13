@Promo = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.promo.name
      React.DOM.td null, @props.promo.firstDate
      React.DOM.td null, @props.promo.dueDate
      React.DOM.td null, @props.promo.vehicle
      React.DOM.td null, @props.promo.description
      React.DOM.td null, @props.promo.created_at