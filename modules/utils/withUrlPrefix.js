import path from './path-browserify'

const prefix = (process.env.URL_PREFIX || "/").trim()
const withUrlPrefix = (pathname) => {
  return path.join(prefix, pathname)
}

export default withUrlPrefix
