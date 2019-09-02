package ru.example.astralhw.repository.domain;

import ru.example.astralhw.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
