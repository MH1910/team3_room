package roomsharing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import roomsharing.dto.user.UserLoginDto;
import roomsharing.entity.UserEntity;
import roomsharing.repository.UserRepository;

import java.util.Optional;

@Service
public class AuthenticationService implements UserDetailsService {
    @Autowired
    UserRepository userRepository;


    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        Optional<UserEntity> user = userRepository.findByUserName(userName);
        user.orElseThrow(()-> new UsernameNotFoundException("Not found"+userName));
        return user.map(UserLoginDto::new).get();
    }


}