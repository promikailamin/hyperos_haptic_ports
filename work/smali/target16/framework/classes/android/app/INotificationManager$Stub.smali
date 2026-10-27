.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final blacklist PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_addAutomaticZenRule:I = 0x89

.field static final blacklist TRANSACTION_allowAssistantAdjustment:I = 0x19

.field static final blacklist TRANSACTION_appCanBePromoted:I = 0xa2

.field static final greylist-max-o TRANSACTION_applyAdjustmentFromAssistant:I = 0x65

.field static final greylist-max-o TRANSACTION_applyAdjustmentsFromAssistant:I = 0x66

.field static final greylist-max-o TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x64

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x92

.field static final blacklist TRANSACTION_areBubblesAllowed:I = 0x1e

.field static final blacklist TRANSACTION_areBubblesEnabled:I = 0x1f

.field static final greylist-max-o TRANSACTION_areChannelsBypassingDnd:I = 0x3d

.field static final greylist-max-o TRANSACTION_areNotificationsEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_areNotificationsEnabledForPackage:I = 0x13

.field static final blacklist TRANSACTION_canBePromoted:I = 0xa3

.field static final blacklist TRANSACTION_canNotifyAsPackage:I = 0x96

.field static final greylist-max-o TRANSACTION_canShowBadge:I = 0xb

.field static final blacklist TRANSACTION_canUseFullScreenIntent:I = 0x97

.field static final greylist-max-o TRANSACTION_cancelAllNotifications:I = 0x1

.field static final greylist-max-o TRANSACTION_cancelNotificationFromListener:I = 0x4c

.field static final greylist-max-o TRANSACTION_cancelNotificationWithTag:I = 0x8

.field static final greylist-max-o TRANSACTION_cancelNotificationsFromListener:I = 0x4d

.field static final greylist-max-o TRANSACTION_cancelToast:I = 0x5

.field static final blacklist TRANSACTION_cleanUpCallersAfter:I = 0x6b

.field static final greylist-max-o TRANSACTION_clearData:I = 0x2

.field static final blacklist TRANSACTION_clearRequestedListenerHints:I = 0x58

.field static final blacklist TRANSACTION_createConversationNotificationChannelForPackage:I = 0x30

.field static final blacklist TRANSACTION_createConversationNotificationChannelForPackageFromPrivilegedListener:I = 0x60

.field static final greylist-max-o TRANSACTION_createNotificationChannelGroups:I = 0x21

.field static final greylist-max-o TRANSACTION_createNotificationChannels:I = 0x22

.field static final greylist-max-o TRANSACTION_createNotificationChannelsForPackage:I = 0x23

.field static final greylist-max-o TRANSACTION_deleteNotificationChannel:I = 0x32

.field static final greylist-max-o TRANSACTION_deleteNotificationChannelGroup:I = 0x38

.field static final blacklist TRANSACTION_deleteNotificationHistoryItem:I = 0x42

.field static final blacklist TRANSACTION_disallowAssistantAdjustment:I = 0x1a

.field static final greylist-max-r TRANSACTION_enqueueNotificationWithTag:I = 0x7

.field static final blacklist TRANSACTION_enqueueTextToast:I = 0x3

.field static final greylist-max-o TRANSACTION_enqueueToast:I = 0x4

.field static final greylist-max-o TRANSACTION_finishToken:I = 0x6

.field static final greylist-max-o TRANSACTION_getActiveNotifications:I = 0x45

.field static final greylist-max-o TRANSACTION_getActiveNotificationsFromListener:I = 0x56

.field static final blacklist TRANSACTION_getActiveNotificationsWithAttribution:I = 0x46

.field static final blacklist TRANSACTION_getAdjustmentDeniedPackages:I = 0xa8

.field static final blacklist TRANSACTION_getAllowedAssistantAdjustments:I = 0x17

.field static final blacklist TRANSACTION_getAllowedAssistantAdjustmentsForUser:I = 0x18

.field static final blacklist TRANSACTION_getAllowedClassificationTypes:I = 0xa6

.field static final blacklist TRANSACTION_getAllowedNotificationAssistant:I = 0x77

.field static final blacklist TRANSACTION_getAllowedNotificationAssistantForUser:I = 0x76

.field static final greylist-max-o TRANSACTION_getAppActiveNotifications:I = 0x93

.field static final greylist-max-o TRANSACTION_getAutomaticZenRule:I = 0x87

.field static final blacklist TRANSACTION_getAutomaticZenRuleState:I = 0x8e

.field static final blacklist TRANSACTION_getAutomaticZenRules:I = 0x88

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x91

.field static final greylist-max-o TRANSACTION_getBlockedChannelCount:I = 0x37

.field static final blacklist TRANSACTION_getBubblePreferenceForPackage:I = 0x20

.field static final blacklist TRANSACTION_getConsolidatedNotificationPolicy:I = 0x7d

.field static final blacklist TRANSACTION_getConversationNotificationChannel:I = 0x2f

.field static final blacklist TRANSACTION_getConversations:I = 0x24

.field static final blacklist TRANSACTION_getConversationsForPackage:I = 0x25

.field static final blacklist TRANSACTION_getDefaultNotificationAssistant:I = 0x78

.field static final blacklist TRANSACTION_getDefaultZenPolicy:I = 0x86

.field static final greylist-max-o TRANSACTION_getDeletedChannelCount:I = 0x36

.field static final greylist-max-o TRANSACTION_getEffectsSuppressor:I = 0x69

.field static final greylist-max-o TRANSACTION_getEnabledNotificationListenerPackages:I = 0x74

.field static final greylist-max-o TRANSACTION_getEnabledNotificationListeners:I = 0x75

.field static final greylist-max-o TRANSACTION_getHintsFromListener:I = 0x5a

.field static final blacklist TRANSACTION_getHintsFromListenerNoToken:I = 0x5b

.field static final greylist-max-o TRANSACTION_getHistoricalNotifications:I = 0x47

.field static final blacklist TRANSACTION_getHistoricalNotificationsWithAttribution:I = 0x48

.field static final greylist-max-o TRANSACTION_getInterruptionFilterFromListener:I = 0x5d

.field static final blacklist TRANSACTION_getListenerFilter:I = 0x9b

.field static final greylist-max-o TRANSACTION_getNotificationChannel:I = 0x2e

.field static final greylist-max-o TRANSACTION_getNotificationChannelForPackage:I = 0x31

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroup:I = 0x39

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupForPackage:I = 0x27

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroups:I = 0x3a

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x26

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x63

.field static final blacklist TRANSACTION_getNotificationChannelGroupsWithoutChannels:I = 0x3b

.field static final greylist-max-o TRANSACTION_getNotificationChannels:I = 0x33

.field static final blacklist TRANSACTION_getNotificationChannelsBypassingDnd:I = 0x3e

.field static final greylist-max-o TRANSACTION_getNotificationChannelsForPackage:I = 0x34

.field static final greylist-max-o TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x62

.field static final blacklist TRANSACTION_getNotificationDelegate:I = 0x95

.field static final blacklist TRANSACTION_getNotificationHistory:I = 0x49

.field static final greylist-max-o TRANSACTION_getNotificationPolicy:I = 0x81

.field static final greylist-max-o TRANSACTION_getNumNotificationChannelsForPackage:I = 0x35

.field static final greylist-max-o TRANSACTION_getPackageImportance:I = 0x15

.field static final blacklist TRANSACTION_getPackagesBypassingDnd:I = 0x3f

.field static final blacklist TRANSACTION_getPackagesWithAnyChannels:I = 0x40

.field static final greylist-max-o TRANSACTION_getPopulatedNotificationChannelGroupForPackage:I = 0x28

.field static final blacklist TRANSACTION_getPrivateNotificationsAllowed:I = 0x99

.field static final blacklist TRANSACTION_getRecentBlockedNotificationChannelGroupsForPackage:I = 0x29

.field static final greylist-max-o TRANSACTION_getRuleInstanceCount:I = 0x8d

.field static final greylist-max-o TRANSACTION_getSnoozedNotificationsFromListener:I = 0x57

.field static final blacklist TRANSACTION_getUnsupportedAdjustmentTypes:I = 0xa5

.field static final greylist-max-o TRANSACTION_getZenMode:I = 0x7b

.field static final greylist-max-o TRANSACTION_getZenModeConfig:I = 0x7c

.field static final blacklist TRANSACTION_hasEnabledNotificationListener:I = 0x7a

.field static final blacklist TRANSACTION_hasSentValidBubble:I = 0x10

.field static final blacklist TRANSACTION_hasSentValidMsg:I = 0xc

.field static final blacklist TRANSACTION_hasUserDemotedInvalidMsgApp:I = 0xe

.field static final blacklist TRANSACTION_isAdjustmentSupportedForPackage:I = 0xa9

.field static final blacklist TRANSACTION_isImportanceLocked:I = 0x16

.field static final blacklist TRANSACTION_isInCall:I = 0x9

.field static final blacklist TRANSACTION_isInInvalidMsgState:I = 0xd

.field static final greylist-max-o TRANSACTION_isNotificationAssistantAccessGranted:I = 0x6f

.field static final greylist-max-o TRANSACTION_isNotificationListenerAccessGranted:I = 0x6d

.field static final greylist-max-o TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x6e

.field static final greylist-max-o TRANSACTION_isNotificationPolicyAccessGranted:I = 0x80

.field static final greylist-max-o TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x83

.field static final blacklist TRANSACTION_isPackagePaused:I = 0x41

.field static final blacklist TRANSACTION_isPermissionFixed:I = 0x43

.field static final greylist-max-o TRANSACTION_isSystemConditionProviderEnabled:I = 0x6c

.field static final greylist-max-o TRANSACTION_matchesCallFilter:I = 0x6a

.field static final blacklist TRANSACTION_migrateNotificationFilter:I = 0x9d

.field static final greylist-max-o TRANSACTION_notifyConditions:I = 0x7f

.field static final greylist-max-o TRANSACTION_onlyHasDefaultChannel:I = 0x3c

.field static final blacklist TRANSACTION_pullStats:I = 0x9a

.field static final blacklist TRANSACTION_registerCallNotificationEventListener:I = 0x9f

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x4a

.field static final greylist-max-o TRANSACTION_removeAutomaticZenRule:I = 0x8b

.field static final greylist-max-o TRANSACTION_removeAutomaticZenRules:I = 0x8c

.field static final greylist-max-o TRANSACTION_requestBindListener:I = 0x50

.field static final greylist-max-o TRANSACTION_requestBindProvider:I = 0x53

.field static final greylist-max-o TRANSACTION_requestHintsFromListener:I = 0x59

.field static final greylist-max-o TRANSACTION_requestInterruptionFilterFromListener:I = 0x5c

.field static final greylist-max-o TRANSACTION_requestUnbindListener:I = 0x51

.field static final blacklist TRANSACTION_requestUnbindListenerComponent:I = 0x52

.field static final greylist-max-o TRANSACTION_requestUnbindProvider:I = 0x54

.field static final blacklist TRANSACTION_setAdjustmentSupportedForPackage:I = 0xaa

.field static final blacklist TRANSACTION_setAdjustmentTypeSupportedState:I = 0xa4

.field static final blacklist TRANSACTION_setAssistantClassificationTypeState:I = 0xa7

.field static final blacklist TRANSACTION_setAutomaticZenRuleState:I = 0x8f

.field static final blacklist TRANSACTION_setBubblesAllowed:I = 0x1d

.field static final blacklist TRANSACTION_setCanBePromoted:I = 0xa1

.field static final blacklist TRANSACTION_setHideSilentStatusIcons:I = 0x1c

.field static final greylist-max-o TRANSACTION_setInterruptionFilter:I = 0x5f

.field static final blacklist TRANSACTION_setInvalidMsgAppDemoted:I = 0xf

.field static final blacklist TRANSACTION_setListenerFilter:I = 0x9c

.field static final blacklist TRANSACTION_setManualZenRuleDeviceEffects:I = 0x90

.field static final blacklist TRANSACTION_setNASMigrationDoneAndResetDefault:I = 0x79

.field static final greylist-max-o TRANSACTION_setNotificationAssistantAccessGranted:I = 0x71

.field static final greylist-max-o TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x73

.field static final blacklist TRANSACTION_setNotificationDelegate:I = 0x94

.field static final greylist-max-o TRANSACTION_setNotificationListenerAccessGranted:I = 0x70

.field static final greylist-max-o TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x72

.field static final greylist-max-o TRANSACTION_setNotificationPolicy:I = 0x82

.field static final greylist-max-o TRANSACTION_setNotificationPolicyAccessGranted:I = 0x84

.field static final greylist-max-o TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x85

.field static final greylist-max-o TRANSACTION_setNotificationsEnabledForPackage:I = 0x11

.field static final greylist-max-o TRANSACTION_setNotificationsEnabledWithImportanceLockForPackage:I = 0x12

.field static final greylist-max-o TRANSACTION_setNotificationsShownFromListener:I = 0x55

.field static final greylist-max-o TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x5e

.field static final blacklist TRANSACTION_setPrivateNotificationsAllowed:I = 0x98

.field static final greylist-max-o TRANSACTION_setShowBadge:I = 0xa

.field static final blacklist TRANSACTION_setToastRateLimitingEnabled:I = 0x9e

.field static final greylist-max-o TRANSACTION_setZenMode:I = 0x7e

.field static final blacklist TRANSACTION_shouldHideSilentStatusIcons:I = 0x1b

.field static final blacklist TRANSACTION_silenceNotificationSound:I = 0x44

.field static final greylist-max-o TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x4e

.field static final greylist-max-o TRANSACTION_snoozeNotificationUntilFromListener:I = 0x4f

.field static final blacklist TRANSACTION_unlockAllNotificationChannels:I = 0x2d

.field static final blacklist TRANSACTION_unlockNotificationChannel:I = 0x2c

.field static final blacklist TRANSACTION_unregisterCallNotificationEventListener:I = 0xa0

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x4b

.field static final greylist-max-o TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x67

.field static final blacklist TRANSACTION_unsnoozeNotificationFromSystemListener:I = 0x68

.field static final greylist-max-o TRANSACTION_updateAutomaticZenRule:I = 0x8a

.field static final greylist-max-o TRANSACTION_updateNotificationChannelForPackage:I = 0x2b

.field static final greylist-max-o TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x61

.field static final greylist-max-o TRANSACTION_updateNotificationChannelGroupForPackage:I = 0x2a


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 6577
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/INotificationManager$Stub;->PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

    .line 6583
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/INotificationManager$Stub;->PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    nop

    .line 651
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 650
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/INotificationManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 652
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 640
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 641
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 642
    if-eqz p1, :cond_d

    .line 645
    iput-object p1, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 646
    return-void

    .line 643
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .registers 3

    .line 659
    if-nez p0, :cond_4

    .line 660
    const/4 p0, 0x0

    return-object p0

    .line 662
    :cond_4
    const-string v0, "android.app.INotificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_13

    .line 664
    check-cast v0, Landroid/app/INotificationManager;

    return-object v0

    .line 666
    :cond_13
    new-instance v0, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 675
    packed-switch p0, :pswitch_data_23e

    .line 1359
    const/4 p0, 0x0

    return-object p0

    .line 1355
    :pswitch_5
    const-string/jumbo p0, "setAdjustmentSupportedForPackage"

    return-object p0

    .line 1351
    :pswitch_9
    const-string p0, "isAdjustmentSupportedForPackage"

    return-object p0

    .line 1347
    :pswitch_c
    const-string p0, "getAdjustmentDeniedPackages"

    return-object p0

    .line 1343
    :pswitch_f
    const-string/jumbo p0, "setAssistantClassificationTypeState"

    return-object p0

    .line 1339
    :pswitch_13
    const-string p0, "getAllowedClassificationTypes"

    return-object p0

    .line 1335
    :pswitch_16
    const-string p0, "getUnsupportedAdjustmentTypes"

    return-object p0

    .line 1331
    :pswitch_19
    const-string/jumbo p0, "setAdjustmentTypeSupportedState"

    return-object p0

    .line 1327
    :pswitch_1d
    const-string p0, "canBePromoted"

    return-object p0

    .line 1323
    :pswitch_20
    const-string p0, "appCanBePromoted"

    return-object p0

    .line 1319
    :pswitch_23
    const-string/jumbo p0, "setCanBePromoted"

    return-object p0

    .line 1315
    :pswitch_27
    const-string/jumbo p0, "unregisterCallNotificationEventListener"

    return-object p0

    .line 1311
    :pswitch_2b
    const-string/jumbo p0, "registerCallNotificationEventListener"

    return-object p0

    .line 1307
    :pswitch_2f
    const-string/jumbo p0, "setToastRateLimitingEnabled"

    return-object p0

    .line 1303
    :pswitch_33
    const-string/jumbo p0, "migrateNotificationFilter"

    return-object p0

    .line 1299
    :pswitch_37
    const-string/jumbo p0, "setListenerFilter"

    return-object p0

    .line 1295
    :pswitch_3b
    const-string p0, "getListenerFilter"

    return-object p0

    .line 1291
    :pswitch_3e
    const-string/jumbo p0, "pullStats"

    return-object p0

    .line 1287
    :pswitch_42
    const-string p0, "getPrivateNotificationsAllowed"

    return-object p0

    .line 1283
    :pswitch_45
    const-string/jumbo p0, "setPrivateNotificationsAllowed"

    return-object p0

    .line 1279
    :pswitch_49
    const-string p0, "canUseFullScreenIntent"

    return-object p0

    .line 1275
    :pswitch_4c
    const-string p0, "canNotifyAsPackage"

    return-object p0

    .line 1271
    :pswitch_4f
    const-string p0, "getNotificationDelegate"

    return-object p0

    .line 1267
    :pswitch_52
    const-string/jumbo p0, "setNotificationDelegate"

    return-object p0

    .line 1263
    :pswitch_56
    const-string p0, "getAppActiveNotifications"

    return-object p0

    .line 1259
    :pswitch_59
    const-string p0, "applyRestore"

    return-object p0

    .line 1255
    :pswitch_5c
    const-string p0, "getBackupPayload"

    return-object p0

    .line 1251
    :pswitch_5f
    const-string/jumbo p0, "setManualZenRuleDeviceEffects"

    return-object p0

    .line 1247
    :pswitch_63
    const-string/jumbo p0, "setAutomaticZenRuleState"

    return-object p0

    .line 1243
    :pswitch_67
    const-string p0, "getAutomaticZenRuleState"

    return-object p0

    .line 1239
    :pswitch_6a
    const-string p0, "getRuleInstanceCount"

    return-object p0

    .line 1235
    :pswitch_6d
    const-string/jumbo p0, "removeAutomaticZenRules"

    return-object p0

    .line 1231
    :pswitch_71
    const-string/jumbo p0, "removeAutomaticZenRule"

    return-object p0

    .line 1227
    :pswitch_75
    const-string/jumbo p0, "updateAutomaticZenRule"

    return-object p0

    .line 1223
    :pswitch_79
    const-string p0, "addAutomaticZenRule"

    return-object p0

    .line 1219
    :pswitch_7c
    const-string p0, "getAutomaticZenRules"

    return-object p0

    .line 1215
    :pswitch_7f
    const-string p0, "getAutomaticZenRule"

    return-object p0

    .line 1211
    :pswitch_82
    const-string p0, "getDefaultZenPolicy"

    return-object p0

    .line 1207
    :pswitch_85
    const-string/jumbo p0, "setNotificationPolicyAccessGrantedForUser"

    return-object p0

    .line 1203
    :pswitch_89
    const-string/jumbo p0, "setNotificationPolicyAccessGranted"

    return-object p0

    .line 1199
    :pswitch_8d
    const-string p0, "isNotificationPolicyAccessGrantedForPackage"

    return-object p0

    .line 1195
    :pswitch_90
    const-string/jumbo p0, "setNotificationPolicy"

    return-object p0

    .line 1191
    :pswitch_94
    const-string p0, "getNotificationPolicy"

    return-object p0

    .line 1187
    :pswitch_97
    const-string p0, "isNotificationPolicyAccessGranted"

    return-object p0

    .line 1183
    :pswitch_9a
    const-string/jumbo p0, "notifyConditions"

    return-object p0

    .line 1179
    :pswitch_9e
    const-string/jumbo p0, "setZenMode"

    return-object p0

    .line 1175
    :pswitch_a2
    const-string p0, "getConsolidatedNotificationPolicy"

    return-object p0

    .line 1171
    :pswitch_a5
    const-string p0, "getZenModeConfig"

    return-object p0

    .line 1167
    :pswitch_a8
    const-string p0, "getZenMode"

    return-object p0

    .line 1163
    :pswitch_ab
    const-string p0, "hasEnabledNotificationListener"

    return-object p0

    .line 1159
    :pswitch_ae
    const-string/jumbo p0, "setNASMigrationDoneAndResetDefault"

    return-object p0

    .line 1155
    :pswitch_b2
    const-string p0, "getDefaultNotificationAssistant"

    return-object p0

    .line 1151
    :pswitch_b5
    const-string p0, "getAllowedNotificationAssistant"

    return-object p0

    .line 1147
    :pswitch_b8
    const-string p0, "getAllowedNotificationAssistantForUser"

    return-object p0

    .line 1143
    :pswitch_bb
    const-string p0, "getEnabledNotificationListeners"

    return-object p0

    .line 1139
    :pswitch_be
    const-string p0, "getEnabledNotificationListenerPackages"

    return-object p0

    .line 1135
    :pswitch_c1
    const-string/jumbo p0, "setNotificationAssistantAccessGrantedForUser"

    return-object p0

    .line 1131
    :pswitch_c5
    const-string/jumbo p0, "setNotificationListenerAccessGrantedForUser"

    return-object p0

    .line 1127
    :pswitch_c9
    const-string/jumbo p0, "setNotificationAssistantAccessGranted"

    return-object p0

    .line 1123
    :pswitch_cd
    const-string/jumbo p0, "setNotificationListenerAccessGranted"

    return-object p0

    .line 1119
    :pswitch_d1
    const-string p0, "isNotificationAssistantAccessGranted"

    return-object p0

    .line 1115
    :pswitch_d4
    const-string p0, "isNotificationListenerAccessGrantedForUser"

    return-object p0

    .line 1111
    :pswitch_d7
    const-string p0, "isNotificationListenerAccessGranted"

    return-object p0

    .line 1107
    :pswitch_da
    const-string/jumbo p0, "isSystemConditionProviderEnabled"

    return-object p0

    .line 1103
    :pswitch_de
    const-string p0, "cleanUpCallersAfter"

    return-object p0

    .line 1099
    :pswitch_e1
    const-string/jumbo p0, "matchesCallFilter"

    return-object p0

    .line 1095
    :pswitch_e5
    const-string p0, "getEffectsSuppressor"

    return-object p0

    .line 1091
    :pswitch_e8
    const-string/jumbo p0, "unsnoozeNotificationFromSystemListener"

    return-object p0

    .line 1087
    :pswitch_ec
    const-string/jumbo p0, "unsnoozeNotificationFromAssistant"

    return-object p0

    .line 1083
    :pswitch_f0
    const-string p0, "applyAdjustmentsFromAssistant"

    return-object p0

    .line 1079
    :pswitch_f3
    const-string p0, "applyAdjustmentFromAssistant"

    return-object p0

    .line 1075
    :pswitch_f6
    const-string p0, "applyEnqueuedAdjustmentFromAssistant"

    return-object p0

    .line 1071
    :pswitch_f9
    const-string p0, "getNotificationChannelGroupsFromPrivilegedListener"

    return-object p0

    .line 1067
    :pswitch_fc
    const-string p0, "getNotificationChannelsFromPrivilegedListener"

    return-object p0

    .line 1063
    :pswitch_ff
    const-string/jumbo p0, "updateNotificationChannelFromPrivilegedListener"

    return-object p0

    .line 1059
    :pswitch_103
    const-string p0, "createConversationNotificationChannelForPackageFromPrivilegedListener"

    return-object p0

    .line 1055
    :pswitch_106
    const-string/jumbo p0, "setInterruptionFilter"

    return-object p0

    .line 1051
    :pswitch_10a
    const-string/jumbo p0, "setOnNotificationPostedTrimFromListener"

    return-object p0

    .line 1047
    :pswitch_10e
    const-string p0, "getInterruptionFilterFromListener"

    return-object p0

    .line 1043
    :pswitch_111
    const-string/jumbo p0, "requestInterruptionFilterFromListener"

    return-object p0

    .line 1039
    :pswitch_115
    const-string p0, "getHintsFromListenerNoToken"

    return-object p0

    .line 1035
    :pswitch_118
    const-string p0, "getHintsFromListener"

    return-object p0

    .line 1031
    :pswitch_11b
    const-string/jumbo p0, "requestHintsFromListener"

    return-object p0

    .line 1027
    :pswitch_11f
    const-string p0, "clearRequestedListenerHints"

    return-object p0

    .line 1023
    :pswitch_122
    const-string p0, "getSnoozedNotificationsFromListener"

    return-object p0

    .line 1019
    :pswitch_125
    const-string p0, "getActiveNotificationsFromListener"

    return-object p0

    .line 1015
    :pswitch_128
    const-string/jumbo p0, "setNotificationsShownFromListener"

    return-object p0

    .line 1011
    :pswitch_12c
    const-string/jumbo p0, "requestUnbindProvider"

    return-object p0

    .line 1007
    :pswitch_130
    const-string/jumbo p0, "requestBindProvider"

    return-object p0

    .line 1003
    :pswitch_134
    const-string/jumbo p0, "requestUnbindListenerComponent"

    return-object p0

    .line 999
    :pswitch_138
    const-string/jumbo p0, "requestUnbindListener"

    return-object p0

    .line 995
    :pswitch_13c
    const-string/jumbo p0, "requestBindListener"

    return-object p0

    .line 991
    :pswitch_140
    const-string/jumbo p0, "snoozeNotificationUntilFromListener"

    return-object p0

    .line 987
    :pswitch_144
    const-string/jumbo p0, "snoozeNotificationUntilContextFromListener"

    return-object p0

    .line 983
    :pswitch_148
    const-string p0, "cancelNotificationsFromListener"

    return-object p0

    .line 979
    :pswitch_14b
    const-string p0, "cancelNotificationFromListener"

    return-object p0

    .line 975
    :pswitch_14e
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    .line 971
    :pswitch_152
    const-string/jumbo p0, "registerListener"

    return-object p0

    .line 967
    :pswitch_156
    const-string p0, "getNotificationHistory"

    return-object p0

    .line 963
    :pswitch_159
    const-string p0, "getHistoricalNotificationsWithAttribution"

    return-object p0

    .line 959
    :pswitch_15c
    const-string p0, "getHistoricalNotifications"

    return-object p0

    .line 955
    :pswitch_15f
    const-string p0, "getActiveNotificationsWithAttribution"

    return-object p0

    .line 951
    :pswitch_162
    const-string p0, "getActiveNotifications"

    return-object p0

    .line 947
    :pswitch_165
    const-string/jumbo p0, "silenceNotificationSound"

    return-object p0

    .line 943
    :pswitch_169
    const-string p0, "isPermissionFixed"

    return-object p0

    .line 939
    :pswitch_16c
    const-string p0, "deleteNotificationHistoryItem"

    return-object p0

    .line 935
    :pswitch_16f
    const-string p0, "isPackagePaused"

    return-object p0

    .line 931
    :pswitch_172
    const-string p0, "getPackagesWithAnyChannels"

    return-object p0

    .line 927
    :pswitch_175
    const-string p0, "getPackagesBypassingDnd"

    return-object p0

    .line 923
    :pswitch_178
    const-string p0, "getNotificationChannelsBypassingDnd"

    return-object p0

    .line 919
    :pswitch_17b
    const-string p0, "areChannelsBypassingDnd"

    return-object p0

    .line 915
    :pswitch_17e
    const-string/jumbo p0, "onlyHasDefaultChannel"

    return-object p0

    .line 911
    :pswitch_182
    const-string p0, "getNotificationChannelGroupsWithoutChannels"

    return-object p0

    .line 907
    :pswitch_185
    const-string p0, "getNotificationChannelGroups"

    return-object p0

    .line 903
    :pswitch_188
    const-string p0, "getNotificationChannelGroup"

    return-object p0

    .line 899
    :pswitch_18b
    const-string p0, "deleteNotificationChannelGroup"

    return-object p0

    .line 895
    :pswitch_18e
    const-string p0, "getBlockedChannelCount"

    return-object p0

    .line 891
    :pswitch_191
    const-string p0, "getDeletedChannelCount"

    return-object p0

    .line 887
    :pswitch_194
    const-string p0, "getNumNotificationChannelsForPackage"

    return-object p0

    .line 883
    :pswitch_197
    const-string p0, "getNotificationChannelsForPackage"

    return-object p0

    .line 879
    :pswitch_19a
    const-string p0, "getNotificationChannels"

    return-object p0

    .line 875
    :pswitch_19d
    const-string p0, "deleteNotificationChannel"

    return-object p0

    .line 871
    :pswitch_1a0
    const-string p0, "getNotificationChannelForPackage"

    return-object p0

    .line 867
    :pswitch_1a3
    const-string p0, "createConversationNotificationChannelForPackage"

    return-object p0

    .line 863
    :pswitch_1a6
    const-string p0, "getConversationNotificationChannel"

    return-object p0

    .line 859
    :pswitch_1a9
    const-string p0, "getNotificationChannel"

    return-object p0

    .line 855
    :pswitch_1ac
    const-string/jumbo p0, "unlockAllNotificationChannels"

    return-object p0

    .line 851
    :pswitch_1b0
    const-string/jumbo p0, "unlockNotificationChannel"

    return-object p0

    .line 847
    :pswitch_1b4
    const-string/jumbo p0, "updateNotificationChannelForPackage"

    return-object p0

    .line 843
    :pswitch_1b8
    const-string/jumbo p0, "updateNotificationChannelGroupForPackage"

    return-object p0

    .line 839
    :pswitch_1bc
    const-string p0, "getRecentBlockedNotificationChannelGroupsForPackage"

    return-object p0

    .line 835
    :pswitch_1bf
    const-string p0, "getPopulatedNotificationChannelGroupForPackage"

    return-object p0

    .line 831
    :pswitch_1c2
    const-string p0, "getNotificationChannelGroupForPackage"

    return-object p0

    .line 827
    :pswitch_1c5
    const-string p0, "getNotificationChannelGroupsForPackage"

    return-object p0

    .line 823
    :pswitch_1c8
    const-string p0, "getConversationsForPackage"

    return-object p0

    .line 819
    :pswitch_1cb
    const-string p0, "getConversations"

    return-object p0

    .line 815
    :pswitch_1ce
    const-string p0, "createNotificationChannelsForPackage"

    return-object p0

    .line 811
    :pswitch_1d1
    const-string p0, "createNotificationChannels"

    return-object p0

    .line 807
    :pswitch_1d4
    const-string p0, "createNotificationChannelGroups"

    return-object p0

    .line 803
    :pswitch_1d7
    const-string p0, "getBubblePreferenceForPackage"

    return-object p0

    .line 799
    :pswitch_1da
    const-string p0, "areBubblesEnabled"

    return-object p0

    .line 795
    :pswitch_1dd
    const-string p0, "areBubblesAllowed"

    return-object p0

    .line 791
    :pswitch_1e0
    const-string/jumbo p0, "setBubblesAllowed"

    return-object p0

    .line 787
    :pswitch_1e4
    const-string/jumbo p0, "setHideSilentStatusIcons"

    return-object p0

    .line 783
    :pswitch_1e8
    const-string/jumbo p0, "shouldHideSilentStatusIcons"

    return-object p0

    .line 779
    :pswitch_1ec
    const-string p0, "disallowAssistantAdjustment"

    return-object p0

    .line 775
    :pswitch_1ef
    const-string p0, "allowAssistantAdjustment"

    return-object p0

    .line 771
    :pswitch_1f2
    const-string p0, "getAllowedAssistantAdjustmentsForUser"

    return-object p0

    .line 767
    :pswitch_1f5
    const-string p0, "getAllowedAssistantAdjustments"

    return-object p0

    .line 763
    :pswitch_1f8
    const-string p0, "isImportanceLocked"

    return-object p0

    .line 759
    :pswitch_1fb
    const-string p0, "getPackageImportance"

    return-object p0

    .line 755
    :pswitch_1fe
    const-string p0, "areNotificationsEnabled"

    return-object p0

    .line 751
    :pswitch_201
    const-string p0, "areNotificationsEnabledForPackage"

    return-object p0

    .line 747
    :pswitch_204
    const-string/jumbo p0, "setNotificationsEnabledWithImportanceLockForPackage"

    return-object p0

    .line 743
    :pswitch_208
    const-string/jumbo p0, "setNotificationsEnabledForPackage"

    return-object p0

    .line 739
    :pswitch_20c
    const-string p0, "hasSentValidBubble"

    return-object p0

    .line 735
    :pswitch_20f
    const-string/jumbo p0, "setInvalidMsgAppDemoted"

    return-object p0

    .line 731
    :pswitch_213
    const-string p0, "hasUserDemotedInvalidMsgApp"

    return-object p0

    .line 727
    :pswitch_216
    const-string p0, "isInInvalidMsgState"

    return-object p0

    .line 723
    :pswitch_219
    const-string p0, "hasSentValidMsg"

    return-object p0

    .line 719
    :pswitch_21c
    const-string p0, "canShowBadge"

    return-object p0

    .line 715
    :pswitch_21f
    const-string/jumbo p0, "setShowBadge"

    return-object p0

    .line 711
    :pswitch_223
    const-string p0, "isInCall"

    return-object p0

    .line 707
    :pswitch_226
    const-string p0, "cancelNotificationWithTag"

    return-object p0

    .line 703
    :pswitch_229
    const-string p0, "enqueueNotificationWithTag"

    return-object p0

    .line 699
    :pswitch_22c
    const-string p0, "finishToken"

    return-object p0

    .line 695
    :pswitch_22f
    const-string p0, "cancelToast"

    return-object p0

    .line 691
    :pswitch_232
    const-string p0, "enqueueToast"

    return-object p0

    .line 687
    :pswitch_235
    const-string p0, "enqueueTextToast"

    return-object p0

    .line 683
    :pswitch_238
    const-string p0, "clearData"

    return-object p0

    .line 679
    :pswitch_23b
    const-string p0, "cancelAllNotifications"

    return-object p0

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_23b
        :pswitch_238
        :pswitch_235
        :pswitch_232
        :pswitch_22f
        :pswitch_22c
        :pswitch_229
        :pswitch_226
        :pswitch_223
        :pswitch_21f
        :pswitch_21c
        :pswitch_219
        :pswitch_216
        :pswitch_213
        :pswitch_20f
        :pswitch_20c
        :pswitch_208
        :pswitch_204
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fb
        :pswitch_1f8
        :pswitch_1f5
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_1ec
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e0
        :pswitch_1dd
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1d1
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b8
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17e
        :pswitch_17b
        :pswitch_178
        :pswitch_175
        :pswitch_172
        :pswitch_16f
        :pswitch_16c
        :pswitch_169
        :pswitch_165
        :pswitch_162
        :pswitch_15f
        :pswitch_15c
        :pswitch_159
        :pswitch_156
        :pswitch_152
        :pswitch_14e
        :pswitch_14b
        :pswitch_148
        :pswitch_144
        :pswitch_140
        :pswitch_13c
        :pswitch_138
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_111
        :pswitch_10e
        :pswitch_10a
        :pswitch_106
        :pswitch_103
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e5
        :pswitch_e1
        :pswitch_de
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_90
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 670
    return-object p0
.end method

.method protected blacklist getActiveNotificationsWithAttribution_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6474
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6475
    return-void
.end method

.method protected blacklist getHistoricalNotificationsWithAttribution_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6480
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6481
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 6601
    const/16 v0, 0xa9

    return v0
.end method

.method protected blacklist getNotificationHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6485
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6486
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1366
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1370
    nop

    .line 1371
    const-string v3, "android.app.INotificationManager"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 1372
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 1375
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1376
    return v8

    .line 1378
    :cond_17
    packed-switch p1, :pswitch_data_f6e

    .line 3353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 3339
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3345
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3347
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setAdjustmentSupportedForPackage(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 3348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3349
    goto/16 :goto_f6c

    .line 3325
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3331
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/INotificationManager$Stub;->isAdjustmentSupportedForPackage(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3333
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3334
    goto/16 :goto_f6c

    .line 3313
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    invoke-virtual {p0, v1, v3}, Landroid/app/INotificationManager$Stub;->getAdjustmentDeniedPackages(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3320
    goto/16 :goto_f6c

    .line 3302
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3304
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3306
    invoke-virtual {p0, v1, v3}, Landroid/app/INotificationManager$Stub;->setAssistantClassificationTypeState(IZ)V

    .line 3307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3308
    goto/16 :goto_f6c

    .line 3294
    :pswitch_7f
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllowedClassificationTypes()[I

    move-result-object v0

    .line 3295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3296
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3297
    goto/16 :goto_f6c

    .line 3287
    :pswitch_8b
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getUnsupportedAdjustmentTypes()Ljava/util/List;

    move-result-object v0

    .line 3288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3289
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3290
    goto/16 :goto_f6c

    .line 3275
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 3277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3279
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3281
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/INotificationManager$Stub;->setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V

    .line 3282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3283
    goto/16 :goto_f6c

    .line 3265
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3267
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->canBePromoted(Ljava/lang/String;)Z

    move-result v0

    .line 3268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3269
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3270
    goto/16 :goto_f6c

    .line 3253
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3257
    invoke-virtual {p0, v1, v3}, Landroid/app/INotificationManager$Stub;->appCanBePromoted(Ljava/lang/String;I)Z

    move-result v0

    .line 3258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3259
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3260
    goto/16 :goto_f6c

    .line 3238
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3242
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3244
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3246
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/INotificationManager$Stub;->setCanBePromoted(Ljava/lang/String;IZZ)V

    .line 3247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3248
    goto/16 :goto_f6c

    .line 3225
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3227
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 3229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ICallNotificationEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;

    move-result-object v4

    .line 3230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3231
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/INotificationManager$Stub;->unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3233
    goto/16 :goto_f6c

    .line 3212
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3214
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 3216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ICallNotificationEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;

    move-result-object v4

    .line 3217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3218
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/INotificationManager$Stub;->registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3220
    goto/16 :goto_f6c

    .line 3203
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3205
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setToastRateLimitingEnabled(Z)V

    .line 3206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    goto/16 :goto_f6c

    .line 3190
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 3192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3194
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 3195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3196
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/INotificationManager$Stub;->migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V

    .line 3197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3198
    goto/16 :goto_f6c

    .line 3177
    :pswitch_15f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3181
    sget-object v4, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationListenerFilter;

    .line 3182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3183
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/INotificationManager$Stub;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V

    .line 3184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3185
    goto/16 :goto_f6c

    .line 3165
    :pswitch_17e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3169
    invoke-virtual {p0, v1, v3}, Landroid/app/INotificationManager$Stub;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    .line 3170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3171
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3172
    goto/16 :goto_f6c

    .line 3148
    :pswitch_199
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3152
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3156
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->pullStats(JIZLjava/util/List;)J

    move-result-wide v0

    .line 3157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3159
    invoke-virtual {p3, v5, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3160
    goto/16 :goto_f6c

    .line 3140
    :pswitch_1bd
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getPrivateNotificationsAllowed()Z

    move-result v0

    .line 3141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3143
    goto/16 :goto_f6c

    .line 3132
    :pswitch_1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3134
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setPrivateNotificationsAllowed(Z)V

    .line 3135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    goto/16 :goto_f6c

    .line 3122
    :pswitch_1d8
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 3123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3124
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->canUseFullScreenIntent(Landroid/content/AttributionSource;)Z

    move-result v0

    .line 3125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3127
    goto/16 :goto_f6c

    .line 3108
    :pswitch_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3114
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 3115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3117
    goto/16 :goto_f6c

    .line 3098
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3099
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3100
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3103
    goto/16 :goto_f6c

    .line 3087
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3089
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3090
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3091
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3093
    goto/16 :goto_f6c

    .line 3075
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3078
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3079
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3081
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3082
    goto/16 :goto_f6c

    .line 3064
    :pswitch_247
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3067
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3068
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 3069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3070
    goto/16 :goto_f6c

    .line 3054
    :pswitch_25a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3055
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3056
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v0

    .line 3057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3058
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3059
    goto/16 :goto_f6c

    .line 3045
    :pswitch_26d
    sget-object v1, Landroid/service/notification/ZenDeviceEffects;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenDeviceEffects;

    .line 3046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3047
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V

    .line 3048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3049
    goto/16 :goto_f6c

    .line 3034
    :pswitch_280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3036
    sget-object v2, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Condition;

    .line 3037
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3038
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 3039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3040
    goto/16 :goto_f6c

    .line 3024
    :pswitch_297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3025
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3026
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRuleState(Ljava/lang/String;)I

    move-result v0

    .line 3027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3028
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3029
    goto/16 :goto_f6c

    .line 3014
    :pswitch_2aa
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3015
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3016
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v0

    .line 3017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3019
    goto/16 :goto_f6c

    .line 3002
    :pswitch_2c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3004
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3005
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3006
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result v0

    .line 3007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3009
    goto/16 :goto_f6c

    .line 2990
    :pswitch_2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2992
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2994
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result v0

    .line 2995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2996
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2997
    goto/16 :goto_f6c

    .line 2976
    :pswitch_2ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2978
    sget-object v2, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 2980
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2982
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result v0

    .line 2983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2985
    goto/16 :goto_f6c

    .line 2962
    :pswitch_30e
    sget-object v1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    .line 2964
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2966
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2968
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2970
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2971
    goto/16 :goto_f6c

    .line 2954
    :pswitch_32d
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2957
    goto/16 :goto_f6c

    .line 2945
    :pswitch_339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2947
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    .line 2948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2949
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2950
    goto/16 :goto_f6c

    .line 2937
    :pswitch_34c
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 2938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2939
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2940
    goto/16 :goto_f6c

    .line 2925
    :pswitch_358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2929
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2931
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 2932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    goto/16 :goto_f6c

    .line 2914
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2916
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2917
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2918
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 2919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2920
    goto/16 :goto_f6c

    .line 2904
    :pswitch_382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2906
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    .line 2907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2908
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2909
    goto/16 :goto_f6c

    .line 2891
    :pswitch_395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2893
    sget-object v2, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager$Policy;

    .line 2895
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2897
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V

    .line 2898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2899
    goto/16 :goto_f6c

    .line 2881
    :pswitch_3b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2883
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 2884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2885
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2886
    goto/16 :goto_f6c

    .line 2871
    :pswitch_3c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v0

    .line 2874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2875
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2876
    goto/16 :goto_f6c

    .line 2859
    :pswitch_3d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2861
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v2

    .line 2863
    sget-object v3, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/Condition;

    .line 2864
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2865
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 2866
    goto/16 :goto_f6c

    .line 2845
    :pswitch_3f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2847
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2849
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2851
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2852
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2853
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 2854
    goto/16 :goto_f6c

    .line 2837
    :pswitch_40e
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 2838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2839
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2840
    goto/16 :goto_f6c

    .line 2830
    :pswitch_41a
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 2831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2832
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2833
    goto/16 :goto_f6c

    .line 2823
    :pswitch_426
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v0

    .line 2824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2825
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2826
    goto/16 :goto_f6c

    .line 2812
    :pswitch_432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2815
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2816
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result v0

    .line 2817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2818
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2819
    goto/16 :goto_f6c

    .line 2801
    :pswitch_449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2803
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNASMigrationDoneAndResetDefault(IZ)V

    .line 2806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    goto/16 :goto_f6c

    .line 2793
    :pswitch_45c
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    .line 2794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2795
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2796
    goto/16 :goto_f6c

    .line 2786
    :pswitch_468
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    .line 2787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2788
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2789
    goto/16 :goto_f6c

    .line 2777
    :pswitch_474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2779
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2782
    goto/16 :goto_f6c

    .line 2767
    :pswitch_487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v0

    .line 2770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2772
    goto/16 :goto_f6c

    .line 2759
    :pswitch_49a
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v0

    .line 2760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2761
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2762
    goto/16 :goto_f6c

    .line 2747
    :pswitch_4a6
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2749
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2751
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2753
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 2754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2755
    goto/16 :goto_f6c

    .line 2732
    :pswitch_4c1
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2736
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2738
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2740
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 2741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2742
    goto/16 :goto_f6c

    .line 2721
    :pswitch_4e0
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2723
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 2726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    goto/16 :goto_f6c

    .line 2708
    :pswitch_4f7
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2710
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2712
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2714
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    .line 2715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2716
    goto/16 :goto_f6c

    .line 2698
    :pswitch_512
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2700
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2702
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2703
    goto/16 :goto_f6c

    .line 2686
    :pswitch_529
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2690
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 2691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2692
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2693
    goto/16 :goto_f6c

    .line 2676
    :pswitch_544
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2678
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2680
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2681
    goto/16 :goto_f6c

    .line 2666
    :pswitch_55b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2668
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 2669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2671
    goto/16 :goto_f6c

    .line 2657
    :pswitch_56e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2659
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cleanUpCallersAfter(J)V

    .line 2660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2661
    goto/16 :goto_f6c

    .line 2647
    :pswitch_57d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2649
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v0

    .line 2650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2651
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2652
    goto/16 :goto_f6c

    .line 2639
    :pswitch_594
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 2640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2641
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2642
    goto/16 :goto_f6c

    .line 2629
    :pswitch_5a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2631
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2633
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2635
    goto/16 :goto_f6c

    .line 2618
    :pswitch_5b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2621
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2622
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2624
    goto/16 :goto_f6c

    .line 2607
    :pswitch_5ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2609
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 2612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    goto/16 :goto_f6c

    .line 2596
    :pswitch_5e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2598
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 2599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2600
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2602
    goto/16 :goto_f6c

    .line 2585
    :pswitch_602
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2587
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 2588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2589
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2591
    goto/16 :goto_f6c

    .line 2571
    :pswitch_61d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2575
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2577
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2579
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2580
    goto/16 :goto_f6c

    .line 2557
    :pswitch_640
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2561
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2563
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2566
    goto/16 :goto_f6c

    .line 2542
    :pswitch_663
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2546
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2548
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2550
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 2551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2552
    goto/16 :goto_f6c

    .line 2524
    :pswitch_68a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2528
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2530
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2533
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2534
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2536
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2537
    goto/16 :goto_f6c

    .line 2511
    :pswitch_6b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2515
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2517
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;IZ)V

    .line 2518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2519
    goto/16 :goto_f6c

    .line 2500
    :pswitch_6cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2504
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    goto/16 :goto_f6c

    .line 2490
    :pswitch_6e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2492
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0

    .line 2493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2495
    goto/16 :goto_f6c

    .line 2479
    :pswitch_6fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2482
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2483
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2485
    goto/16 :goto_f6c

    .line 2471
    :pswitch_712
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getHintsFromListenerNoToken()I

    move-result v0

    .line 2472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2473
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2474
    goto/16 :goto_f6c

    .line 2462
    :pswitch_71e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2464
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0

    .line 2465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2466
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    goto/16 :goto_f6c

    .line 2451
    :pswitch_735
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2455
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    goto/16 :goto_f6c

    .line 2442
    :pswitch_74c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2444
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V

    .line 2445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2446
    goto/16 :goto_f6c

    .line 2430
    :pswitch_75f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2434
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2437
    goto/16 :goto_f6c

    .line 2416
    :pswitch_77a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2418
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2425
    goto/16 :goto_f6c

    .line 2405
    :pswitch_799
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2407
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2409
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2411
    goto/16 :goto_f6c

    .line 2396
    :pswitch_7b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 2397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2398
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 2399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    goto/16 :goto_f6c

    .line 2387
    :pswitch_7c3
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2389
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 2390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2391
    goto/16 :goto_f6c

    .line 2378
    :pswitch_7d6
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListenerComponent(Landroid/content/ComponentName;)V

    .line 2381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    goto/16 :goto_f6c

    .line 2369
    :pswitch_7e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2371
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 2372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2373
    goto/16 :goto_f6c

    .line 2360
    :pswitch_7fc
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2362
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    .line 2363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    goto/16 :goto_f6c

    .line 2347
    :pswitch_80f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2351
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2353
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 2354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2355
    goto/16 :goto_f6c

    .line 2334
    :pswitch_82a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2340
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    goto/16 :goto_f6c

    .line 2323
    :pswitch_845
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2325
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2327
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2329
    goto/16 :goto_f6c

    .line 2308
    :pswitch_85c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2316
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2318
    goto/16 :goto_f6c

    .line 2297
    :pswitch_87b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2301
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 2302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2303
    goto/16 :goto_f6c

    .line 2284
    :pswitch_892
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2286
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2290
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 2291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2292
    goto/16 :goto_f6c

    .line 2272
    :pswitch_8b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2276
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object v0

    .line 2277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2278
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2279
    goto/16 :goto_f6c

    .line 2256
    :pswitch_8c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2262
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2264
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2266
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2267
    goto/16 :goto_f6c

    .line 2242
    :pswitch_8e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2246
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2248
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2251
    goto/16 :goto_f6c

    .line 2230
    :pswitch_902
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2234
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2236
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2237
    goto/16 :goto_f6c

    .line 2220
    :pswitch_919
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2222
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2224
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2225
    goto/16 :goto_f6c

    .line 2213
    :pswitch_92c
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->silenceNotificationSound()V

    .line 2214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    goto/16 :goto_f6c

    .line 2202
    :pswitch_934
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2206
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    .line 2207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2209
    goto/16 :goto_f6c

    .line 2189
    :pswitch_94b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2193
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2195
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    .line 2196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    goto/16 :goto_f6c

    .line 2179
    :pswitch_962
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2181
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isPackagePaused(Ljava/lang/String;)Z

    move-result v0

    .line 2182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2184
    goto/16 :goto_f6c

    .line 2169
    :pswitch_975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2171
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackagesWithAnyChannels(I)Ljava/util/List;

    move-result-object v0

    .line 2172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2174
    goto/16 :goto_f6c

    .line 2159
    :pswitch_988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2161
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackagesBypassingDnd(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2164
    goto/16 :goto_f6c

    .line 2147
    :pswitch_99b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2151
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2154
    goto/16 :goto_f6c

    .line 2139
    :pswitch_9b2
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->areChannelsBypassingDnd()Z

    move-result v0

    .line 2140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2142
    goto/16 :goto_f6c

    .line 2128
    :pswitch_9be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2132
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    .line 2133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2135
    goto/16 :goto_f6c

    .line 2118
    :pswitch_9d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2120
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2122
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2123
    goto/16 :goto_f6c

    .line 2108
    :pswitch_9e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2110
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2112
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2113
    goto/16 :goto_f6c

    .line 2096
    :pswitch_9fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2098
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2099
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2100
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 2101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2103
    goto/16 :goto_f6c

    .line 2085
    :pswitch_a12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2088
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2089
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2091
    goto/16 :goto_f6c

    .line 2073
    :pswitch_a25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2076
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2077
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v0

    .line 2078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    goto/16 :goto_f6c

    .line 2061
    :pswitch_a3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2064
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2065
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    .line 2066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2067
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    goto/16 :goto_f6c

    .line 2047
    :pswitch_a53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2049
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2051
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v0

    .line 2054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    goto/16 :goto_f6c

    .line 2033
    :pswitch_a6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2037
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2038
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2039
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2041
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2042
    goto/16 :goto_f6c

    .line 2019
    :pswitch_a89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2021
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2024
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2025
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2027
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2028
    goto/16 :goto_f6c

    .line 2008
    :pswitch_aa4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2010
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2011
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2012
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    goto/16 :goto_f6c

    .line 1990
    :pswitch_ab7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1994
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1996
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1998
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2000
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2003
    goto/16 :goto_f6c

    .line 1975
    :pswitch_adb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1977
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1979
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1981
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1983
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 1984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1985
    goto/16 :goto_f6c

    .line 1955
    :pswitch_afa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1961
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1965
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1967
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 1968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1969
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1970
    goto/16 :goto_f6c

    .line 1939
    :pswitch_b22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1943
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1945
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1947
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 1948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1950
    goto/16 :goto_f6c

    .line 1932
    :pswitch_b41
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->unlockAllNotificationChannels()V

    .line 1933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    goto/16 :goto_f6c

    .line 1920
    :pswitch_b49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1922
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1924
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1925
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1926
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 1927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1928
    goto/16 :goto_f6c

    .line 1907
    :pswitch_b60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1911
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1913
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 1914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    goto/16 :goto_f6c

    .line 1894
    :pswitch_b7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1898
    sget-object v3, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1900
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 1901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    goto/16 :goto_f6c

    .line 1882
    :pswitch_b96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1884
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1886
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1889
    goto/16 :goto_f6c

    .line 1866
    :pswitch_bad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1868
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1870
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1872
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1873
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1874
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 1875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1877
    goto/16 :goto_f6c

    .line 1852
    :pswitch_bcc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1854
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1858
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 1859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1860
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1861
    goto/16 :goto_f6c

    .line 1838
    :pswitch_be7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1842
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1843
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1844
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1847
    goto/16 :goto_f6c

    .line 1826
    :pswitch_c02
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1830
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1833
    goto/16 :goto_f6c

    .line 1816
    :pswitch_c19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1818
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1821
    goto/16 :goto_f6c

    .line 1803
    :pswitch_c2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1807
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 1808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1809
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 1810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    goto/16 :goto_f6c

    .line 1792
    :pswitch_c47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1794
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    goto/16 :goto_f6c

    .line 1781
    :pswitch_c5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1783
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1784
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1785
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    goto/16 :goto_f6c

    .line 1769
    :pswitch_c75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1773
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v0

    .line 1774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1775
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    goto/16 :goto_f6c

    .line 1759
    :pswitch_c8c
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1761
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1764
    goto/16 :goto_f6c

    .line 1749
    :pswitch_ca3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1750
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1751
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 1752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1753
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1754
    goto/16 :goto_f6c

    .line 1736
    :pswitch_cb6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1742
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 1743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    goto/16 :goto_f6c

    .line 1727
    :pswitch_ccd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1729
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setHideSilentStatusIcons(Z)V

    .line 1730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    goto/16 :goto_f6c

    .line 1717
    :pswitch_cdc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1718
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1719
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result v0

    .line 1720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1722
    goto/16 :goto_f6c

    .line 1706
    :pswitch_cef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1708
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1709
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->disallowAssistantAdjustment(ILjava/lang/String;)V

    .line 1711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    goto/16 :goto_f6c

    .line 1695
    :pswitch_d02
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1698
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->allowAssistantAdjustment(ILjava/lang/String;)V

    .line 1700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    goto/16 :goto_f6c

    .line 1685
    :pswitch_d15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1687
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedAssistantAdjustmentsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 1688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1690
    goto/16 :goto_f6c

    .line 1675
    :pswitch_d28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1680
    goto/16 :goto_f6c

    .line 1663
    :pswitch_d3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1667
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 1668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1670
    goto/16 :goto_f6c

    .line 1653
    :pswitch_d52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 1656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    goto/16 :goto_f6c

    .line 1643
    :pswitch_d65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    goto/16 :goto_f6c

    .line 1631
    :pswitch_d78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    .line 1636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1638
    goto/16 :goto_f6c

    .line 1618
    :pswitch_d8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1624
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V

    .line 1625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    goto/16 :goto_f6c

    .line 1605
    :pswitch_da6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1609
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1611
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    goto/16 :goto_f6c

    .line 1593
    :pswitch_dbd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1596
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result v0

    .line 1598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1600
    goto/16 :goto_f6c

    .line 1580
    :pswitch_dd4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1584
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    .line 1587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    goto/16 :goto_f6c

    .line 1568
    :pswitch_deb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v0

    .line 1573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1575
    goto/16 :goto_f6c

    .line 1556
    :pswitch_e02
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1559
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v0

    .line 1561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1563
    goto/16 :goto_f6c

    .line 1544
    :pswitch_e19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1548
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v0

    .line 1549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1551
    goto/16 :goto_f6c

    .line 1532
    :pswitch_e30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v0

    .line 1537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1539
    goto/16 :goto_f6c

    .line 1519
    :pswitch_e47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1523
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    .line 1526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    goto/16 :goto_f6c

    .line 1507
    :pswitch_e5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isInCall(Ljava/lang/String;I)Z

    move-result v0

    .line 1512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1514
    goto/16 :goto_f6c

    .line 1490
    :pswitch_e75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1500
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    goto/16 :goto_f6c

    .line 1471
    :pswitch_e95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1479
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/Notification;

    .line 1481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1482
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1483
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 1484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    goto/16 :goto_f6c

    .line 1460
    :pswitch_ebe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    goto/16 :goto_f6c

    .line 1449
    :pswitch_ed1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1453
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    goto/16 :goto_f6c

    .line 1429
    :pswitch_ee4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v3

    .line 1435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1437
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v0

    .line 1442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1444
    goto :goto_f6c

    .line 1407
    :pswitch_f0f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1411
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1415
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v0

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1421
    move-object v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/INotificationManager$Stub;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result v0

    .line 1422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1424
    goto :goto_f6c

    .line 1394
    :pswitch_f44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1398
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    .line 1401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    goto :goto_f6c

    .line 1383
    :pswitch_f5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1387
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 1388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    nop

    .line 3356
    :goto_f6c
    return v8

    nop

    :pswitch_data_f6e
    .packed-switch 0x1
        :pswitch_f5a
        :pswitch_f44
        :pswitch_f0f
        :pswitch_ee4
        :pswitch_ed1
        :pswitch_ebe
        :pswitch_e95
        :pswitch_e75
        :pswitch_e5e
        :pswitch_e47
        :pswitch_e30
        :pswitch_e19
        :pswitch_e02
        :pswitch_deb
        :pswitch_dd4
        :pswitch_dbd
        :pswitch_da6
        :pswitch_d8f
        :pswitch_d78
        :pswitch_d65
        :pswitch_d52
        :pswitch_d3b
        :pswitch_d28
        :pswitch_d15
        :pswitch_d02
        :pswitch_cef
        :pswitch_cdc
        :pswitch_ccd
        :pswitch_cb6
        :pswitch_ca3
        :pswitch_c8c
        :pswitch_c75
        :pswitch_c5e
        :pswitch_c47
        :pswitch_c2c
        :pswitch_c19
        :pswitch_c02
        :pswitch_be7
        :pswitch_bcc
        :pswitch_bad
        :pswitch_b96
        :pswitch_b7b
        :pswitch_b60
        :pswitch_b49
        :pswitch_b41
        :pswitch_b22
        :pswitch_afa
        :pswitch_adb
        :pswitch_ab7
        :pswitch_aa4
        :pswitch_a89
        :pswitch_a6e
        :pswitch_a53
        :pswitch_a3c
        :pswitch_a25
        :pswitch_a12
        :pswitch_9fb
        :pswitch_9e8
        :pswitch_9d5
        :pswitch_9be
        :pswitch_9b2
        :pswitch_99b
        :pswitch_988
        :pswitch_975
        :pswitch_962
        :pswitch_94b
        :pswitch_934
        :pswitch_92c
        :pswitch_919
        :pswitch_902
        :pswitch_8e7
        :pswitch_8c8
        :pswitch_8b1
        :pswitch_892
        :pswitch_87b
        :pswitch_85c
        :pswitch_845
        :pswitch_82a
        :pswitch_80f
        :pswitch_7fc
        :pswitch_7e9
        :pswitch_7d6
        :pswitch_7c3
        :pswitch_7b0
        :pswitch_799
        :pswitch_77a
        :pswitch_75f
        :pswitch_74c
        :pswitch_735
        :pswitch_71e
        :pswitch_712
        :pswitch_6fb
        :pswitch_6e4
        :pswitch_6cd
        :pswitch_6b6
        :pswitch_68a
        :pswitch_663
        :pswitch_640
        :pswitch_61d
        :pswitch_602
        :pswitch_5e7
        :pswitch_5ce
        :pswitch_5b7
        :pswitch_5a0
        :pswitch_594
        :pswitch_57d
        :pswitch_56e
        :pswitch_55b
        :pswitch_544
        :pswitch_529
        :pswitch_512
        :pswitch_4f7
        :pswitch_4e0
        :pswitch_4c1
        :pswitch_4a6
        :pswitch_49a
        :pswitch_487
        :pswitch_474
        :pswitch_468
        :pswitch_45c
        :pswitch_449
        :pswitch_432
        :pswitch_426
        :pswitch_41a
        :pswitch_40e
        :pswitch_3f2
        :pswitch_3d6
        :pswitch_3c3
        :pswitch_3b0
        :pswitch_395
        :pswitch_382
        :pswitch_36f
        :pswitch_358
        :pswitch_34c
        :pswitch_339
        :pswitch_32d
        :pswitch_30e
        :pswitch_2ef
        :pswitch_2d8
        :pswitch_2c1
        :pswitch_2aa
        :pswitch_297
        :pswitch_280
        :pswitch_26d
        :pswitch_25a
        :pswitch_247
        :pswitch_230
        :pswitch_21d
        :pswitch_20a
        :pswitch_1ef
        :pswitch_1d8
        :pswitch_1c9
        :pswitch_1bd
        :pswitch_199
        :pswitch_17e
        :pswitch_15f
        :pswitch_144
        :pswitch_135
        :pswitch_116
        :pswitch_f7
        :pswitch_dc
        :pswitch_c5
        :pswitch_b2
        :pswitch_97
        :pswitch_8b
        :pswitch_7f
        :pswitch_6c
        :pswitch_55
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerCallNotificationEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6580
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/INotificationManager$Stub;->PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 6581
    return-void
.end method

.method protected blacklist setToastRateLimitingEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6574
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_TOAST_RATE_LIMITING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6575
    return-void
.end method

.method protected blacklist unregisterCallNotificationEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6586
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/INotificationManager$Stub;->PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 6587
    return-void
.end method
