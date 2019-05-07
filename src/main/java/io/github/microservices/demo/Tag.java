package io.github.microservices.demo;

import java.util.HashSet;
import java.util.Set;

import javax.json.bind.annotation.JsonbTransient;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.NaturalId;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

/**
 * Tag
 */
@Entity
public class Tag extends PanacheEntity {

    @NaturalId
    public String name;

    @ManyToMany(mappedBy = "tags")
    @JsonbTransient
    public Set<Shoe> shoes = new HashSet<>();
}