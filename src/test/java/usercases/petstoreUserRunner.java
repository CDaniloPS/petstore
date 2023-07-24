package usercases;

import com.intuit.karate.junit5.Karate;

class petstoreUserRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("feature/user").relativeTo(getClass());
    }    

}
