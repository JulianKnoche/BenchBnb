import { RECEIVE_CURRENT_USER, ERRORS } from "../actions/session_actions";


const defaultState = {
  session: []
};
const sessionErrorsReducer = (state = defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return {};
    case ERRORS:
      return Object.assign({},state,{session: action.errors});
    default:
      return state;
  }
};

export default sessionErrorsReducer;