@NewDealer = React.createClass
  getInitialState: ->
    name: ''
    fulladdress: ''
  handleValueChange: (e) ->
    valueName = e.target.name
    @setState "#{valueName}" : e.target.value
  valid: ->
    @state.name && @state.fulladdress
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { dealer: @state }, (data) =>
      @props.handleNewDealer data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      method: 'post'
      className: 'new-deader form-hide'
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
          type: 'text'
          placeholder: 'Address'
          name: 'fulladdress'
          value: @state.fulladdress
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.button
          type: 'submit'
          disabled: !@valid()
          'Create'