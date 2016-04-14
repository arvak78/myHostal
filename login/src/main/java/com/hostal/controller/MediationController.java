package com.hostal.controller;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.util.*;

/**
 * Created by Manel on 25/03/2016.
 */

@Controller
public class MediationController {

    Scheduler scheduler;

    @RequestMapping("/welcome")
    public ModelAndView helloWorld() {

        String message = "<br><div style='text-align:center;'>"
                + "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";


//        try {
//            JobDetail job = new
//            job.setName("dummyJobName");
//            job.setJobClass(HelloJob.class);
//
//            JobB
//
//            CronTrigger trigger = new CronTrigger();
//            trigger.setName("dummyTriggerName");
//            trigger.setCronExpression("0/30 * * * * ?");
//
//            CronTrigger trigger2 = new CronTrigger();
//            trigger2.setName("dummyTriggerName2");
//            trigger2.setCronExpression("0/12 * * * * ?");
//
//            Scheduler scheduler = new StdSchedulerFactory().getScheduler();
//
//            scheduler.start();
//            scheduler.scheduleJob(job, trigger);
//            scheduler.scheduleJob(trigger2);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        } catch (SchedulerException e) {
//            e.printStackTrace();
//        }

        SchedulerFactory factory = new StdSchedulerFactory();

        try {
            scheduler = factory.getScheduler();

//        Map<JobDetail, Set<Trigger>> triggersAndJobs = new HashMap<JobDetail, Set<Trigger>>();
        Map<JobDetail, Set<? extends Trigger>> triggersAndJobs = new HashMap<JobDetail, Set<? extends Trigger>>();
        Set triggerList = new HashSet();
        String groupName = "GroupName";
        String jobName = "JobName";
        JobKey jobKey = new JobKey(jobName, groupName);
        String triggerName = jobName;
        List createdTrigger = new ArrayList();
        createdTrigger.add("0/12 * * * * ?");
        createdTrigger.add("0/30 * * * * ?");

        JobDetail job = JobBuilder.newJob(HelloJob.class)
                .withIdentity(jobKey).usingJobData("groupName", groupName)
                .usingJobData("jobName", jobName).build();

        CronTrigger trigger;
        CronTrigger trigger1;

        trigger = (CronTrigger) TriggerBuilder
                .newTrigger()
                .withIdentity(triggerName + "0", groupName)
                .withSchedule(
                        CronScheduleBuilder.cronSchedule((String) createdTrigger.get(0)))
                .build();

        trigger1 = (CronTrigger) TriggerBuilder
                .newTrigger()
                .withIdentity(triggerName + "1", groupName)
                .withSchedule(
                        CronScheduleBuilder.cronSchedule((String) createdTrigger.get(1)))
                .build();
        triggerList.add(trigger);
        triggerList.add(trigger1);

        triggersAndJobs.put(job, triggerList);
        if (!scheduler.isStarted()) {
            scheduler.start();
        }

            scheduler.scheduleJobs(triggersAndJobs, true);


        return new ModelAndView("welcome", "message", message);
        } catch (SchedulerException e) {
            e.printStackTrace();
            return null;
        }

    }

}
