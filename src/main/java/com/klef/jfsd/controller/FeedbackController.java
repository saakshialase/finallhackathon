package com.klef.jfsd.controller;

import com.klef.jfsd.model.Feedback;
import com.klef.jfsd.service.FeedbackService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/feedback")
public class FeedbackController {
    private final FeedbackService feedbackService;

    public FeedbackController(FeedbackService feedbackService) {
        this.feedbackService = feedbackService;
    }

    @GetMapping("/form")
    public String feedbackForm(Model model) {
        model.addAttribute("feedback", new Feedback());
        return "feedbackform";
    }

    @PostMapping("/submit")
    public String submitFeedback(@ModelAttribute Feedback feedback) {
        feedbackService.saveFeedback(feedback);
        return "feedbacksuccess";
    }

    @GetMapping("/all")
    public String viewAllFeedbacks(Model model) {
        model.addAttribute("feedbacks", feedbackService.getAllFeedbacks());
        return "feedbacklist";
    }
}
