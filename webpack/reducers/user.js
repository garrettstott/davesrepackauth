const user = (state = {}, action) => {
  switch(action.type) {
    case 'USER':
      let { id, first_name, last_name, phone, email } = action
      return { id, first_name, last_name, phone, email }
    default:
      return state
  }
}

export default user;
