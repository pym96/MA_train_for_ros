
"use strict";

let GpioData = require('./GpioData.js');
let TofRadarData = require('./TofRadarData.js');
let BalanceState = require('./BalanceState.js');
let ShootCmd = require('./ShootCmd.js');
let MultiDofCmd = require('./MultiDofCmd.js');
let ChassisCmd = require('./ChassisCmd.js');
let MovingAverageData = require('./MovingAverageData.js');
let ShootState = require('./ShootState.js');
let GimbalDesError = require('./GimbalDesError.js');
let LpData = require('./LpData.js');
let TagMsgArray = require('./TagMsgArray.js');
let KalmanData = require('./KalmanData.js');
let ActuatorState = require('./ActuatorState.js');
let DbusData = require('./DbusData.js');
let TagMsg = require('./TagMsg.js');
let GimbalCmd = require('./GimbalCmd.js');
let TargetDetection = require('./TargetDetection.js');
let TargetDetectionArray = require('./TargetDetectionArray.js');
let TrackData = require('./TrackData.js');
let PowerManagementSampleAndStatusData = require('./PowerManagementSampleAndStatusData.js');
let StateCmd = require('./StateCmd.js');
let ShootData = require('./ShootData.js');
let DartStatus = require('./DartStatus.js');
let GameRobotStatus = require('./GameRobotStatus.js');
let MapSentryData = require('./MapSentryData.js');
let PowerManagementProcessStackOverflowData = require('./PowerManagementProcessStackOverflowData.js');
let RadarData = require('./RadarData.js');
let RobotsPositionData = require('./RobotsPositionData.js');
let PowerManagementInitializationExceptionData = require('./PowerManagementInitializationExceptionData.js');
let DartRemainingTime = require('./DartRemainingTime.js');
let EngineerUi = require('./EngineerUi.js');
let ClientMapReceiveData = require('./ClientMapReceiveData.js');
let SupplyProjectileAction = require('./SupplyProjectileAction.js');
let GameRobotHp = require('./GameRobotHp.js');
let EventData = require('./EventData.js');
let CapacityData = require('./CapacityData.js');
let RobotHurt = require('./RobotHurt.js');
let RfidStatus = require('./RfidStatus.js');
let DartClientCmd = require('./DartClientCmd.js');
let PowerHeatData = require('./PowerHeatData.js');
let GameStatus = require('./GameStatus.js');
let IcraBuffDebuffZoneStatus = require('./IcraBuffDebuffZoneStatus.js');
let PowerManagementSystemExceptionData = require('./PowerManagementSystemExceptionData.js');
let PowerManagementUnknownExceptionData = require('./PowerManagementUnknownExceptionData.js');
let ClientMapSendData = require('./ClientMapSendData.js');
let RadarMarkData = require('./RadarMarkData.js');
let BulletAllowance = require('./BulletAllowance.js');
let ManualToReferee = require('./ManualToReferee.js');
let EngineerActionGoal = require('./EngineerActionGoal.js');
let EngineerActionResult = require('./EngineerActionResult.js');
let EngineerGoal = require('./EngineerGoal.js');
let EngineerFeedback = require('./EngineerFeedback.js');
let EngineerResult = require('./EngineerResult.js');
let EngineerActionFeedback = require('./EngineerActionFeedback.js');
let EngineerAction = require('./EngineerAction.js');

module.exports = {
  GpioData: GpioData,
  TofRadarData: TofRadarData,
  BalanceState: BalanceState,
  ShootCmd: ShootCmd,
  MultiDofCmd: MultiDofCmd,
  ChassisCmd: ChassisCmd,
  MovingAverageData: MovingAverageData,
  ShootState: ShootState,
  GimbalDesError: GimbalDesError,
  LpData: LpData,
  TagMsgArray: TagMsgArray,
  KalmanData: KalmanData,
  ActuatorState: ActuatorState,
  DbusData: DbusData,
  TagMsg: TagMsg,
  GimbalCmd: GimbalCmd,
  TargetDetection: TargetDetection,
  TargetDetectionArray: TargetDetectionArray,
  TrackData: TrackData,
  PowerManagementSampleAndStatusData: PowerManagementSampleAndStatusData,
  StateCmd: StateCmd,
  ShootData: ShootData,
  DartStatus: DartStatus,
  GameRobotStatus: GameRobotStatus,
  MapSentryData: MapSentryData,
  PowerManagementProcessStackOverflowData: PowerManagementProcessStackOverflowData,
  RadarData: RadarData,
  RobotsPositionData: RobotsPositionData,
  PowerManagementInitializationExceptionData: PowerManagementInitializationExceptionData,
  DartRemainingTime: DartRemainingTime,
  EngineerUi: EngineerUi,
  ClientMapReceiveData: ClientMapReceiveData,
  SupplyProjectileAction: SupplyProjectileAction,
  GameRobotHp: GameRobotHp,
  EventData: EventData,
  CapacityData: CapacityData,
  RobotHurt: RobotHurt,
  RfidStatus: RfidStatus,
  DartClientCmd: DartClientCmd,
  PowerHeatData: PowerHeatData,
  GameStatus: GameStatus,
  IcraBuffDebuffZoneStatus: IcraBuffDebuffZoneStatus,
  PowerManagementSystemExceptionData: PowerManagementSystemExceptionData,
  PowerManagementUnknownExceptionData: PowerManagementUnknownExceptionData,
  ClientMapSendData: ClientMapSendData,
  RadarMarkData: RadarMarkData,
  BulletAllowance: BulletAllowance,
  ManualToReferee: ManualToReferee,
  EngineerActionGoal: EngineerActionGoal,
  EngineerActionResult: EngineerActionResult,
  EngineerGoal: EngineerGoal,
  EngineerFeedback: EngineerFeedback,
  EngineerResult: EngineerResult,
  EngineerActionFeedback: EngineerActionFeedback,
  EngineerAction: EngineerAction,
};
