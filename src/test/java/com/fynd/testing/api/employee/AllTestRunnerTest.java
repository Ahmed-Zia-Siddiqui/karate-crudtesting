package com.fynd.testing.api.employee;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.core.Scenario;
import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import net.masterthought.cucumber.Reportable;
import org.apache.commons.io.FileUtils;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.Assert.assertTrue;

@KarateOptions(tags = {"~@ignore"})
public class AllTestRunnerTest {
        @Test
        public void testParallel() {
                Results results = Runner.parallel(getClass(), 5,"target/surefire-reports");
                generateReport(results.getReportDir());
                assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
        }

        public static void generateReport(String karateOutputPath) {
                Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
                List<String> jsonPaths = new ArrayList(jsonFiles.size());
                jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
                Configuration config = new Configuration(new File("target"), "apitesting");
                ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
                reportBuilder.generateReports();
        }
}