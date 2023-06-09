//package com.example.attestation.security;
//
//import com.example.attestation.services.PersonDetailsService;
//import org.springframework.security.authentication.BadCredentialsException;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.stereotype.Component;
//
//import java.util.Collections;
//
//@Component
//public class AutenticationProvider implements org.springframework.security.authentication.AuthenticationProvider {
//
//    private final PersonDetailsService personDetailsService;
//
//    public AutenticationProvider(PersonDetailsService personDetailsService) {
//        this.personDetailsService = personDetailsService;
//    }
//
//    @Override
//    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
//        //Получаем логин с формы аутентификации. Спринг Секьюрити сам создаст объект формы и передаст его в оъект аутентификации
//        String login = authentication.getName();
//
//        // т.к. даннй метод возвращает объект интерфеса UserDetail, то и объект создадим через интерфейс
//        UserDetails person = personDetailsService.loadUserByUsername(login);
//
//        String password = authentication.getCredentials().toString();
//
//        if (!password.equals(person.getPassword())){
//            throw new BadCredentialsException("Не верный пароль");
//        }
//
//        //Возвращаем объект аутентификации
//        return new UsernamePasswordAuthenticationToken(person, password, Collections.emptyList());
//
//    }
//
//    @Override
//    public boolean supports(Class<?> authentication) {
//        return true;
//    }
//}
