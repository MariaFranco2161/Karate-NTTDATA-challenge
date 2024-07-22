function fn() {
    var env = karate.env; // obtener la propiedad del sistema 'karate.env'
    karate.log('karate.env system property was:', env);

    config={
        baseUrl: 'https://api.demoblaze.com/',
        signup: 'signup',
        login: 'login',
        username: 'defaultUser',
        password: 'defaultPass'
    }

    if (karate.properties['baseUrl']) {
        config.baseUrl = karate.properties['baseUrl'];
    }
    if (karate.properties['username']) {
        config.username = karate.properties['username'];
    }
    if (karate.properties['password']) {
        config.password = karate.properties['password'];
    }


    return config
}

