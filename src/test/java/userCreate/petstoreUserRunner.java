package userCreate;

import com.intuit.karate.junit5.Karate;

class petstoreUserRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("user").relativeTo(getClass());
    }    

}
