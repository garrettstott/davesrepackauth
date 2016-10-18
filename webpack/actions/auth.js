export const refreshLogin = () => {
  return (dispatch) => {
    $.ajax({
      url: '/api/users/info',
      type: 'GET',
      dataType: 'JSON'
    }).done( user => {
      dispatch(setUser(user));
    });
  }
}

export const logout = () => {
  return (dispatch) => {
    $.ajax({
      url: '/users/sign_out',
      type: 'DELETE',
      dataType: 'JSON'
    }).done( () => {
      dispatch(setUser({}))
      window.location.href = '/'
    });
  }
}

const setUser = (user) => {
  return { type: 'USER', ...user }
}

