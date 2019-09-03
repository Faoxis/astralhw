package ru.example.astralhw.service.domain;

import ru.example.astralhw.domain.User;

/**
 * Service class for {@link ru.example.astralhw.domain.User}
 *
 * @author Eugene Suleimanov
 * @version 1.0
 */

public interface UserService {

    void save(User user);
    User findByUsername(String username);
    User addNoteToUser(String username, String noteText);
}
