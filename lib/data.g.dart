// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      password: json['password'] as String? ?? "",
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      text: json['text'] as String,
      mood: json['mood'] as String,
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'mood': instance.mood,
    };

_$EventTagImpl _$$EventTagImplFromJson(Map<String, dynamic> json) =>
    _$EventTagImpl(
      name: json['name'] as String,
      color: (json['color'] as num?)?.toInt() ?? 0xFFDFE7FF,
    );

Map<String, dynamic> _$$EventTagImplToJson(_$EventTagImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
    };

_$EventLocationImpl _$$EventLocationImplFromJson(Map<String, dynamic> json) =>
    _$EventLocationImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$EventLocationImplToJson(_$EventLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$DiaryEntryImpl _$$DiaryEntryImplFromJson(Map<String, dynamic> json) =>
    _$DiaryEntryImpl(
      id: json['id'] as String,
      beginTime: DateTime.parse(json['beginTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      title: json['title'] as String,
      summary: json['summary'] as String,
      content: json['content'] as String,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => EventTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      location:
          EventLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiaryEntryImplToJson(_$DiaryEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beginTime': instance.beginTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'title': instance.title,
      'summary': instance.summary,
      'content': instance.content,
      'tags': instance.tags,
      'location': instance.location,
    };

_$DiaryEntryNoteImpl _$$DiaryEntryNoteImplFromJson(Map<String, dynamic> json) =>
    _$DiaryEntryNoteImpl(
      id: json['id'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$DiaryEntryNoteImplToJson(
        _$DiaryEntryNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
    };

_$ReflectionImpl _$$ReflectionImplFromJson(Map<String, dynamic> json) =>
    _$ReflectionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ReflectionImplToJson(_$ReflectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'items': instance.items,
      'content': instance.content,
    };

_$MoodScoreImpl _$$MoodScoreImplFromJson(Map<String, dynamic> json) =>
    _$MoodScoreImpl(
      value: (json['value'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
    );

Map<String, dynamic> _$$MoodScoreImplToJson(_$MoodScoreImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'change': instance.change,
    };

_$StressLevelImpl _$$StressLevelImplFromJson(Map<String, dynamic> json) =>
    _$StressLevelImpl(
      value: (json['value'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
    );

Map<String, dynamic> _$$StressLevelImplToJson(_$StressLevelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'change': instance.change,
    };

_$HighlightImpl _$$HighlightImplFromJson(Map<String, dynamic> json) =>
    _$HighlightImpl(
      category: json['category'] as String,
      content: json['content'] as String,
      color: (json['color'] as num?)?.toInt() ?? 0xFF00FF00,
    );

Map<String, dynamic> _$$HighlightImplToJson(_$HighlightImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'content': instance.content,
      'color': instance.color,
    };

_$ArchivedHighlightsImpl _$$ArchivedHighlightsImplFromJson(
        Map<String, dynamic> json) =>
    _$ArchivedHighlightsImpl(
      beginTime: DateTime.parse(json['beginTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => Highlight.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArchivedHighlightsImplToJson(
        _$ArchivedHighlightsImpl instance) =>
    <String, dynamic>{
      'beginTime': instance.beginTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'highlights': instance.highlights,
    };

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      tag: json['tag'] as String,
      description: json['description'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
    };

_$EnergyLevelImpl _$$EnergyLevelImplFromJson(Map<String, dynamic> json) =>
    _$EnergyLevelImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$EnergyLevelImplToJson(_$EnergyLevelImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'value': instance.value,
    };

_$MoodTrackingImpl _$$MoodTrackingImplFromJson(Map<String, dynamic> json) =>
    _$MoodTrackingImpl(
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      color: (json['color'] as num?)?.toInt() ?? 0xFF000000,
    );

Map<String, dynamic> _$$MoodTrackingImplToJson(_$MoodTrackingImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'color': instance.color,
    };

_$AwakeTimeAllocationImpl _$$AwakeTimeAllocationImplFromJson(
        Map<String, dynamic> json) =>
    _$AwakeTimeAllocationImpl(
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      color: (json['color'] as num?)?.toInt() ?? 0xFF00FF00,
    );

Map<String, dynamic> _$$AwakeTimeAllocationImplToJson(
        _$AwakeTimeAllocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'color': instance.color,
    };

_$SocialEntityImpl _$$SocialEntityImplFromJson(Map<String, dynamic> json) =>
    _$SocialEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      tips: (json['tips'] as List<dynamic>).map((e) => e as String).toList(),
      hours: (json['hours'] as num).toDouble(),
      impact: json['impact'] as String? ?? '',
    );

Map<String, dynamic> _$$SocialEntityImplToJson(_$SocialEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tips': instance.tips,
      'hours': instance.hours,
      'impact': instance.impact,
    };

_$SocialMapImpl _$$SocialMapImplFromJson(Map<String, dynamic> json) =>
    _$SocialMapImpl(
      id: json['id'] as String,
      socialEntities: (json['socialEntities'] as List<dynamic>)
          .map((e) => SocialEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SocialMapImplToJson(_$SocialMapImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'socialEntities': instance.socialEntities,
    };

_$JournalImpl _$$JournalImplFromJson(Map<String, dynamic> json) =>
    _$JournalImpl(
      id: json['id'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      summary: json['summary'] as String,
      diaryEntries: (json['diaryEntries'] as List<dynamic>)
          .map((e) => DiaryEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      quotes: (json['quotes'] as List<dynamic>)
          .map((e) => Quote.fromJson(e as Map<String, dynamic>))
          .toList(),
      selfReflections: (json['selfReflections'] as List<dynamic>)
          .map((e) => Reflection.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailedInsights: (json['detailedInsights'] as List<dynamic>)
          .map((e) => Reflection.fromJson(e as Map<String, dynamic>))
          .toList(),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => Reflection.fromJson(e as Map<String, dynamic>))
          .toList(),
      moodScore: MoodScore.fromJson(json['moodScore'] as Map<String, dynamic>),
      stressLevel:
          StressLevel.fromJson(json['stressLevel'] as Map<String, dynamic>),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => Highlight.fromJson(e as Map<String, dynamic>))
          .toList(),
      energyLevels: (json['energyLevels'] as List<dynamic>)
          .map((e) => EnergyLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      moodTrackings: (json['moodTrackings'] as List<dynamic>)
          .map((e) => MoodTracking.fromJson(e as Map<String, dynamic>))
          .toList(),
      awakeTimeAllocations: (json['awakeTimeAllocations'] as List<dynamic>)
          .map((e) => AwakeTimeAllocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      socialMap: SocialMap.fromJson(json['socialMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JournalImplToJson(_$JournalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'summary': instance.summary,
      'diaryEntries': instance.diaryEntries,
      'quotes': instance.quotes,
      'selfReflections': instance.selfReflections,
      'detailedInsights': instance.detailedInsights,
      'goals': instance.goals,
      'moodScore': instance.moodScore,
      'stressLevel': instance.stressLevel,
      'highlights': instance.highlights,
      'energyLevels': instance.energyLevels,
      'moodTrackings': instance.moodTrackings,
      'awakeTimeAllocations': instance.awakeTimeAllocations,
      'socialMap': instance.socialMap,
    };

_$MoodScoreDashboardImpl _$$MoodScoreDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$MoodScoreDashboardImpl(
      insights:
          (json['insights'] as List<dynamic>).map((e) => e as String).toList(),
      scores: (json['scores'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      day: (json['day'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      week: (json['week'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      month: (json['month'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$MoodScoreDashboardImplToJson(
        _$MoodScoreDashboardImpl instance) =>
    <String, dynamic>{
      'insights': instance.insights,
      'scores': instance.scores,
      'day': instance.day,
      'week': instance.week,
      'month': instance.month,
    };

_$StressLevelDashboardImpl _$$StressLevelDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$StressLevelDashboardImpl(
      insights:
          (json['insights'] as List<dynamic>).map((e) => e as String).toList(),
      scores: (json['scores'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      day: (json['day'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      week: (json['week'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      month: (json['month'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$StressLevelDashboardImplToJson(
        _$StressLevelDashboardImpl instance) =>
    <String, dynamic>{
      'insights': instance.insights,
      'scores': instance.scores,
      'day': instance.day,
      'week': instance.week,
      'month': instance.month,
    };

_$EnergyLevelDashboardImpl _$$EnergyLevelDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$EnergyLevelDashboardImpl(
      insights:
          (json['insights'] as List<dynamic>).map((e) => e as String).toList(),
      scores: (json['scores'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      day: (json['day'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      week: (json['week'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      month: (json['month'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$EnergyLevelDashboardImplToJson(
        _$EnergyLevelDashboardImpl instance) =>
    <String, dynamic>{
      'insights': instance.insights,
      'scores': instance.scores,
      'day': instance.day,
      'week': instance.week,
      'month': instance.month,
    };

_$MoodTrackingDashboardEntryImpl _$$MoodTrackingDashboardEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$MoodTrackingDashboardEntryImpl(
      moodTracking:
          MoodTracking.fromJson(json['moodTracking'] as Map<String, dynamic>),
      day: (json['day'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      week: (json['week'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      month: (json['month'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$MoodTrackingDashboardEntryImplToJson(
        _$MoodTrackingDashboardEntryImpl instance) =>
    <String, dynamic>{
      'moodTracking': instance.moodTracking,
      'day': instance.day,
      'week': instance.week,
      'month': instance.month,
    };

_$MoodTrackingDashboardImpl _$$MoodTrackingDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$MoodTrackingDashboardImpl(
      entries: (json['entries'] as List<dynamic>)
          .map((e) =>
              MoodTrackingDashboardEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      insights:
          (json['insights'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MoodTrackingDashboardImplToJson(
        _$MoodTrackingDashboardImpl instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'insights': instance.insights,
    };

_$AwakeTimeAllocationDashboardEntryImpl
    _$$AwakeTimeAllocationDashboardEntryImplFromJson(
            Map<String, dynamic> json) =>
        _$AwakeTimeAllocationDashboardEntryImpl(
          awakeTimeAllocation: AwakeTimeAllocation.fromJson(
              json['awakeTimeAllocation'] as Map<String, dynamic>),
          day: (json['day'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
          week: (json['week'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
          month: (json['month'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
        );

Map<String, dynamic> _$$AwakeTimeAllocationDashboardEntryImplToJson(
        _$AwakeTimeAllocationDashboardEntryImpl instance) =>
    <String, dynamic>{
      'awakeTimeAllocation': instance.awakeTimeAllocation,
      'day': instance.day,
      'week': instance.week,
      'month': instance.month,
    };

_$AwakeTimeAllocationDashboardImpl _$$AwakeTimeAllocationDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$AwakeTimeAllocationDashboardImpl(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => AwakeTimeAllocationDashboardEntry.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      insights:
          (json['insights'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AwakeTimeAllocationDashboardImplToJson(
        _$AwakeTimeAllocationDashboardImpl instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'insights': instance.insights,
    };

_$DashboardImpl _$$DashboardImplFromJson(Map<String, dynamic> json) =>
    _$DashboardImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      moodScore: MoodScoreDashboard.fromJson(
          json['moodScore'] as Map<String, dynamic>),
      stressLevel: StressLevelDashboard.fromJson(
          json['stressLevel'] as Map<String, dynamic>),
      energyLevel: EnergyLevelDashboard.fromJson(
          json['energyLevel'] as Map<String, dynamic>),
      moodTracking: MoodTrackingDashboard.fromJson(
          json['moodTracking'] as Map<String, dynamic>),
      awakeTimeAllocation: AwakeTimeAllocationDashboard.fromJson(
          json['awakeTimeAllocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardImplToJson(_$DashboardImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'moodScore': instance.moodScore,
      'stressLevel': instance.stressLevel,
      'energyLevel': instance.energyLevel,
      'moodTracking': instance.moodTracking,
      'awakeTimeAllocation': instance.awakeTimeAllocation,
    };
