package io.github.microservices.demo;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.json.Json;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;

import org.eclipse.microprofile.metrics.MetricUnits;
import org.eclipse.microprofile.metrics.annotation.Timed;
import org.jboss.resteasy.annotations.jaxrs.PathParam;

@Path("/shoes")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
@ApplicationScoped
@Timed(name="request_duration_seconds", 
        displayName="Request duration in seconds.",
        unit = MetricUnits.SECONDS,
        absolute=true)
public class ShoeResource {
    public ShoeResource() {
    }

    @GET
    public List<Shoe> getAll() {
        return Shoe.findAll().list();
    }

    @GET
    @Path("/{id}")
    public Shoe getSingle(@PathParam("id") String id) {
        System.out.println("id: " + id);
        Shoe entity = Shoe.findById(id);
        if (entity == null) {
            throw new WebApplicationException("Shoe with id of " + id + " does not exist.", 404);
        }

        return entity;
    }

    @GET
    @Path("/hello")
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        return "hello";
    }

    @Provider
    public static class ErrorMapper implements ExceptionMapper<Exception> {

        @Override
        public Response toResponse(Exception exception) {
            int code = 500;
            exception.printStackTrace();
            if (exception instanceof WebApplicationException) {
                code = ((WebApplicationException) exception).getResponse().getStatus();
            }
            return Response.status(code)
                    .entity(Json.createObjectBuilder().add("error", exception.getMessage()).add("code", code).build())
                    .build();
        }

    }

}