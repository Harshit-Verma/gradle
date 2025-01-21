import org.apache.camel.CamelContext;
import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.impl.DefaultCamelContext;

public class MyCamelApp {
    public static void main(String[] args) throws Exception {
        CamelContext context = new DefaultCamelContext();

        context.addRoutes(new RouteBuilder() {
            @Override
            public void configure() {
                from("timer:hello?period=1000")
                    .setBody(constant("Hello, Camel!"))
                    .to("stream:out");
            }
        });

        context.start();
        Thread.sleep(5000); // Run for 5 seconds
        context.stop();
    }
}
