package org.poem.route;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author Administrator
 */
@Setter
@Getter
@NoArgsConstructor
@Data
public class ZuulRouteVO {

    /**
     * The ID of the route (the same as its map key by default).
     */
    private String id;

    /**
     * The path (pattern) for the route, e.g. /foo/**.
     */
    private String path;

    /**
     * The service ID (if any) to map to this route. You can specify a physical URL or
     * a service, but not both.
     */
    private String serviceId;

    /**
     * A full physical URL to map to the route. An alternative is to use a service ID
     * and service discovery to find the physical address.
     */
    private String url;

    /**
     * Flag to determine whether the prefix for this route (the path, minus pattern
     * patcher) should be stripped before forwarding.
     */
    private Boolean stripPrefix = true;

    /**
     * Flag to indicate that this route should be retryable (if supported). Generally
     * retry requires a service ID and ribbon.
     */
    private Boolean retryable;

    /**
     *  this route is enable
     */
    private Boolean enabled;
}
