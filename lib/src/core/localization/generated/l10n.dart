// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `О ребенке`
  String get aboutChild {
    return Intl.message(
      'О ребенке',
      name: 'aboutChild',
      desc: '',
      args: [],
    );
  }

  /// `Академические достижения`
  String get academicAchievements {
    return Intl.message(
      'Академические достижения',
      name: 'academicAchievements',
      desc: '',
      args: [],
    );
  }

  /// `Академическая дисциплина`
  String get academicDiscipline {
    return Intl.message(
      'Академическая дисциплина',
      name: 'academicDiscipline',
      desc: '',
      args: [],
    );
  }

  /// `Успеваемость`
  String get academicPerformance {
    return Intl.message(
      'Успеваемость',
      name: 'academicPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Успеваемость по вашему предмету`
  String get academicPerformanceInYourSubject {
    return Intl.message(
      'Успеваемость по вашему предмету',
      name: 'academicPerformanceInYourSubject',
      desc: '',
      args: [],
    );
  }

  /// `Успеваемость класса`
  String get academicPerformanceOfTheClass {
    return Intl.message(
      'Успеваемость класса',
      name: 'academicPerformanceOfTheClass',
      desc: '',
      args: [],
    );
  }

  /// `Одобрено`
  String get accepted {
    return Intl.message(
      'Одобрено',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Аккаунт`
  String get account {
    return Intl.message(
      'Аккаунт',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Настройки аккаунта`
  String get accountSettings {
    return Intl.message(
      'Настройки аккаунта',
      name: 'accountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Достижения`
  String get achievements {
    return Intl.message(
      'Достижения',
      name: 'achievements',
      desc: '',
      args: [],
    );
  }

  /// `Активно`
  String get active {
    return Intl.message(
      'Активно',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Факт`
  String get actual {
    return Intl.message(
      'Факт',
      name: 'actual',
      desc: '',
      args: [],
    );
  }

  /// `Добавить изображение сертификата`
  String get addACertificateImage {
    return Intl.message(
      'Добавить изображение сертификата',
      name: 'addACertificateImage',
      desc: '',
      args: [],
    );
  }

  /// `Добавить сертификат`
  String get addCertificate {
    return Intl.message(
      'Добавить сертификат',
      name: 'addCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Добавить медиа,файлы`
  String get addMediaFile {
    return Intl.message(
      'Добавить медиа,файлы',
      name: 'addMediaFile',
      desc: '',
      args: [],
    );
  }

  /// `Добавить еще`
  String get addMore {
    return Intl.message(
      'Добавить еще',
      name: 'addMore',
      desc: '',
      args: [],
    );
  }

  /// `Все поля обязательны для заполнения`
  String get allFieldsAreRequired {
    return Intl.message(
      'Все поля обязательны для заполнения',
      name: 'allFieldsAreRequired',
      desc: '',
      args: [],
    );
  }

  /// `Проанализировать`
  String get analyze {
    return Intl.message(
      'Проанализировать',
      name: 'analyze',
      desc: '',
      args: [],
    );
  }

  /// `Проанализировать снова`
  String get analyzeAgain {
    return Intl.message(
      'Проанализировать снова',
      name: 'analyzeAgain',
      desc: '',
      args: [],
    );
  }

  /// `Проблемы с приложением? Напишите нам на `
  String get appIssuesContactUs {
    return Intl.message(
      'Проблемы с приложением? Напишите нам на ',
      name: 'appIssuesContactUs',
      desc: '',
      args: [],
    );
  }

  /// `Апрель`
  String get april {
    return Intl.message(
      'Апрель',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите открепить это сообщение?`
  String get areYouSureYouWantToUnpinThisMessage {
    return Intl.message(
      'Вы уверены, что хотите открепить это сообщение?',
      name: 'areYouSureYouWantToUnpinThisMessage',
      desc: '',
      args: [],
    );
  }

  /// `Усидчивость`
  String get assiduity {
    return Intl.message(
      'Усидчивость',
      name: 'assiduity',
      desc: '',
      args: [],
    );
  }

  /// `Посещ.`
  String get attendance {
    return Intl.message(
      'Посещ.',
      name: 'attendance',
      desc: '',
      args: [],
    );
  }

  /// `Запись аудио об ученике`
  String get audioRecordingAboutStudent {
    return Intl.message(
      'Запись аудио об ученике',
      name: 'audioRecordingAboutStudent',
      desc: '',
      args: [],
    );
  }

  /// `Август`
  String get august {
    return Intl.message(
      'Август',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `Доступные классы`
  String get availableClasses {
    return Intl.message(
      'Доступные классы',
      name: 'availableClasses',
      desc: '',
      args: [],
    );
  }

  /// `Средняя оценка`
  String get averageGrade {
    return Intl.message(
      'Средняя оценка',
      name: 'averageGrade',
      desc: '',
      args: [],
    );
  }

  /// `Повед.`
  String get behavior {
    return Intl.message(
      'Повед.',
      name: 'behavior',
      desc: '',
      args: [],
    );
  }

  /// `Оба списка статистики должны содержать ровно 6 значений`
  String get bothStatisticsListsMustContainExactly6Values {
    return Intl.message(
      'Оба списка статистики должны содержать ровно 6 значений',
      name: 'bothStatisticsListsMustContainExactly6Values',
      desc: '',
      args: [],
    );
  }

  /// `Расскажите или напишите кратко об ученике`
  String get briefDescriptionOfStudent {
    return Intl.message(
      'Расскажите или напишите кратко об ученике',
      name: 'briefDescriptionOfStudent',
      desc: '',
      args: [],
    );
  }

  /// `Посмотреть все`
  String get buttonViewAll {
    return Intl.message(
      'Посмотреть все',
      name: 'buttonViewAll',
      desc: '',
      args: [],
    );
  }

  /// `По алфавиту`
  String get byAlphabet {
    return Intl.message(
      'По алфавиту',
      name: 'byAlphabet',
      desc: '',
      args: [],
    );
  }

  /// `По посещаемости`
  String get byAttendance {
    return Intl.message(
      'По посещаемости',
      name: 'byAttendance',
      desc: '',
      args: [],
    );
  }

  /// `По успеваемости`
  String get byPerformance {
    return Intl.message(
      'По успеваемости',
      name: 'byPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Календарь`
  String get calendar {
    return Intl.message(
      'Календарь',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get cancel {
    return Intl.message(
      'Отменить',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Заполнено`
  String get capitalCompleted {
    return Intl.message(
      'Заполнено',
      name: 'capitalCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Категория`
  String get category {
    return Intl.message(
      'Категория',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Обновление категории`
  String get categoryUpdate {
    return Intl.message(
      'Обновление категории',
      name: 'categoryUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Сертификат`
  String get certificate {
    return Intl.message(
      'Сертификат',
      name: 'certificate',
      desc: '',
      args: [],
    );
  }

  /// `Сертификаты`
  String get certificates {
    return Intl.message(
      'Сертификаты',
      name: 'certificates',
      desc: '',
      args: [],
    );
  }

  /// `Смена пароля`
  String get changePassword {
    return Intl.message(
      'Смена пароля',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Портрет ребенка от преподавателей`
  String get childPortraitFromTeachers {
    return Intl.message(
      'Портрет ребенка от преподавателей',
      name: 'childPortraitFromTeachers',
      desc: '',
      args: [],
    );
  }

  /// `Дети`
  String get children {
    return Intl.message(
      'Дети',
      name: 'children',
      desc: '',
      args: [],
    );
  }

  /// `Выберите язык отчета`
  String get chooseReportLanguage {
    return Intl.message(
      'Выберите язык отчета',
      name: 'chooseReportLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Успеваемость класса`
  String get classPerformance {
    return Intl.message(
      'Успеваемость класса',
      name: 'classPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Класс`
  String get class_ {
    return Intl.message(
      'Класс',
      name: 'class_',
      desc: '',
      args: [],
    );
  }

  /// `Классный руководитель`
  String get classroomTeacher {
    return Intl.message(
      'Классный руководитель',
      name: 'classroomTeacher',
      desc: '',
      args: [],
    );
  }

  /// `Класс`
  String get classs {
    return Intl.message(
      'Класс',
      name: 'classs',
      desc: '',
      args: [],
    );
  }

  /// `Коллаборация`
  String get collaboration {
    return Intl.message(
      'Коллаборация',
      name: 'collaboration',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий:`
  String get coment {
    return Intl.message(
      'Комментарий:',
      name: 'coment',
      desc: '',
      args: [],
    );
  }

  /// `комментариев`
  String get comments {
    return Intl.message(
      'комментариев',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `заполнено`
  String get completed {
    return Intl.message(
      'заполнено',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Заполнено`
  String get completedCapital {
    return Intl.message(
      'Заполнено',
      name: 'completedCapital',
      desc: '',
      args: [],
    );
  }

  /// `Рассмотрение`
  String get consideration {
    return Intl.message(
      'Рассмотрение',
      name: 'consideration',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get continueNext {
    return Intl.message(
      'Продолжить',
      name: 'continueNext',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить запись`
  String get continueRecording {
    return Intl.message(
      'Продолжить запись',
      name: 'continueRecording',
      desc: '',
      args: [],
    );
  }

  /// `Вклад в общий успех`
  String get contributionToTheOverallSuccess {
    return Intl.message(
      'Вклад в общий успех',
      name: 'contributionToTheOverallSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось запустить почтовый клиент`
  String get couldNotLaunchEmailClient {
    return Intl.message(
      'Не удалось запустить почтовый клиент',
      name: 'couldNotLaunchEmailClient',
      desc: '',
      args: [],
    );
  }

  /// `Креативность`
  String get creativity {
    return Intl.message(
      'Креативность',
      name: 'creativity',
      desc: '',
      args: [],
    );
  }

  /// `Дата не указана`
  String get dateNotSpecified {
    return Intl.message(
      'Дата не указана',
      name: 'dateNotSpecified',
      desc: '',
      args: [],
    );
  }

  /// `Дата выдачи`
  String get dateOfIssue {
    return Intl.message(
      'Дата выдачи',
      name: 'dateOfIssue',
      desc: '',
      args: [],
    );
  }

  /// `Декабрь`
  String get december {
    return Intl.message(
      'Декабрь',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Отклонено:`
  String get declined {
    return Intl.message(
      'Отклонено:',
      name: 'declined',
      desc: '',
      args: [],
    );
  }

  /// `Описание (необязательно)`
  String get descriptionOptional {
    return Intl.message(
      'Описание (необязательно)',
      name: 'descriptionOptional',
      desc: '',
      args: [],
    );
  }

  /// `Детали KPI`
  String get detailKpi {
    return Intl.message(
      'Детали KPI',
      name: 'detailKpi',
      desc: '',
      args: [],
    );
  }

  /// `Дневник`
  String get diary {
    return Intl.message(
      'Дневник',
      name: 'diary',
      desc: '',
      args: [],
    );
  }

  /// `Выполнено`
  String get done {
    return Intl.message(
      'Выполнено',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Скачать PDF`
  String get downloadPdf {
    return Intl.message(
      'Скачать PDF',
      name: 'downloadPdf',
      desc: '',
      args: [],
    );
  }

  /// `Скачать отчет`
  String get downloadReport {
    return Intl.message(
      'Скачать отчет',
      name: 'downloadReport',
      desc: '',
      args: [],
    );
  }

  /// `Ободрено`
  String get encouraged {
    return Intl.message(
      'Ободрено',
      name: 'encouraged',
      desc: '',
      args: [],
    );
  }

  /// `Вовлеченность`
  String get engagement {
    return Intl.message(
      'Вовлеченность',
      name: 'engagement',
      desc: '',
      args: [],
    );
  }

  /// `Написать вручную`
  String get enterManually {
    return Intl.message(
      'Написать вручную',
      name: 'enterManually',
      desc: '',
      args: [],
    );
  }

  /// `Введите текст об ученике`
  String get enterTextAboutStudent {
    return Intl.message(
      'Введите текст об ученике',
      name: 'enterTextAboutStudent',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные занятия`
  String get extracurricularActivities {
    return Intl.message(
      'Дополнительные занятия',
      name: 'extracurricularActivities',
      desc: '',
      args: [],
    );
  }

  /// `факт`
  String get fact {
    return Intl.message(
      'факт',
      name: 'fact',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось сохранить метрики`
  String get failedToSaveMetrics {
    return Intl.message(
      'Не удалось сохранить метрики',
      name: 'failedToSaveMetrics',
      desc: '',
      args: [],
    );
  }

  /// `Февраль`
  String get february {
    return Intl.message(
      'Февраль',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `Итоговые оценки`
  String get finalGrades {
    return Intl.message(
      'Итоговые оценки',
      name: 'finalGrades',
      desc: '',
      args: [],
    );
  }

  /// `для`
  String get forr {
    return Intl.message(
      'для',
      name: 'forr',
      desc: '',
      args: [],
    );
  }

  /// `Forward tapped`
  String get forwardTapped {
    return Intl.message(
      'Forward tapped',
      name: 'forwardTapped',
      desc: '',
      args: [],
    );
  }

  /// `От преподавателя на этой неделе`
  String get fromTeacherThisWeek {
    return Intl.message(
      'От преподавателя на этой неделе',
      name: 'fromTeacherThisWeek',
      desc: '',
      args: [],
    );
  }

  /// `Полное название`
  String get fullName {
    return Intl.message(
      'Полное название',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Начните с добавления Вашего первого сертификата!`
  String get getStartedByAddingYourFirstCertificate {
    return Intl.message(
      'Начните с добавления Вашего первого сертификата!',
      name: 'getStartedByAddingYourFirstCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Перейти`
  String get goTo {
    return Intl.message(
      'Перейти',
      name: 'goTo',
      desc: '',
      args: [],
    );
  }

  /// `цель`
  String get goal {
    return Intl.message(
      'цель',
      name: 'goal',
      desc: '',
      args: [],
    );
  }

  /// `Оценки`
  String get grades {
    return Intl.message(
      'Оценки',
      name: 'grades',
      desc: '',
      args: [],
    );
  }

  /// `Оценки за:`
  String get gradesFor {
    return Intl.message(
      'Оценки за:',
      name: 'gradesFor',
      desc: '',
      args: [],
    );
  }

  /// `Журнал оценок`
  String get gradesJournal {
    return Intl.message(
      'Журнал оценок',
      name: 'gradesJournal',
      desc: '',
      args: [],
    );
  }

  /// `Журнал оценок`
  String get gradesList {
    return Intl.message(
      'Журнал оценок',
      name: 'gradesList',
      desc: '',
      args: [],
    );
  }

  /// `Значение оценок`
  String get gradesValue {
    return Intl.message(
      'Значение оценок',
      name: 'gradesValue',
      desc: '',
      args: [],
    );
  }

  /// `Опекун`
  String get guardian {
    return Intl.message(
      'Опекун',
      name: 'guardian',
      desc: '',
      args: [],
    );
  }

  /// `Важные темы этой четверти`
  String get importantTopicsOfThisQuarter {
    return Intl.message(
      'Важные темы этой четверти',
      name: 'importantTopicsOfThisQuarter',
      desc: '',
      args: [],
    );
  }

  /// `Улучшились`
  String get improved {
    return Intl.message(
      'Улучшились',
      name: 'improved',
      desc: '',
      args: [],
    );
  }

  /// `Показатели`
  String get indicators {
    return Intl.message(
      'Показатели',
      name: 'indicators',
      desc: '',
      args: [],
    );
  }

  /// `Инсайты`
  String get insights {
    return Intl.message(
      'Инсайты',
      name: 'insights',
      desc: '',
      args: [],
    );
  }

  /// `Взаимодействие с родителями`
  String get interactionWithParents {
    return Intl.message(
      'Взаимодействие с родителями',
      name: 'interactionWithParents',
      desc: '',
      args: [],
    );
  }

  /// `Интерфейс`
  String get interface {
    return Intl.message(
      'Интерфейс',
      name: 'interface',
      desc: '',
      args: [],
    );
  }

  /// `Январь`
  String get january {
    return Intl.message(
      'Январь',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `Журнал`
  String get journal {
    return Intl.message(
      'Журнал',
      name: 'journal',
      desc: '',
      args: [],
    );
  }

  /// `Июль`
  String get july {
    return Intl.message(
      'Июль',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `Июнь`
  String get june {
    return Intl.message(
      'Июнь',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Лидерские качества`
  String get leadershipSkills {
    return Intl.message(
      'Лидерские качества',
      name: 'leadershipSkills',
      desc: '',
      args: [],
    );
  }

  /// `Список учеников`
  String get listOfStudents {
    return Intl.message(
      'Список учеников',
      name: 'listOfStudents',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из учетной записи`
  String get logOut {
    return Intl.message(
      'Выйти из учетной записи',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get made {
    return Intl.message(
      'Готово',
      name: 'made',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get mail {
    return Intl.message(
      'Почта',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `Главные моменты`
  String get mainPoints {
    return Intl.message(
      'Главные моменты',
      name: 'mainPoints',
      desc: '',
      args: [],
    );
  }

  /// `Выберите 6 качеств, которые вы хотите видеть на главном экране`
  String get mainScreenQualities {
    return Intl.message(
      'Выберите 6 качеств, которые вы хотите видеть на главном экране',
      name: 'mainScreenQualities',
      desc: '',
      args: [],
    );
  }

  /// `Управление`
  String get management {
    return Intl.message(
      'Управление',
      name: 'management',
      desc: '',
      args: [],
    );
  }

  /// `Март`
  String get march {
    return Intl.message(
      'Март',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `Май`
  String get may {
    return Intl.message(
      'Май',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `Сообщение`
  String get message {
    return Intl.message(
      'Сообщение',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Сообщение скопировано`
  String get messageCopiedToClipboard {
    return Intl.message(
      'Сообщение скопировано',
      name: 'messageCopiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете менять какие качества вы хотите видеть в настройках`
  String get modifyAttributesDescription {
    return Intl.message(
      'Вы можете менять какие качества вы хотите видеть в настройках',
      name: 'modifyAttributesDescription',
      desc: '',
      args: [],
    );
  }

  /// `еще`
  String get more {
    return Intl.message(
      'еще',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Подробнее`
  String get moreDetail {
    return Intl.message(
      'Подробнее',
      name: 'moreDetail',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Новые достижения`
  String get newAchievements {
    return Intl.message(
      'Новые достижения',
      name: 'newAchievements',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Нет активных отчетностей`
  String get noActiveReports {
    return Intl.message(
      'Нет активных отчетностей',
      name: 'noActiveReports',
      desc: '',
      args: [],
    );
  }

  /// `Попыток не осталось`
  String get noAttemptsLeft {
    return Intl.message(
      'Попыток не осталось',
      name: 'noAttemptsLeft',
      desc: '',
      args: [],
    );
  }

  /// `Сертификаты не найдены`
  String get noCertificatesFound {
    return Intl.message(
      'Сертификаты не найдены',
      name: 'noCertificatesFound',
      desc: '',
      args: [],
    );
  }

  /// `Нет доступных классов`
  String get noClassAvailable {
    return Intl.message(
      'Нет доступных классов',
      name: 'noClassAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Комментарии не найдены`
  String get noCommentsFound {
    return Intl.message(
      'Комментарии не найдены',
      name: 'noCommentsFound',
      desc: '',
      args: [],
    );
  }

  /// `Курсы недоступны`
  String get noCoursesAvailable {
    return Intl.message(
      'Курсы недоступны',
      name: 'noCoursesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Нет данных`
  String get noData {
    return Intl.message(
      'Нет данных',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Нет доступных оценок.`
  String get noGradesAvailable {
    return Intl.message(
      'Нет доступных оценок.',
      name: 'noGradesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Качества не найдены`
  String get noQualitiesFound {
    return Intl.message(
      'Качества не найдены',
      name: 'noQualitiesFound',
      desc: '',
      args: [],
    );
  }

  /// `Рекомендации временно недоступны`
  String get noRecommendationsAvailableForNow {
    return Intl.message(
      'Рекомендации временно недоступны',
      name: 'noRecommendationsAvailableForNow',
      desc: '',
      args: [],
    );
  }

  /// `Студенты не найдены`
  String get noStudentsFound {
    return Intl.message(
      'Студенты не найдены',
      name: 'noStudentsFound',
      desc: '',
      args: [],
    );
  }

  /// `Не найдено действительных оценок`
  String get noValidGradesFound {
    return Intl.message(
      'Не найдено действительных оценок',
      name: 'noValidGradesFound',
      desc: '',
      args: [],
    );
  }

  /// `Не выполнено`
  String get notDone {
    return Intl.message(
      'Не выполнено',
      name: 'notDone',
      desc: '',
      args: [],
    );
  }

  /// `Здесь пока ничего нет`
  String get nothingHereYet {
    return Intl.message(
      'Здесь пока ничего нет',
      name: 'nothingHereYet',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notifications {
    return Intl.message(
      'Уведомления',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления о важных событиях будут приходить в любом случае`
  String get notificationsImportantEventsWillArriveAnyway {
    return Intl.message(
      'Уведомления о важных событиях будут приходить в любом случае',
      name: 'notificationsImportantEventsWillArriveAnyway',
      desc: '',
      args: [],
    );
  }

  /// `Собеседники не увидят то, что вы отключили уведомления`
  String get notificationsInvisibilityNote {
    return Intl.message(
      'Собеседники не увидят то, что вы отключили уведомления',
      name: 'notificationsInvisibilityNote',
      desc: '',
      args: [],
    );
  }

  /// `Ноябрь`
  String get november {
    return Intl.message(
      'Ноябрь',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `Октябрь`
  String get october {
    return Intl.message(
      'Октябрь',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `Другие комментарии`
  String get otherComments {
    return Intl.message(
      'Другие комментарии',
      name: 'otherComments',
      desc: '',
      args: [],
    );
  }

  /// `Общая успеваемость`
  String get overallAcademicPerformance {
    return Intl.message(
      'Общая успеваемость',
      name: 'overallAcademicPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Просрочено`
  String get overdue {
    return Intl.message(
      'Просрочено',
      name: 'overdue',
      desc: '',
      args: [],
    );
  }

  /// `Родитель`
  String get parent {
    return Intl.message(
      'Родитель',
      name: 'parent',
      desc: '',
      args: [],
    );
  }

  /// `Взаимодействие с родителями`
  String get parentInteraction {
    return Intl.message(
      'Взаимодействие с родителями',
      name: 'parentInteraction',
      desc: '',
      args: [],
    );
  }

  /// `Сдано`
  String get passed {
    return Intl.message(
      'Сдано',
      name: 'passed',
      desc: '',
      args: [],
    );
  }

  /// `Пропусков`
  String get passes {
    return Intl.message(
      'Пропусков',
      name: 'passes',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Усп.`
  String get performance {
    return Intl.message(
      'Усп.',
      name: 'performance',
      desc: '',
      args: [],
    );
  }

  /// `Персональные достижения`
  String get personalTraits {
    return Intl.message(
      'Персональные достижения',
      name: 'personalTraits',
      desc: '',
      args: [],
    );
  }

  /// `Физическая подготовка`
  String get physicalTraining {
    return Intl.message(
      'Физическая подготовка',
      name: 'physicalTraining',
      desc: '',
      args: [],
    );
  }

  /// `Закрепленное сообщение`
  String get pinnedMessage {
    return Intl.message(
      'Закрепленное сообщение',
      name: 'pinnedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Навыки планирования`
  String get planningSkills {
    return Intl.message(
      'Навыки планирования',
      name: 'planningSkills',
      desc: '',
      args: [],
    );
  }

  /// `Пост успешно добавлен`
  String get postAddedSuccessfully {
    return Intl.message(
      'Пост успешно добавлен',
      name: 'postAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Предыдущий`
  String get previous {
    return Intl.message(
      'Предыдущий',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Профильный предмет`
  String get profileSubject {
    return Intl.message(
      'Профильный предмет',
      name: 'profileSubject',
      desc: '',
      args: [],
    );
  }

  /// `Шестиугольник качеств`
  String get qualitiesHexagon {
    return Intl.message(
      'Шестиугольник качеств',
      name: 'qualitiesHexagon',
      desc: '',
      args: [],
    );
  }

  /// `Качество обратной связи`
  String get qualityOfFeedback {
    return Intl.message(
      'Качество обратной связи',
      name: 'qualityOfFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Журнал оценок`
  String get ratingLog {
    return Intl.message(
      'Журнал оценок',
      name: 'ratingLog',
      desc: '',
      args: [],
    );
  }

  /// `Читать далее`
  String get readMore {
    return Intl.message(
      'Читать далее',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Отклонено`
  String get rejected {
    return Intl.message(
      'Отклонено',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Замечаний`
  String get remarks {
    return Intl.message(
      'Замечаний',
      name: 'remarks',
      desc: '',
      args: [],
    );
  }

  /// `Replying to:`
  String get replyingTo {
    return Intl.message(
      'Replying to:',
      name: 'replyingTo',
      desc: '',
      args: [],
    );
  }

  /// `Отчетности`
  String get report {
    return Intl.message(
      'Отчетности',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Ответственность`
  String get responsibility {
    return Intl.message(
      'Ответственность',
      name: 'responsibility',
      desc: '',
      args: [],
    );
  }

  /// `Вернуться к записи`
  String get returnToRecord {
    return Intl.message(
      'Вернуться к записи',
      name: 'returnToRecord',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Школа`
  String get school {
    return Intl.message(
      'Школа',
      name: 'school',
      desc: '',
      args: [],
    );
  }

  /// `Найти`
  String get search {
    return Intl.message(
      'Найти',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `СОР`
  String get sectionAssessment {
    return Intl.message(
      'СОР',
      name: 'sectionAssessment',
      desc: '',
      args: [],
    );
  }

  /// `Выбрано`
  String get selected {
    return Intl.message(
      'Выбрано',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Самостоятельность`
  String get selfsufficiency {
    return Intl.message(
      'Самостоятельность',
      name: 'selfsufficiency',
      desc: '',
      args: [],
    );
  }

  /// `Отправлено`
  String get sent {
    return Intl.message(
      'Отправлено',
      name: 'sent',
      desc: '',
      args: [],
    );
  }

  /// `Отправлено с опозданием`
  String get sentWithDelay {
    return Intl.message(
      'Отправлено с опозданием',
      name: 'sentWithDelay',
      desc: '',
      args: [],
    );
  }

  /// `Сентябрь`
  String get september {
    return Intl.message(
      'Сентябрь',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `Сервисы`
  String get services {
    return Intl.message(
      'Сервисы',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Показать сначала`
  String get showFirst {
    return Intl.message(
      'Показать сначала',
      name: 'showFirst',
      desc: '',
      args: [],
    );
  }

  /// `Значительно улучшились`
  String get significantlyImproved {
    return Intl.message(
      'Значительно улучшились',
      name: 'significantlyImproved',
      desc: '',
      args: [],
    );
  }

  /// `Значительно ухудшились`
  String get significantlyWorsened {
    return Intl.message(
      'Значительно ухудшились',
      name: 'significantlyWorsened',
      desc: '',
      args: [],
    );
  }

  /// `Социальная информация`
  String get socialInfo {
    return Intl.message(
      'Социальная информация',
      name: 'socialInfo',
      desc: '',
      args: [],
    );
  }

  /// `Стабильно`
  String get stable {
    return Intl.message(
      'Стабильно',
      name: 'stable',
      desc: '',
      args: [],
    );
  }

  /// `Ученик`
  String get student {
    return Intl.message(
      'Ученик',
      name: 'student',
      desc: '',
      args: [],
    );
  }

  /// `Отчетность об ученике`
  String get studentReport {
    return Intl.message(
      'Отчетность об ученике',
      name: 'studentReport',
      desc: '',
      args: [],
    );
  }

  /// `Ученики`
  String get students {
    return Intl.message(
      'Ученики',
      name: 'students',
      desc: '',
      args: [],
    );
  }

  /// `Шестиугольник предметов`
  String get subjectQuality {
    return Intl.message(
      'Шестиугольник предметов',
      name: 'subjectQuality',
      desc: '',
      args: [],
    );
  }

  /// `Журнал предметов`
  String get subjectsJournal {
    return Intl.message(
      'Журнал предметов',
      name: 'subjectsJournal',
      desc: '',
      args: [],
    );
  }

  /// `Суммативные оценивания`
  String get summativeAssessments {
    return Intl.message(
      'Суммативные оценивания',
      name: 'summativeAssessments',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Учитель`
  String get teacher {
    return Intl.message(
      'Учитель',
      name: 'teacher',
      desc: '',
      args: [],
    );
  }

  /// `Комментарии преподавателей`
  String get teacherComments {
    return Intl.message(
      'Комментарии преподавателей',
      name: 'teacherComments',
      desc: '',
      args: [],
    );
  }

  /// `Рекомендации и запросы учителей`
  String get teachersRecommendationsAndRequests {
    return Intl.message(
      'Рекомендации и запросы учителей',
      name: 'teachersRecommendationsAndRequests',
      desc: '',
      args: [],
    );
  }

  /// `Техподдержка`
  String get techSupport {
    return Intl.message(
      'Техподдержка',
      name: 'techSupport',
      desc: '',
      args: [],
    );
  }

  /// `ЧЕТВЕРТЬ`
  String get term {
    return Intl.message(
      'ЧЕТВЕРТЬ',
      name: 'term',
      desc: '',
      args: [],
    );
  }

  /// `СОЧ`
  String get termAssessment {
    return Intl.message(
      'СОЧ',
      name: 'termAssessment',
      desc: '',
      args: [],
    );
  }

  /// `Обучение`
  String get training {
    return Intl.message(
      'Обучение',
      name: 'training',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестный курс`
  String get unknownCourse {
    return Intl.message(
      'Неизвестный курс',
      name: 'unknownCourse',
      desc: '',
      args: [],
    );
  }

  /// `Открепить`
  String get unpin {
    return Intl.message(
      'Открепить',
      name: 'unpin',
      desc: '',
      args: [],
    );
  }

  /// `Посмотреть все предметы`
  String get viewAllSubjects {
    return Intl.message(
      'Посмотреть все предметы',
      name: 'viewAllSubjects',
      desc: '',
      args: [],
    );
  }

  /// `Еженедельный отчет`
  String get weeklyReport {
    return Intl.message(
      'Еженедельный отчет',
      name: 'weeklyReport',
      desc: '',
      args: [],
    );
  }

  /// `вес`
  String get weight {
    return Intl.message(
      'вес',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Ухудшились`
  String get worsened {
    return Intl.message(
      'Ухудшились',
      name: 'worsened',
      desc: '',
      args: [],
    );
  }

  /// `Ваш ребенок`
  String get yourChild {
    return Intl.message(
      'Ваш ребенок',
      name: 'yourChild',
      desc: '',
      args: [],
    );
  }

  /// `Ваш класс`
  String get yourClass {
    return Intl.message(
      'Ваш класс',
      name: 'yourClass',
      desc: '',
      args: [],
    );
  }

  /// `Ваш KPI`
  String get yourKpi {
    return Intl.message(
      'Ваш KPI',
      name: 'yourKpi',
      desc: '',
      args: [],
    );
  }

  /// `Новая публикация`
  String get newPublication {
    return Intl.message(
      'Новая публикация',
      name: 'newPublication',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get title {
    return Intl.message(
      'Название',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get description {
    return Intl.message(
      'Описание',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Теги`
  String get tags {
    return Intl.message(
      'Теги',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Кому показывать`
  String get showToWhom {
    return Intl.message(
      'Кому показывать',
      name: 'showToWhom',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться`
  String get share {
    return Intl.message(
      'Поделиться',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Классы не найдены`
  String get noClassesFound {
    return Intl.message(
      'Классы не найдены',
      name: 'noClassesFound',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, выберите класс`
  String get pleaseSelectClass {
    return Intl.message(
      'Пожалуйста, выберите класс',
      name: 'pleaseSelectClass',
      desc: '',
      args: [],
    );
  }

  /// `Загрузка...`
  String get loading {
    return Intl.message(
      'Загрузка...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Загрузка класса...`
  String get loadingClass {
    return Intl.message(
      'Загрузка класса...',
      name: 'loadingClass',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Student`
  String get unknownStudent {
    return Intl.message(
      'Unknown Student',
      name: 'unknownStudent',
      desc: '',
      args: [],
    );
  }

  /// `Отчетность по`
  String get reportAbout {
    return Intl.message(
      'Отчетность по',
      name: 'reportAbout',
      desc: '',
      args: [],
    );
  }

  /// `Behavior`
  String get behaviorNotes {
    return Intl.message(
      'Behavior',
      name: 'behaviorNotes',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте комментарий`
  String get addComments {
    return Intl.message(
      'Добавьте комментарий',
      name: 'addComments',
      desc: '',
      args: [],
    );
  }

  /// `Категории не найдены`
  String get noCategoriesFound {
    return Intl.message(
      'Категории не найдены',
      name: 'noCategoriesFound',
      desc: '',
      args: [],
    );
  }

  /// `Попробуйте снова позже`
  String get tryAgainLater {
    return Intl.message(
      'Попробуйте снова позже',
      name: 'tryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `Проблемы с сетью`
  String get networkIssues {
    return Intl.message(
      'Проблемы с сетью',
      name: 'networkIssues',
      desc: '',
      args: [],
    );
  }

  /// `Проверка соединения...`
  String get checkingConnection {
    return Intl.message(
      'Проверка соединения...',
      name: 'checkingConnection',
      desc: '',
      args: [],
    );
  }

  /// `Подключение восстановлено`
  String get connectionRestored {
    return Intl.message(
      'Подключение восстановлено',
      name: 'connectionRestored',
      desc: '',
      args: [],
    );
  }

  /// `Подключение отсутствует`
  String get noConnection {
    return Intl.message(
      'Подключение отсутствует',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Плохое интернет соединение`
  String get poorInternetConnection {
    return Intl.message(
      'Плохое интернет соединение',
      name: 'poorInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Повторить`
  String get tryAgain {
    return Intl.message(
      'Повторить',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Оцените отчетность учителя`
  String get evaluateTheTeacherReporting {
    return Intl.message(
      'Оцените отчетность учителя',
      name: 'evaluateTheTeacherReporting',
      desc: '',
      args: [],
    );
  }

  /// `Какие у вас впечатления от отчета`
  String get whatAreYourImpressionsOfTheReport {
    return Intl.message(
      'Какие у вас впечатления от отчета',
      name: 'whatAreYourImpressionsOfTheReport',
      desc: '',
      args: [],
    );
  }

  /// `от классного руководителя?`
  String get fromTheClassroomTeacher {
    return Intl.message(
      'от классного руководителя?',
      name: 'fromTheClassroomTeacher',
      desc: '',
      args: [],
    );
  }

  /// `Вы хотите скачать отчет по ключевым показателям эффективности (KPI)?`
  String get doYouWantToDownloadTheKpiReport {
    return Intl.message(
      'Вы хотите скачать отчет по ключевым показателям эффективности (KPI)?',
      name: 'doYouWantToDownloadTheKpiReport',
      desc: '',
      args: [],
    );
  }

  /// `Скачать`
  String get download {
    return Intl.message(
      'Скачать',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Подготовка к скачиванию`
  String get preparingDownload {
    return Intl.message(
      'Подготовка к скачиванию',
      name: 'preparingDownload',
      desc: '',
      args: [],
    );
  }

  /// `Время ожидания запроса истекло. Пожалуйста, попробуйте еще раз.`
  String get requestTimedOutPleaseTryAgain {
    return Intl.message(
      'Время ожидания запроса истекло. Пожалуйста, попробуйте еще раз.',
      name: 'requestTimedOutPleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Oк`
  String get ok {
    return Intl.message(
      'Oк',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `URL для скачивания недоступен`
  String get downloadUrlNotAvailable {
    return Intl.message(
      'URL для скачивания недоступен',
      name: 'downloadUrlNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Скачать отчет KPI`
  String get downloadKpiReport {
    return Intl.message(
      'Скачать отчет KPI',
      name: 'downloadKpiReport',
      desc: '',
      args: [],
    );
  }

  /// `Данные о посещаемости отсутствуют`
  String get noAttendanceDataAvailable {
    return Intl.message(
      'Данные о посещаемости отсутствуют',
      name: 'noAttendanceDataAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Средняя посещаемость`
  String get averageAttendance {
    return Intl.message(
      'Средняя посещаемость',
      name: 'averageAttendance',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, подождите, пока начнётся загрузка`
  String get pleaseWaitForTheDownloadToBegin {
    return Intl.message(
      'Пожалуйста, подождите, пока начнётся загрузка',
      name: 'pleaseWaitForTheDownloadToBegin',
      desc: '',
      args: [],
    );
  }

  /// `Отличная посещаемость, почти без пропусков`
  String get excellentAttendanceAlmostNoAbsences {
    return Intl.message(
      'Отличная посещаемость, почти без пропусков',
      name: 'excellentAttendanceAlmostNoAbsences',
      desc: '',
      args: [],
    );
  }

  /// `Хорошая посещаемость, редкие пропуски`
  String get goodAttendanceRareAbsences {
    return Intl.message(
      'Хорошая посещаемость, редкие пропуски',
      name: 'goodAttendanceRareAbsences',
      desc: '',
      args: [],
    );
  }

  /// `Уровень посещаемости класса остаётся стабильным`
  String get classAttendanceLevelRemainsStable {
    return Intl.message(
      'Уровень посещаемости класса остаётся стабильным',
      name: 'classAttendanceLevelRemainsStable',
      desc: '',
      args: [],
    );
  }

  /// `Удовлетворительная посещаемость, есть пропуски`
  String get satisfactoryAttendanceSomeAbsences {
    return Intl.message(
      'Удовлетворительная посещаемость, есть пропуски',
      name: 'satisfactoryAttendanceSomeAbsences',
      desc: '',
      args: [],
    );
  }

  /// `Низкая посещаемость, много пропусков`
  String get lowAttendanceManyAbsences {
    return Intl.message(
      'Низкая посещаемость, много пропусков',
      name: 'lowAttendanceManyAbsences',
      desc: '',
      args: [],
    );
  }

  /// `Временные технические проблемы`
  String get temporaryTechnicalIssues {
    return Intl.message(
      'Временные технические проблемы',
      name: 'temporaryTechnicalIssues',
      desc: '',
      args: [],
    );
  }

  /// `Select source`
  String get selectSource {
    return Intl.message(
      'Select source',
      name: 'selectSource',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `События`
  String get events {
    return Intl.message(
      'События',
      name: 'events',
      desc: '',
      args: [],
    );
  }

  /// `Аналитика`
  String get analytics {
    return Intl.message(
      'Аналитика',
      name: 'analytics',
      desc: '',
      args: [],
    );
  }

  /// `Конфликты`
  String get conflicts {
    return Intl.message(
      'Конфликты',
      name: 'conflicts',
      desc: '',
      args: [],
    );
  }

  /// `Конфликт`
  String get conflict {
    return Intl.message(
      'Конфликт',
      name: 'conflict',
      desc: '',
      args: [],
    );
  }

  /// `Курение`
  String get smoking {
    return Intl.message(
      'Курение',
      name: 'smoking',
      desc: '',
      args: [],
    );
  }

  /// `Списывание`
  String get cheating {
    return Intl.message(
      'Списывание',
      name: 'cheating',
      desc: '',
      args: [],
    );
  }

  /// `Горячие точки`
  String get hotspots {
    return Intl.message(
      'Горячие точки',
      name: 'hotspots',
      desc: '',
      args: [],
    );
  }

  /// `Проблемный класс`
  String get troubleClass {
    return Intl.message(
      'Проблемный класс',
      name: 'troubleClass',
      desc: '',
      args: [],
    );
  }

  /// `Классы`
  String get classes {
    return Intl.message(
      'Классы',
      name: 'classes',
      desc: '',
      args: [],
    );
  }

  /// `Камеры`
  String get cameras {
    return Intl.message(
      'Камеры',
      name: 'cameras',
      desc: '',
      args: [],
    );
  }

  /// `На проверку`
  String get forChecking {
    return Intl.message(
      'На проверку',
      name: 'forChecking',
      desc: '',
      args: [],
    );
  }

  /// `Все события`
  String get allEvents {
    return Intl.message(
      'Все события',
      name: 'allEvents',
      desc: '',
      args: [],
    );
  }

  /// `За день`
  String get forDay {
    return Intl.message(
      'За день',
      name: 'forDay',
      desc: '',
      args: [],
    );
  }

  /// `За неделю`
  String get forWeek {
    return Intl.message(
      'За неделю',
      name: 'forWeek',
      desc: '',
      args: [],
    );
  }

  /// `За месяц`
  String get forMonth {
    return Intl.message(
      'За месяц',
      name: 'forMonth',
      desc: '',
      args: [],
    );
  }

  /// `За период`
  String get forPeriod {
    return Intl.message(
      'За период',
      name: 'forPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать период`
  String get selectPeriod {
    return Intl.message(
      'Выбрать период',
      name: 'selectPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Осталось`
  String get left {
    return Intl.message(
      'Осталось',
      name: 'left',
      desc: '',
      args: [],
    );
  }

  /// `{minutes} мин`
  String minutes(Object minutes) {
    return Intl.message(
      '$minutes мин',
      name: 'minutes',
      desc: '',
      args: [minutes],
    );
  }

  /// `{hours} ч`
  String hours(Object hours) {
    return Intl.message(
      '$hours ч',
      name: 'hours',
      desc: '',
      args: [hours],
    );
  }

  /// `Обзор`
  String get review {
    return Intl.message(
      'Обзор',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Новости`
  String get news {
    return Intl.message(
      'Новости',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Чаты`
  String get chats {
    return Intl.message(
      'Чаты',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Вы`
  String get you {
    return Intl.message(
      'Вы',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Сортировка`
  String get sorting {
    return Intl.message(
      'Сортировка',
      name: 'sorting',
      desc: '',
      args: [],
    );
  }

  /// `Сортировка`
  String get sort {
    return Intl.message(
      'Сортировка',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Сортировка`
  String get sortOptions {
    return Intl.message(
      'Сортировка',
      name: 'sortOptions',
      desc: '',
      args: [],
    );
  }

  /// `Всего: {count}`
  String total(Object count) {
    return Intl.message(
      'Всего: $count',
      name: 'total',
      desc: '',
      args: [count],
    );
  }

  /// `Все`
  String get all {
    return Intl.message(
      'Все',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Переадресовано`
  String get redirected {
    return Intl.message(
      'Переадресовано',
      name: 'redirected',
      desc: '',
      args: [],
    );
  }

  /// `На обработку`
  String get forProcessing {
    return Intl.message(
      'На обработку',
      name: 'forProcessing',
      desc: '',
      args: [],
    );
  }

  /// `Обработано`
  String get processed {
    return Intl.message(
      'Обработано',
      name: 'processed',
      desc: '',
      args: [],
    );
  }

  /// `Другое`
  String get other {
    return Intl.message(
      'Другое',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Фильтры`
  String get filters {
    return Intl.message(
      'Фильтры',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Очистить все`
  String get clearAll {
    return Intl.message(
      'Очистить все',
      name: 'clearAll',
      desc: '',
      args: [],
    );
  }

  /// `По дате`
  String get byDate {
    return Intl.message(
      'По дате',
      name: 'byDate',
      desc: '',
      args: [],
    );
  }

  /// `По типу`
  String get byType {
    return Intl.message(
      'По типу',
      name: 'byType',
      desc: '',
      args: [],
    );
  }

  /// `Показать результаты`
  String get showResults {
    return Intl.message(
      'Показать результаты',
      name: 'showResults',
      desc: '',
      args: [],
    );
  }

  /// `Срочные`
  String get eventsUrgent {
    return Intl.message(
      'Срочные',
      name: 'eventsUrgent',
      desc: '',
      args: [],
    );
  }

  /// `Новые`
  String get eventsNew {
    return Intl.message(
      'Новые',
      name: 'eventsNew',
      desc: '',
      args: [],
    );
  }

  /// `Старые`
  String get eventsOld {
    return Intl.message(
      'Старые',
      name: 'eventsOld',
      desc: '',
      args: [],
    );
  }

  /// `Пока нет событий на проверку`
  String get noEventForChecking {
    return Intl.message(
      'Пока нет событий на проверку',
      name: 'noEventForChecking',
      desc: '',
      args: [],
    );
  }

  /// `Пока нет событий`
  String get noEventYet {
    return Intl.message(
      'Пока нет событий',
      name: 'noEventYet',
      desc: '',
      args: [],
    );
  }

  /// `Срок истек`
  String get timeOut {
    return Intl.message(
      'Срок истек',
      name: 'timeOut',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
