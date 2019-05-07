package io.github.microservices.demo;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;

import org.jboss.resteasy.annotations.jaxrs.PathParam;

@Path("/tags")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
@ApplicationScoped
public class TagResource {

    @GET
    public List<Tag> getAll() {
        return Tag.findAll().list();
    }

    @GET
    @Path("/{id}")
    public Tag getSingle(@PathParam("id") Long id) {
        System.out.println("id: " + id);
        Tag entity = Tag.findById(id);
        if (entity == null) {
            throw new WebApplicationException("Tag with id of " + id + " does not exist.", 404);
        }

        return entity;
    }

    @GET
    @Path("/hello")
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        return "hello";
    }
}