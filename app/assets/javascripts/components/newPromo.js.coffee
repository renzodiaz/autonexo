@NewPromo = React.createClass
  getInitialState: ->
    name: ''
    firstDate: ''
    dueDate: ''
    vehicle: ''
    description: ''
  handleValueChange: (e) ->
    valueName = e.target.name
    @setState "#{valueName}" : e.target.value
  valid: ->
    @state.name && @state.firstDate && @state.dueDate && @state.vehicle && @state.description
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { promo: @state }, (data) =>
      @props.handleNewPromo data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      method: 'post'
      className: 'new-promo form-hide'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'text'
          placeholder: 'Name'
          name: 'name'
          value: @state.name
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'date'
          name: 'firstDate'
          value: @state.firstDate
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'date'
          name: 'dueDate'
          value: @state.dueDate
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.textarea
          placeholder: 'Description'
          name: 'description'
          value: @state.description
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.button
          type: 'submit'
          disabled: !@valid()
          'Create'