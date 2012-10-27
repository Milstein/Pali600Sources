// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.filemakerparser.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.kep.filemakerparser.domain.ChurchMaintenance;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ChurchMaintenance_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ChurchMaintenance.entityManager;
    
    public static final EntityManager ChurchMaintenance.entityManager() {
        EntityManager em = new ChurchMaintenance().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ChurchMaintenance.countChurchMaintenances() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ChurchMaintenance o", Long.class).getSingleResult();
    }
    
    public static List<ChurchMaintenance> ChurchMaintenance.findAllChurchMaintenances() {
        return entityManager().createQuery("SELECT o FROM ChurchMaintenance o", ChurchMaintenance.class).getResultList();
    }
    
    public static ChurchMaintenance ChurchMaintenance.findChurchMaintenance(Long id) {
        if (id == null) return null;
        return entityManager().find(ChurchMaintenance.class, id);
    }
    
    public static List<ChurchMaintenance> ChurchMaintenance.findChurchMaintenanceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ChurchMaintenance o", ChurchMaintenance.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ChurchMaintenance.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ChurchMaintenance.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ChurchMaintenance attached = ChurchMaintenance.findChurchMaintenance(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ChurchMaintenance.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ChurchMaintenance.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ChurchMaintenance ChurchMaintenance.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ChurchMaintenance merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
