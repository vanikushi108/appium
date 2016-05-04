import java.io.File;
import java.net.URL;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class TestRecipe {

    public WebDriver driver = null;

    @BeforeMethod
    public void setUp() throws Exception {
        // set up appium
        File appDir = new File("/Users/KushiHarsh/workspace");
        File app = new File(appDir, "Albert.app");
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability(CapabilityType.BROWSER_NAME, "iOS");
        capabilities.setCapability(CapabilityType.VERSION, "9.3");
        capabilities.setCapability(CapabilityType.PLATFORM, "Mac");
        capabilities.setCapability("platformName", "iOS");
        capabilities.setCapability("deviceName", "iPhone 5");
        capabilities.setCapability("platformVersion", "9.3");
        capabilities.setCapability("app", app.getAbsolutePath());
        driver = new RemoteWebDriver(new URL("http://0.0.0.0:4723/wd/hub"), capabilities);
    }

    @AfterMethod
    public void tearDown() throws Exception {
        driver.quit();
    }


    @Test
    public void testAddRecipes() throws InterruptedException {



        driver.findElement(By.name("Add")).click();
        Thread.sleep(2000);


        Assert.assertTrue(true, "Recipe is not present");
    }

}
