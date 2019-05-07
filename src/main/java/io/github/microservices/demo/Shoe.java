package io.github.microservices.demo;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

/**
 * Shoe
 */
@Entity
public class Shoe extends PanacheEntityBase {

    @Id
    @Column(name = "id", length = 40, updatable = false, nullable = false)
    public String id;

    public String name;
    
    public String description;
    
    public BigDecimal price;
    
    public Integer count;
    
    public String imageUrl1;
    
    public String imageUrl2;

    @ManyToMany(cascade = {
        CascadeType.PERSIST, 
        CascadeType.MERGE
    }, fetch = FetchType.EAGER)
    @JoinTable(
        name = "shoe_tag",
        joinColumns = @JoinColumn(name = "shoe_id"),
        inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    private Set<Tag> tags = new HashSet<>(); 

    public void addTag(Tag newTag) {
        tags.add(newTag);
        newTag.shoes.add(this);
    }
    
    public void removeTag(Tag aTag) {
        tags.remove(aTag);
        aTag.shoes.remove(this);
    }

    public Set<Tag> getTags(){
        return tags;
    }
}