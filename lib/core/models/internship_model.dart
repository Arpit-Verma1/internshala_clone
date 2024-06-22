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
  final bool isInternChallenge;
  final bool isExternal;
  final bool isActive;
  final DateTime? expiresAt; // Nullable
  final DateTime? closedAt; // Nullable
  final String profileName;
  final bool partTime;
  final String startDate;
  final String duration;
  final Stipend stipend;
  final String salary;
  final String jobExperience;
  final String experience;
  final DateTime? postedOn; // Nullable
  final DateTime? applicationDeadline; // Nullable
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
  final int officeDays;

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
    return Job(
      id: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      applicationStatusMessage:
          ApplicationStatusMessage.fromJson(json['application_status_message']),
      jobTitle: json['job_title'],
      workFromHome: json['work_from_home'],
      segment: json['segment'],
      segmentLabelValue: json['segment_label_value'],
      internshipTypeLabelValue: json['internship_type_label_value'],
      jobSegments: List<String>.from(json['job_segments']),
      companyName: json['company_name'],
      companyUrl: json['company_url'],
      isPremium: json['is_premium'],
      isPremiumInternship: json['is_premium_internship'],
      employerName: json['employer_name'],
      companyLogo: json['company_logo'],
      type: json['type'],
      url: json['url'],
      isInternChallenge: json['is_internchallenge'],
      isExternal: json['is_external'],
      isActive: json['is_active'],
      expiresAt: json['expires_at'] != null
          ? DateTime.parse(json['expires_at'])
          : null,
      closedAt:
          json['closed_at'] != null ? DateTime.parse(json['closed_at']) : null,
      profileName: json['profile_name'],
      partTime: json['part_time'],
      startDate: json['start_date'],
      duration: json['duration'],
      stipend: Stipend.fromJson(json['stipend']),
      salary: json['salary'],
      jobExperience: json['job_experience'],
      experience: json['experience'],
      postedOn: json['postedOnDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['postedOnDateTime'] * 1000)
          : null,
      applicationDeadline: json['application_deadline'] != null
          ? DateTime.parse(json['application_deadline'])
          : null,
      expiringIn: json['expiring_in'],
      postedByLabel: json['posted_by_label'],
      postedByLabelType: json['posted_by_label_type'],
      locationNames: List<String>.from(json['location_names']),
      locations: List<Location>.from(
          json['locations'].map((loc) => Location.fromJson(loc))),
      startDateComparisonFormat: json['start_date_comparison_format'] != null
          ? DateTime.parse(json['start_date_comparison_format'])
          : null,
      startDate1: json['start_date1'] != null
          ? DateTime.parse(json['start_date1'])
          : null,
      startDate2: json['start_date2'] != null
          ? DateTime.parse(json['start_date2'])
          : null,
      isPpo: json['is_ppo'],
      isPpoSalaryDisclosed: json['is_ppo_salary_disclosed'],
      ppoSalary: json['ppo_salary'],
      ppoSalary2: json['ppo_salary2'],
      ppoLabelValue: json['ppo_label_value'],
      toShowExtraLabel: json['to_show_extra_label'],
      extraLabelValue: json['extra_label_value'],
      isExtraLabelBlack: json['is_extra_label_black'],
      campaignNames: List<String>.from(json['campaign_names']),
      campaignName: json['campaign_name'],
      toShowInSearch: json['to_show_in_search'],
      campaignUrl: json['campaign_url'],
      campaignStartDateTime: json['campaign_start_date_time'] != null
          ? DateTime.parse(json['campaign_start_date_time'])
          : null,
      campaignLaunchDateTime: json['campaign_launch_date_time'] != null
          ? DateTime.parse(json['campaign_launch_date_time'])
          : null,
      campaignEarlyAccessStartDateTime:
          json['campaign_early_access_start_date_time'] != null
              ? DateTime.parse(json['campaign_early_access_start_date_time'])
              : null,
      campaignEndDateTime: json['campaign_end_date_time'] != null
          ? DateTime.parse(json['campaign_end_date_time'])
          : null,
      labels: List<Label>.from(
          json['labels'].map((label) => Label.fromJson(label))),
      labelsApp: json['labels_app'],
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
      isCovidWfhSelected: json['is_covid_wfh_selected'],
      toShowCardMessage: json['to_show_card_message'],
      message: json['message'],
      isApplicationCappingEnabled: json['is_application_capping_enabled'],
      applicationCappingMessage: json['application_capping_message'],
      overrideMetaDetails: List<String>.from(json['override_meta_details']),
      eligibleForEasyApply: json['eligible_for_easy_apply'],
      eligibleForB2bApplyNow: json['eligible_for_b2b_apply_now'],
      toShowB2bLabel: json['to_show_b2b_label'],
      isInternationalJob: json['is_international_job'],
      toShowCoverLetter: json['to_show_cover_letter'],
      officeDays: json['office_days'],
    );
  }
}
