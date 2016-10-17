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

const setUser = (user) => {
  return { type: 'USER', ...user }
}

