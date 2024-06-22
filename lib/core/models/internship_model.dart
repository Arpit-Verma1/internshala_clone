// File: models/job.dart

import 'package:internshala/core/models/stipend_model.dart';

import 'application_status_model.dart';
import 'label_model.dart';
import 'location_model.dart';

class Job {
  final int id;
  final String title;
  final String employmentType;
  final ApplicationStatusMessage applicationStatusMessage;
  final String jobTitle;
  final bool workFromHome;
  final String segment;
  final String segmentLabelValue;
  final String internshipTypeLabelValue;
  final List<String> jobSegments;
  final String companyName;
  final String companyUrl;
  final bool isPremium;
  final bool isPremiumInternship;
  final String employerName;
  final String companyLogo;
  final String type;
  final String url;
  final int isInternChallenge;
  final bool isExternal;
  final bool isActive;
  final DateTime? expiresAt; // Nullable
  final String? closedAt; // Nullable
  final String profileName;
  final bool partTime;
  final String startDate;
  final String duration;
  final Stipend stipend;
  final String salary;
  final String jobExperience;
  final String experience;
  final DateTime? postedOn; // Nullable
  final String? applicationDeadline; // Nullable
  final String expiringIn;
  final String postedByLabel;
  final String postedByLabelType;
  final List<String> locationNames;
  final List<Location> locations;
  final DateTime? startDateComparisonFormat; // Nullable
  final DateTime? startDate1; // Nullable
  final DateTime? startDate2; // Nullable
  final bool isPpo;
  final bool isPpoSalaryDisclosed;
  final String ppoSalary;
  final String ppoSalary2;
  final String ppoLabelValue;
  final bool toShowExtraLabel;
  final String extraLabelValue;
  final bool isExtraLabelBlack;
  final List<String> campaignNames;
  final String campaignName;
  final bool toShowInSearch;
  final String campaignUrl;
  final DateTime? campaignStartDateTime; // Nullable
  final DateTime? campaignLaunchDateTime; // Nullable
  final DateTime? campaignEarlyAccessStartDateTime; // Nullable
  final DateTime? campaignEndDateTime; // Nullable
  final List<Label> labels;
  final String labelsApp;
  final List<String> labelsAppInCard;
  final bool isCovidWfhSelected;
  final bool toShowCardMessage;
  final String message;
  final bool isApplicationCappingEnabled;
  final String applicationCappingMessage;
  final List<String> overrideMetaDetails;
  final bool eligibleForEasyApply;
  final bool eligibleForB2bApplyNow;
  final bool toShowB2bLabel;
  final bool isInternationalJob;
  final bool toShowCoverLetter;
  final String officeDays;

  Job({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    required this.jobTitle,
    required this.workFromHome,
    required this.segment,
    required this.segmentLabelValue,
    required this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternChallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.salary,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    required this.ppoSalary,
    required this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    required this.campaignStartDateTime,
    required this.campaignLaunchDateTime,
    required this.campaignEarlyAccessStartDateTime,
    required this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2bApplyNow,
    required this.toShowB2bLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    required this.officeDays,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    try {
      int id = json['id'] ?? 0;
      String title = json['title'] ?? '';
      String employmentType = json['employment_type'] ?? '';
      ApplicationStatusMessage applicationStatusMessage =
          ApplicationStatusMessage.fromJson(
              json['application_status_message'] ?? {});
      String jobTitle = json['job_title'] ?? '';
      bool workFromHome = json['work_from_home'] ?? false;
      String segment = json['segment'] ?? '';
      String segmentLabelValue = json['segment_label_value'] ?? '';
      String internshipTypeLabelValue =
          json['internship_type_label_value'] ?? '';
      List<String> jobSegments = List<String>.from(json['job_segments'] ?? []);
      String companyName = json['company_name'] ?? '';
      String companyUrl = json['company_url'] ?? '';
      bool isPremium = json['is_premium'] ?? false;
      bool isPremiumInternship = json['is_premium_internship'] ?? false;
      String employerName = json['employer_name'] ?? '';
      String companyLogo = json['company_logo'] ?? '';
      String type = json['type'] ?? '';
      String url = json['url'] ?? '';
      int isInternChallenge = json['is_internchallenge'] ?? 0;
      bool isExternal = json['is_external'] ?? false;
      bool isActive = json['is_active'] ?? false;
      DateTime? expiresAt = json['expires_at'] != null
          ? DateTime.parse(json['expires_at'])
          : null;
      String closedAt = json['closed_at'] ?? '';
      String profileName = json['profile_name'] ?? '';
      bool partTime = json['part_time'] ?? false;
      String startDate = json['start_date'] ?? '';
      String duration = json['duration'] ?? '';
      Stipend stipend = Stipend.fromJson(json['stipend'] ?? {});
      String salary = json['salary'] ?? '';
      String jobExperience = json['job_experience'] ?? '';
      String experience = json['experience'] ?? '';
      DateTime? postedOn = json['postedOnDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['postedOnDateTime'] * 1000)
          : null;
      String? applicationDeadline = json['application_deadline'] ?? '';
      String expiringIn = json['expiring_in'] ?? '';
      String postedByLabel = json['posted_by_label'] ?? '';
      String postedByLabelType = json['posted_by_label_type'] ?? '';
      List<String> locationNames =
          List<String>.from(json['location_names'] ?? []);
      List<Location> locations = List<Location>.from(
          json['locations']?.map((loc) => Location.fromJson(loc)) ?? []);
      DateTime? startDateComparisonFormat =
          json['start_date_comparison_format'] != null
              ? DateTime.parse(json['start_date_comparison_format'])
              : null;
      DateTime? startDate1 = json['start_date1'] != null
          ? DateTime.parse(json['start_date1'])
          : null;
      DateTime? startDate2 = json['start_date2'] != null
          ? DateTime.parse(json['start_date2'])
          : null;
      bool isPpo = json['is_ppo'] ?? false;
      bool isPpoSalaryDisclosed = json['is_ppo_salary_disclosed'] ?? false;
      String ppoSalary = json['ppo_salary'] ?? '';
      String ppoSalary2 = json['ppo_salary2'] ?? '';
      String ppoLabelValue = json['ppo_label_value'] ?? '';
      bool toShowExtraLabel = json['to_show_extra_label'] ?? false;
      String extraLabelValue = json['extra_label_value'] ?? '';
      bool isExtraLabelBlack = json['is_extra_label_black'] ?? false;
      List<String> campaignNames =
          List<String>.from(json['campaign_names'] ?? []);
      String campaignName = json['campaign_name'] ?? '';
      bool toShowInSearch = json['to_show_in_search'] ?? false;
      String campaignUrl = json['campaign_url'] ?? '';
      DateTime? campaignStartDateTime = json['campaign_start_date_time'] != null
          ? DateTime.parse(json['campaign_start_date_time'])
          : null;
      DateTime? campaignLaunchDateTime =
          json['campaign_launch_date_time'] != null
              ? DateTime.parse(json['campaign_launch_date_time'])
              : null;
      DateTime? campaignEarlyAccessStartDateTime =
          json['campaign_early_access_start_date_time'] != null
              ? DateTime.parse(json['campaign_early_access_start_date_time'])
              : null;
      DateTime? campaignEndDateTime = json['campaign_end_date_time'] != null
          ? DateTime.parse(json['campaign_end_date_time'])
          : null;
      List<Label> labels = List<Label>.from(
          json['labels']?.map((label) => Label.fromJson(label)) ?? []);
      String labelsApp = json['labels_app'] ?? '';
      List<String> labelsAppInCard =
          List<String>.from(json['labels_app_in_card'] ?? []);
      bool isCovidWfhSelected = json['is_covid_wfh_selected'] ?? false;
      bool toShowCardMessage = json['to_show_card_message'] ?? false;
      String message = json['message'] ?? '';
      bool isApplicationCappingEnabled =
          json['is_application_capping_enabled'] ?? false;
      String applicationCappingMessage =
          json['application_capping_message'] ?? '';
      List<String> overrideMetaDetails =
          List<String>.from(json['override_meta_details'] ?? []);
      bool eligibleForEasyApply = json['eligible_for_easy_apply'] ?? false;
      bool eligibleForB2bApplyNow = json['eligible_for_b2b_apply_now'] ?? false;
      bool toShowB2bLabel = json['to_show_b2b_label'] ?? false;
      bool isInternationalJob = json['is_international_job'] ?? false;
      bool toShowCoverLetter = json['to_show_cover_letter'] ?? false;
      String officeDays = json['office_days'] ?? '';

      return Job(
        id: id,
        title: title,
        employmentType: employmentType,
        applicationStatusMessage: applicationStatusMessage,
        jobTitle: jobTitle,
        workFromHome: workFromHome,
        segment: segment,
        segmentLabelValue: segmentLabelValue,
        internshipTypeLabelValue: internshipTypeLabelValue,
        jobSegments: jobSegments,
        companyName: companyName,
        companyUrl: companyUrl,
        isPremium: isPremium,
        isPremiumInternship: isPremiumInternship,
        employerName: employerName,
        companyLogo: companyLogo,
        type: type,
        url: url,
        isInternChallenge: isInternChallenge,
        isExternal: isExternal,
        isActive: isActive,
        expiresAt: expiresAt,
        closedAt: closedAt,
        profileName: profileName,
        partTime: partTime,
        startDate: startDate,
        duration: duration,
        stipend: stipend,
        salary: salary,
        jobExperience: jobExperience,
        experience: experience,
        postedOn: postedOn,
        applicationDeadline: applicationDeadline,
        expiringIn: expiringIn,
        postedByLabel: postedByLabel,
        postedByLabelType: postedByLabelType,
        locationNames: locationNames,
        locations: locations,
        startDateComparisonFormat: startDateComparisonFormat,
        startDate1: startDate1,
        startDate2: startDate2,
        isPpo: isPpo,
        isPpoSalaryDisclosed: isPpoSalaryDisclosed,
        ppoSalary: ppoSalary,
        ppoSalary2: ppoSalary2,
        ppoLabelValue: ppoLabelValue,
        toShowExtraLabel: toShowExtraLabel,
        extraLabelValue: extraLabelValue,
        isExtraLabelBlack: isExtraLabelBlack,
        campaignNames: campaignNames,
        campaignName: campaignName,
        toShowInSearch: toShowInSearch,
        campaignUrl: campaignUrl,
        campaignStartDateTime: campaignStartDateTime,
        campaignLaunchDateTime: campaignLaunchDateTime,
        campaignEarlyAccessStartDateTime: campaignEarlyAccessStartDateTime,
        campaignEndDateTime: campaignEndDateTime,
        labels: labels,
        labelsApp: labelsApp,
        labelsAppInCard: labelsAppInCard,
        isCovidWfhSelected: isCovidWfhSelected,
        toShowCardMessage: toShowCardMessage,
        message: message,
        isApplicationCappingEnabled: isApplicationCappingEnabled,
        applicationCappingMessage: applicationCappingMessage,
        overrideMetaDetails: overrideMetaDetails,
        eligibleForEasyApply: eligibleForEasyApply,
        eligibleForB2bApplyNow: eligibleForB2bApplyNow,
        toShowB2bLabel: toShowB2bLabel,
        isInternationalJob: isInternationalJob,
        toShowCoverLetter: toShowCoverLetter,
        officeDays: officeDays,
      );
    } catch (e) {
      print('Error parsing Job: $e');
      // Handle or rethrow the exception as needed
      throw Exception('Error parsing Job: $e');
    }
  }
}
