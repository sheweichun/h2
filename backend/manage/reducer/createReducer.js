

export default function createReducer(initialState, handlers, interceptor) {
    return (state = initialState, action) => {
      const handler = handlers[action.type];
      if (!handler) {
        return state;
      }
      state = handler(state, action);
      interceptor && interceptor(state,action);
      return state;
    };
  }
  