import https from 'https';
import http from 'http';

const getRequest = () => {
	const { NPM_REGISTRY_URL } = process.env;
	if(NPM_REGISTRY_URL && NPM_REGISTRY_URL.startsWith('http')) {
		return http
	}
	return https;
}

const request = getRequest()

export default request