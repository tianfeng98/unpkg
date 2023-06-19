import createSearch from './createSearch.js';
import withUrlPrefix from './withUrlPrefix'

export default function createPackageURL(
  packageName,
  packageVersion,
  filename,
  query,
  noPrefix
) {
  let url = `/${packageName}`;

  if (packageVersion) url += `@${packageVersion}`;
  if (filename) url += filename;
  if(!noPrefix) {
    url = withUrlPrefix(url)
  }
  if (query) url += createSearch(query);

  return url;
}
