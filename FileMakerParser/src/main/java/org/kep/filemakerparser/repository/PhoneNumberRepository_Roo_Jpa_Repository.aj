// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.filemakerparser.repository;

import org.kep.filemakerparser.domain.PhoneNumber;
import org.kep.filemakerparser.repository.PhoneNumberRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect PhoneNumberRepository_Roo_Jpa_Repository {
    
    declare parents: PhoneNumberRepository extends JpaRepository<PhoneNumber, Long>;
    
    declare parents: PhoneNumberRepository extends JpaSpecificationExecutor<PhoneNumber>;
    
    declare @type: PhoneNumberRepository: @Repository;
    
}
