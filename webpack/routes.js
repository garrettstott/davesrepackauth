import React from 'react';
import { Route, IndexRoute, browserHistory } from 'react-router';
import { UserAuthWrapper } from 'redux-auth-wrapper';
import App from './containers/App';
import NoMatch from './components/NoMatch';
import NotAuthorized from './components/NotAuthorized';
import AuthenticatedRoutes from './components/AuthenticatedRoutes';

const SiteAdminAccess = UserAuthWrapper({
  authSelector: state => state.user,
  predicate: user => { return user.role === 'site_admin' },
  redirectAction: () => browserHistory.push('/401'), //I would like to change this to handle a redirect back to where they were
  wrapperDisplayName: 'UserIsSiteAdmin'
})

//We could have admins who are not site admins but site admins should also be able to view this content
const AdminAccess = UserAuthWrapper({
  authSelector: state => state.user,
  predicate: user => {
    let regex = new RegExp(/(site_)?admin/)
    return regex.test(user.role)
  },
  redirectAction: () => browserHistory.push('/401'), //I would like to change this to handle a redirect back to where they were
  wrapperDisplayName: 'UserIsAdmin'
})

const SiteAdminRoutes = SiteAdminAccess( (props) => props.children )

export default (
  <Route>
    <Route path="/" component={App}>
      <IndexRoute component={AuthenticatedRoutes}>
        <Route component={SiteAdminRoutes}>
         {/* Site admin only routes */}
        </Route>
      </IndexRoute>
      <Route path="/401" status={401} component={NotAuthorized} />
      {/* NO ROUTES BELOW THIS LINE */}
      <Route path="*" status={404} component={NoMatch}/>
    </Route>
  </Route>
)

