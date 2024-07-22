package demoblaze.runner;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testSignup() {
        return Karate.run("classpath:demoblaze/signup/signup.feature");
    }

    @Karate.Test
    Karate testLogin() {
        return Karate.run("classpath:demoblaze/login/login.feature");
    }
}
