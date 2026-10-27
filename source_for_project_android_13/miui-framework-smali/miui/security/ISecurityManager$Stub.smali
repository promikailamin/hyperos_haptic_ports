.class public abstract Lmiui/security/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lmiui/security/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activityResume:I = 0x1b

.field static final blacklist TRANSACTION_addAccessControlPass:I = 0x6

.field static final blacklist TRANSACTION_addAccessControlPassForUser:I = 0x26

.field static final blacklist TRANSACTION_addMiuiFirewallSharedUid:I = 0x2d

.field static final blacklist TRANSACTION_addRestrictChainMaps:I = 0x75

.field static final blacklist TRANSACTION_areNotificationsEnabledForPackage:I = 0x37

.field static final blacklist TRANSACTION_checkAccessControlPass:I = 0x8

.field static final blacklist TRANSACTION_checkAccessControlPassAsUser:I = 0x1f

.field static final blacklist TRANSACTION_checkAccessControlPassword:I = 0x41

.field static final blacklist TRANSACTION_checkAllowStartActivity:I = 0x22

.field static final blacklist TRANSACTION_checkGameBoosterAntimsgPassAsUser:I = 0x3d

.field static final blacklist TRANSACTION_checkSmsBlocked:I = 0x3

.field static final blacklist TRANSACTION_exemptByRestrictChain:I = 0x76

.field static final blacklist TRANSACTION_exemptTemporarily:I = 0x5a

.field static final blacklist TRANSACTION_finishAccessControl:I = 0x1a

.field static final blacklist TRANSACTION_getAccessControlPasswordType:I = 0x43

.field static final blacklist TRANSACTION_getAllGameStorageApps:I = 0x5d

.field static final blacklist TRANSACTION_getAllPrivacyApps:I = 0x52

.field static final blacklist TRANSACTION_getAppDarkMode:I = 0x28

.field static final blacklist TRANSACTION_getAppDarkModeForUser:I = 0x29

.field static final blacklist TRANSACTION_getAppPermissionControlOpen:I = 0x15

.field static final blacklist TRANSACTION_getAppRelaunchModeAfterFolded:I = 0x64

.field static final blacklist TRANSACTION_getAppRelaunchModeAfterFoldedForUser:I = 0x65

.field static final blacklist TRANSACTION_getAppRemindForRelaunch:I = 0x61

.field static final blacklist TRANSACTION_getAppRemindForRelaunchForUser:I = 0x62

.field static final blacklist TRANSACTION_getAppRunningControlIBinder:I = 0x48

.field static final blacklist TRANSACTION_getApplicationAccessControlEnabled:I = 0x9

.field static final blacklist TRANSACTION_getApplicationAccessControlEnabledAsUser:I = 0x20

.field static final blacklist TRANSACTION_getApplicationChildrenControlEnabled:I = 0xb

.field static final blacklist TRANSACTION_getApplicationMaskNotificationEnabledAsUser:I = 0x35

.field static final blacklist TRANSACTION_getBlurryCellInfos:I = 0x60

.field static final blacklist TRANSACTION_getBlurryCellLocation:I = 0x5f

.field static final blacklist TRANSACTION_getCurrentUserId:I = 0x1e

.field static final blacklist TRANSACTION_getGameMode:I = 0x3f

.field static final blacklist TRANSACTION_getIncompatibleAppList:I = 0x31

.field static final blacklist TRANSACTION_getPackageNameByPid:I = 0x2

.field static final blacklist TRANSACTION_getPermissionFlagsAsUser:I = 0x57

.field static final blacklist TRANSACTION_getPlatformVAID:I = 0x6b

.field static final blacklist TRANSACTION_getSecondSpaceId:I = 0x4a

.field static final blacklist TRANSACTION_getShouldMaskApps:I = 0x6a

.field static final blacklist TRANSACTION_getSimulatedTouchInfo:I = 0x77

.field static final blacklist TRANSACTION_getStickWindowName:I = 0x4e

.field static final blacklist TRANSACTION_getSysAppCracked:I = 0x23

.field static final blacklist TRANSACTION_getTopActivity:I = 0x47

.field static final blacklist TRANSACTION_getWakePathCallListLog:I = 0x14

.field static final blacklist TRANSACTION_getWakePathComponents:I = 0x32

.field static final blacklist TRANSACTION_getWakeUpTime:I = 0xe

.field static final blacklist TRANSACTION_grantInstallPermission:I = 0x24

.field static final blacklist TRANSACTION_grantRuntimePermission:I = 0x1d

.field static final blacklist TRANSACTION_grantRuntimePermissionAsUser:I = 0x54

.field static final blacklist TRANSACTION_hasAppBehaviorWatching:I = 0x74

.field static final blacklist TRANSACTION_haveAccessControlPassword:I = 0x42

.field static final blacklist TRANSACTION_isAllowStartService:I = 0x46

.field static final blacklist TRANSACTION_isAppHide:I = 0x39

.field static final blacklist TRANSACTION_isAppPrivacyEnabled:I = 0x45

.field static final blacklist TRANSACTION_isFunctionOpen:I = 0x3a

.field static final blacklist TRANSACTION_isGameStorageApp:I = 0x5c

.field static final blacklist TRANSACTION_isPrivacyApp:I = 0x51

.field static final blacklist TRANSACTION_isRestrictedAppNet:I = 0x2b

.field static final blacklist TRANSACTION_isScRelaunchNeedConfirm:I = 0x67

.field static final blacklist TRANSACTION_isScRelaunchNeedConfirmForUser:I = 0x69

.field static final blacklist TRANSACTION_isValidDevice:I = 0x3c

.field static final blacklist TRANSACTION_killNativePackageProcesses:I = 0x1

.field static final blacklist TRANSACTION_moveTaskToStack:I = 0x4b

.field static final blacklist TRANSACTION_needFinishAccessControl:I = 0x19

.field static final blacklist TRANSACTION_notifyAppsPreInstalled:I = 0x34

.field static final blacklist TRANSACTION_offerGoogleBaseCallBack:I = 0x33

.field static final blacklist TRANSACTION_persistAppBehavior:I = 0x72

.field static final blacklist TRANSACTION_pushPrivacyVirtualDisplayList:I = 0x6c

.field static final blacklist TRANSACTION_pushUpdatePkgsData:I = 0x4f

.field static final blacklist TRANSACTION_pushWakePathConfirmDialogWhiteList:I = 0x25

.field static final blacklist TRANSACTION_pushWakePathData:I = 0x11

.field static final blacklist TRANSACTION_pushWakePathWhiteList:I = 0x12

.field static final blacklist TRANSACTION_putSystemDataStringFile:I = 0xf

.field static final blacklist TRANSACTION_readSystemDataStringFile:I = 0x10

.field static final blacklist TRANSACTION_recordAppBehavior:I = 0x71

.field static final blacklist TRANSACTION_registerLocationBlurryManager:I = 0x5e

.field static final blacklist TRANSACTION_registerWakePathCallback:I = 0x17

.field static final blacklist TRANSACTION_removeAccessControlPass:I = 0x7

.field static final blacklist TRANSACTION_removeAccessControlPassAsUser:I = 0x18

.field static final blacklist TRANSACTION_removeWakePathData:I = 0x21

.field static final blacklist TRANSACTION_resizeTask:I = 0x4c

.field static final blacklist TRANSACTION_revokeRuntimePermissionAsUser:I = 0x55

.field static final blacklist TRANSACTION_revokeRuntimePermissionAsUserNotKill:I = 0x56

.field static final blacklist TRANSACTION_setAccessControlPassword:I = 0x40

.field static final blacklist TRANSACTION_setAppDarkModeForUser:I = 0x2a

.field static final blacklist TRANSACTION_setAppHide:I = 0x3b

.field static final blacklist TRANSACTION_setAppPermissionControlOpen:I = 0x16

.field static final blacklist TRANSACTION_setAppPrivacyStatus:I = 0x44

.field static final blacklist TRANSACTION_setAppRelaunchModeAfterFoldedForUser:I = 0x66

.field static final blacklist TRANSACTION_setAppRemindForRelaunchForUser:I = 0x63

.field static final blacklist TRANSACTION_setApplicationAccessControlEnabled:I = 0xa

.field static final blacklist TRANSACTION_setApplicationAccessControlEnabledForUser:I = 0x27

.field static final blacklist TRANSACTION_setApplicationChildrenControlEnabled:I = 0xc

.field static final blacklist TRANSACTION_setApplicationMaskNotificationEnabledForUser:I = 0x36

.field static final blacklist TRANSACTION_setCoreRuntimePermissionEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setCurrentNetworkState:I = 0x2f

.field static final blacklist TRANSACTION_setGameBoosterIBinder:I = 0x3e

.field static final blacklist TRANSACTION_setGameStorageApp:I = 0x5b

.field static final blacklist TRANSACTION_setIncompatibleAppList:I = 0x30

.field static final blacklist TRANSACTION_setMiuiFirewallRule:I = 0x2e

.field static final blacklist TRANSACTION_setNotificationsEnabledForPackage:I = 0x38

.field static final blacklist TRANSACTION_setPrivacyApp:I = 0x50

.field static final blacklist TRANSACTION_setScRelaunchNeedConfirmForUser:I = 0x68

.field static final blacklist TRANSACTION_setStickWindowName:I = 0x4d

.field static final blacklist TRANSACTION_setTrackWakePathCallListLogEnabled:I = 0x13

.field static final blacklist TRANSACTION_setWakeUpTime:I = 0xd

.field static final blacklist TRANSACTION_startInterceptSmsBySender:I = 0x4

.field static final blacklist TRANSACTION_startWatchingAppBehavior:I = 0x6d

.field static final blacklist TRANSACTION_startWatchingAppBehaviors:I = 0x6e

.field static final blacklist TRANSACTION_stopInterceptSmsBySender:I = 0x5

.field static final blacklist TRANSACTION_stopWatchingAppBehavior:I = 0x6f

.field static final blacklist TRANSACTION_stopWatchingAppBehaviors:I = 0x70

.field static final blacklist TRANSACTION_switchSimulatedTouchDetect:I = 0x78

.field static final blacklist TRANSACTION_updateBehaviorThreshold:I = 0x73

.field static final blacklist TRANSACTION_updateLauncherPackageNames:I = 0x53

.field static final blacklist TRANSACTION_updateLedStatus:I = 0x59

.field static final blacklist TRANSACTION_updatePermissionFlagsAsUser:I = 0x58

.field static final blacklist TRANSACTION_watchGreenGuardProcess:I = 0x49

.field static final blacklist TRANSACTION_writeAppHideConfig:I = 0x2c


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 533
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 534
    const-string v0, "miui.security.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Lmiui/security/ISecurityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 542
    if-nez p0, :cond_4

    .line 543
    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_4
    const-string v0, "miui.security.ISecurityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 546
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/security/ISecurityManager;

    if-eqz v1, :cond_14

    .line 547
    move-object v1, v0

    check-cast v1, Lmiui/security/ISecurityManager;

    return-object v1

    .line 549
    :cond_14
    new-instance v1, Lmiui/security/ISecurityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 1825
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1827
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg0"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 1838
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 553
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "miui.security.ISecurityManager"

    .line 558
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 559
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    :cond_15
    packed-switch v7, :pswitch_data_974

    .line 569
    packed-switch v7, :pswitch_data_97a

    .line 1851
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 565
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    return v11

    .line 1835
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1836
    .local v0, "N":I
    if-gez v0, :cond_2c

    const/4 v1, 0x0

    goto :goto_31

    :cond_2c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1837
    .local v1, "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_31
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lmiui/security/ISecurityManager$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8, v1}, Lmiui/security/ISecurityManager$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 1844
    .end local v0    # "N":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1845
    invoke-virtual {v6, v1}, Lmiui/security/ISecurityManager$Stub;->switchSimulatedTouchDetect(Ljava/util/Map;)V

    .line 1846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    goto/16 :goto_972

    .line 1818
    .end local v1    # "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSimulatedTouchInfo()Ljava/util/Map;

    move-result-object v0

    .line 1819
    .local v0, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    if-nez v0, :cond_58

    .line 1821
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_972

    .line 1823
    :cond_58
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    new-instance v1, Lmiui/security/ISecurityManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9}, Lmiui/security/ISecurityManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1829
    goto/16 :goto_972

    .line 1807
    .end local v0    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1810
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1811
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->exemptByRestrictChain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1812
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1814
    goto/16 :goto_972

    .line 1796
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1798
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1799
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1800
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->addRestrictChainMaps(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    goto/16 :goto_972

    .line 1788
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_93
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->hasAppBehaviorWatching()Z

    move-result v0

    .line 1789
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1790
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1791
    goto/16 :goto_972

    .line 1778
    .end local v0    # "_result":Z
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1780
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1781
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1782
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->updateBehaviorThreshold(IJ)V

    .line 1783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    goto/16 :goto_972

    .line 1771
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_b2
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->persistAppBehavior()V

    .line 1772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    goto/16 :goto_972

    .line 1763
    :pswitch_ba
    sget-object v0, Lmiui/security/AppBehavior;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/AppBehavior;

    .line 1764
    .local v0, "_arg0":Lmiui/security/AppBehavior;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1765
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->recordAppBehavior(Lmiui/security/AppBehavior;)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    goto/16 :goto_972

    .line 1752
    .end local v0    # "_arg0":Lmiui/security/AppBehavior;
    :pswitch_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->stopWatchingAppBehaviors(I[Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    goto/16 :goto_972

    .line 1743
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1744
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1745
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->stopWatchingAppBehavior(I)V

    .line 1746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1747
    goto/16 :goto_972

    .line 1730
    .end local v0    # "_arg0":I
    :pswitch_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1732
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1734
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1735
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1736
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->startWatchingAppBehaviors(I[Ljava/lang/String;Z)V

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    goto/16 :goto_972

    .line 1719
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1721
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1722
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1723
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->startWatchingAppBehavior(IZ)V

    .line 1724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    goto/16 :goto_972

    .line 1710
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1711
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->pushPrivacyVirtualDisplayList(Ljava/util/List;)V

    .line 1713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    goto/16 :goto_972

    .line 1702
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_128
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getPlatformVAID()Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1705
    goto/16 :goto_972

    .line 1695
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_134
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getShouldMaskApps()Ljava/lang/String;

    move-result-object v0

    .line 1696
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1698
    goto/16 :goto_972

    .line 1684
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1687
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1688
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->isScRelaunchNeedConfirmForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 1689
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1691
    goto/16 :goto_972

    .line 1671
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1675
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1676
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setScRelaunchNeedConfirmForUser(Ljava/lang/String;ZI)V

    .line 1678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    goto/16 :goto_972

    .line 1661
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1662
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->isScRelaunchNeedConfirm(Ljava/lang/String;)Z

    move-result v1

    .line 1664
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1666
    goto/16 :goto_972

    .line 1648
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1650
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1652
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1653
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setAppRelaunchModeAfterFoldedForUser(Ljava/lang/String;ZI)V

    .line 1655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    goto/16 :goto_972

    .line 1636
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1638
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1639
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->getAppRelaunchModeAfterFoldedForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 1641
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1643
    goto/16 :goto_972

    .line 1626
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1627
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1628
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAppRelaunchModeAfterFolded(Ljava/lang/String;)Z

    move-result v1

    .line 1629
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1631
    goto/16 :goto_972

    .line 1613
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1615
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1617
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1618
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1619
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setAppRemindForRelaunchForUser(Ljava/lang/String;ZI)V

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    goto/16 :goto_972

    .line 1601
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_1d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1603
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1604
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1605
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->getAppRemindForRelaunchForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 1606
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1608
    goto/16 :goto_972

    .line 1591
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1593
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAppRemindForRelaunch(Ljava/lang/String;)Z

    move-result v1

    .line 1594
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1596
    goto/16 :goto_972

    .line 1581
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_203
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1582
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1583
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getBlurryCellInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1584
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1586
    goto/16 :goto_972

    .line 1571
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_218
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    .line 1572
    .local v0, "_arg0":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1573
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getBlurryCellLocation(Landroid/telephony/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 1574
    .local v1, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1575
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1576
    goto/16 :goto_972

    .line 1562
    .end local v0    # "_arg0":Landroid/telephony/CellIdentity;
    .end local v1    # "_result":Landroid/telephony/CellIdentity;
    :pswitch_22f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ILocationBlurry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ILocationBlurry;

    move-result-object v0

    .line 1563
    .local v0, "_arg0":Lcom/android/internal/app/ILocationBlurry;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1564
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->registerLocationBlurryManager(Lcom/android/internal/app/ILocationBlurry;)V

    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    goto/16 :goto_972

    .line 1552
    .end local v0    # "_arg0":Lcom/android/internal/app/ILocationBlurry;
    :pswitch_242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1553
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAllGameStorageApps(I)Ljava/util/List;

    move-result-object v1

    .line 1555
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1557
    goto/16 :goto_972

    .line 1540
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1543
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1544
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->isGameStorageApp(Ljava/lang/String;I)Z

    move-result v2

    .line 1545
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1547
    goto/16 :goto_972

    .line 1527
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_26c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1529
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1531
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1532
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setGameStorageApp(Ljava/lang/String;IZ)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    goto/16 :goto_972

    .line 1518
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1519
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->exemptTemporarily(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    goto/16 :goto_972

    .line 1509
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1510
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->updateLedStatus(Z)V

    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    goto/16 :goto_972

    .line 1492
    .end local v0    # "_arg0":Z
    :pswitch_2a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1494
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1496
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1498
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1500
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1501
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/security/ISecurityManager$Stub;->updatePermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    goto/16 :goto_972

    .line 1478
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_2c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1482
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1483
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1484
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->getPermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1485
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    goto/16 :goto_972

    .line 1465
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_2e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1470
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->revokeRuntimePermissionAsUserNotKill(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    goto/16 :goto_972

    .line 1452
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1457
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    goto/16 :goto_972

    .line 1439
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1441
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1444
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    goto/16 :goto_972

    .line 1432
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_328
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->updateLauncherPackageNames()V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    goto/16 :goto_972

    .line 1423
    :pswitch_330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1424
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v1

    .line 1426
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1428
    goto/16 :goto_972

    .line 1411
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1414
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v2

    .line 1416
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1418
    goto/16 :goto_972

    .line 1398
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_35a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1402
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1403
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setPrivacyApp(Ljava/lang/String;IZ)V

    .line 1405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    goto/16 :goto_972

    .line 1387
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1389
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1390
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->pushUpdatePkgsData(Ljava/util/List;Z)V

    .line 1392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    goto/16 :goto_972

    .line 1377
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Z
    :pswitch_384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getStickWindowName(Ljava/lang/String;)Z

    move-result v1

    .line 1380
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1382
    goto/16 :goto_972

    .line 1368
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1369
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->setStickWindowName(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    goto/16 :goto_972

    .line 1354
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1356
    .local v0, "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1358
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1359
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1360
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v3

    .line 1361
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    goto/16 :goto_972

    .line 1340
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_3c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1342
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1344
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1345
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->moveTaskToStack(IIZ)I

    move-result v3

    .line 1347
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    goto/16 :goto_972

    .line 1332
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":I
    :pswitch_3e0
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSecondSpaceId()I

    move-result v0

    .line 1333
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    goto/16 :goto_972

    .line 1326
    .end local v0    # "_result":I
    :pswitch_3ec
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->watchGreenGuardProcess()V

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    goto/16 :goto_972

    .line 1319
    :pswitch_3f4
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1320
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1322
    goto/16 :goto_972

    .line 1312
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_400
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getTopActivity()Landroid/os/IBinder;

    move-result-object v0

    .line 1313
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1315
    goto/16 :goto_972

    .line 1301
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_40c
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1303
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1304
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->isAllowStartService(Landroid/content/Intent;I)Z

    move-result v2

    .line 1306
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1308
    goto/16 :goto_972

    .line 1291
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->isAppPrivacyEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1294
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1296
    goto/16 :goto_972

    .line 1280
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_43a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1282
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1283
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->setAppPrivacyStatus(Ljava/lang/String;Z)V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_972

    .line 1270
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_44d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1271
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1275
    goto/16 :goto_972

    .line 1260
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1261
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->haveAccessControlPassword(I)Z

    move-result v1

    .line 1263
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1265
    goto/16 :goto_972

    .line 1246
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1250
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1251
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 1253
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    goto/16 :goto_972

    .line 1233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_48e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1237
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1238
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    goto/16 :goto_972

    .line 1223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_4a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getGameMode(I)Z

    move-result v1

    .line 1226
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1228
    goto/16 :goto_972

    .line 1210
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1212
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1214
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1215
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    goto/16 :goto_972

    .line 1196
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_4cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1200
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1201
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v3

    .line 1203
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1205
    goto/16 :goto_972

    .line 1188
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_4ee
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isValidDevice()Z

    move-result v0

    .line 1189
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1191
    goto/16 :goto_972

    .line 1179
    .end local v0    # "_result":Z
    :pswitch_4fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1180
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->setAppHide(Z)Z

    move-result v1

    .line 1182
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1184
    goto/16 :goto_972

    .line 1171
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_50d
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isFunctionOpen()Z

    move-result v0

    .line 1172
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1174
    goto/16 :goto_972

    .line 1164
    .end local v0    # "_result":Z
    :pswitch_519
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isAppHide()Z

    move-result v0

    .line 1165
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1167
    goto/16 :goto_972

    .line 1152
    .end local v0    # "_result":Z
    :pswitch_525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1156
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1157
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    goto/16 :goto_972

    .line 1140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_53c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1143
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 1145
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1147
    goto/16 :goto_972

    .line 1127
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1131
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1132
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_972

    .line 1115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_56a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1118
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    .line 1120
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    goto/16 :goto_972

    .line 1109
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_581
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->notifyAppsPreInstalled()V

    .line 1110
    goto/16 :goto_972

    .line 1101
    :pswitch_586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityCallback;

    move-result-object v0

    .line 1102
    .local v0, "_arg0":Lmiui/security/ISecurityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    goto/16 :goto_972

    .line 1091
    .end local v0    # "_arg0":Lmiui/security/ISecurityCallback;
    :pswitch_599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1094
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1096
    goto/16 :goto_972

    .line 1083
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_5ac
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v0

    .line 1084
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1086
    goto/16 :goto_972

    .line 1075
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1076
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->setIncompatibleAppList(Ljava/util/List;)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    goto/16 :goto_972

    .line 1065
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1066
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->setCurrentNetworkState(I)Z

    move-result v1

    .line 1068
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1070
    goto/16 :goto_972

    .line 1049
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1053
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1056
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/security/ISecurityManager$Stub;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v4

    .line 1058
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1060
    goto/16 :goto_972

    .line 1039
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_5f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1040
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->addMiuiFirewallSharedUid(I)Z

    move-result v1

    .line 1042
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1044
    goto/16 :goto_972

    .line 1029
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_60c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1030
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->writeAppHideConfig(Z)Z

    move-result v1

    .line 1032
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1034
    goto/16 :goto_972

    .line 1019
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_61f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->isRestrictedAppNet(Ljava/lang/String;)Z

    move-result v1

    .line 1022
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1024
    goto/16 :goto_972

    .line 1006
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1010
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1011
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setAppDarkModeForUser(Ljava/lang/String;ZI)V

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    goto/16 :goto_972

    .line 994
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 996
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 997
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->getAppDarkModeForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 999
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1001
    goto/16 :goto_972

    .line 984
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAppDarkMode(Ljava/lang/String;)Z

    move-result v1

    .line 987
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 989
    goto/16 :goto_972

    .line 971
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 973
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 975
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 976
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_972

    .line 960
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_68a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 962
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 963
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPassForUser(Ljava/lang/String;I)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    goto/16 :goto_972

    .line 949
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_69d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 951
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 952
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    goto/16 :goto_972

    .line 938
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    goto/16 :goto_972

    .line 930
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6c3
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSysAppCracked()I

    move-result v0

    .line 931
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    goto/16 :goto_972

    .line 913
    .end local v0    # "_result":I
    :pswitch_6cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 915
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 917
    .restart local v13    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/Intent;

    .line 919
    .local v14, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 921
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 922
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/security/ISecurityManager$Stub;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;II)Z

    move-result v0

    .line 924
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 926
    goto/16 :goto_972

    .line 904
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/content/Intent;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_6ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 905
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->removeWakePathData(I)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    goto/16 :goto_972

    .line 892
    .end local v0    # "_arg0":I
    :pswitch_70e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 895
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    .line 897
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 899
    goto/16 :goto_972

    .line 878
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 880
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 882
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v3

    .line 885
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 887
    goto/16 :goto_972

    .line 870
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_744
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getCurrentUserId()I

    move-result v0

    .line 871
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    goto/16 :goto_972

    .line 862
    .end local v0    # "_result":I
    :pswitch_750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->grantRuntimePermission(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_972

    .line 851
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_75f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 853
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->setCoreRuntimePermissionEnabled(ZI)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    goto/16 :goto_972

    .line 841
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_772
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 842
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->activityResume(Landroid/content/Intent;)I

    move-result v1

    .line 844
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    goto/16 :goto_972

    .line 830
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":I
    :pswitch_789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 833
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->finishAccessControl(Ljava/lang/String;I)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_972

    .line 820
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_79c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 821
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v1

    .line 823
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 825
    goto/16 :goto_972

    .line 810
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_7af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 815
    goto/16 :goto_972

    .line 801
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IWakePathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IWakePathCallback;

    move-result-object v0

    .line 802
    .local v0, "_arg0":Lcom/android/internal/app/IWakePathCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_972

    .line 792
    .end local v0    # "_arg0":Lcom/android/internal/app/IWakePathCallback;
    :pswitch_7d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 793
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->setAppPermissionControlOpen(I)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_972

    .line 782
    .end local v0    # "_arg0":I
    :pswitch_7e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getAppPermissionControlOpen(I)I

    move-result v1

    .line 785
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    goto/16 :goto_972

    .line 774
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7f4
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 775
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 777
    goto/16 :goto_972

    .line 766
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 767
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->setTrackWakePathCallListLogEnabled(Z)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_972

    .line 755
    .end local v0    # "_arg0":Z
    :pswitch_80f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 757
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 758
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->pushWakePathWhiteList(Ljava/util/List;I)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_972

    .line 742
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    :pswitch_822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 744
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 746
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 747
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_972

    .line 732
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    :pswitch_83d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    goto/16 :goto_972

    .line 720
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 725
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 727
    goto/16 :goto_972

    .line 710
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 713
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 715
    goto/16 :goto_972

    .line 699
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_87a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 701
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 702
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setWakeUpTime(Ljava/lang/String;J)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_972

    .line 688
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_88d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 691
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_972

    .line 678
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_8a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 681
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 683
    goto/16 :goto_972

    .line 667
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 670
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_972

    .line 657
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_8c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 660
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 662
    goto/16 :goto_972

    .line 645
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 648
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    .line 650
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    goto/16 :goto_972

    .line 636
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_result":Z
    :pswitch_8f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPass(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto :goto_972

    .line 627
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 628
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPass(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto :goto_972

    .line 619
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_910
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->stopInterceptSmsBySender()Z

    move-result v0

    .line 620
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 622
    goto :goto_972

    .line 606
    .end local v0    # "_result":Z
    :pswitch_91b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {v6, v0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 613
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto :goto_972

    .line 595
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_935
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 596
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v1

    .line 598
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 600
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 601
    goto :goto_972

    .line 585
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    :pswitch_94e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {v6, v0}, Lmiui/security/ISecurityManager$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    goto :goto_972

    .line 574
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 576
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {v6, v0, v1}, Lmiui/security/ISecurityManager$Stub;->killNativePackageProcesses(ILjava/lang/String;)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    nop

    .line 1854
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_972
    return v11

    nop

    :pswitch_data_974
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_97a
    .packed-switch 0x1
        :pswitch_960
        :pswitch_94e
        :pswitch_935
        :pswitch_91b
        :pswitch_910
        :pswitch_902
        :pswitch_8f4
        :pswitch_8d9
        :pswitch_8c6
        :pswitch_8b3
        :pswitch_8a0
        :pswitch_88d
        :pswitch_87a
        :pswitch_867
        :pswitch_850
        :pswitch_83d
        :pswitch_822
        :pswitch_80f
        :pswitch_800
        :pswitch_7f4
        :pswitch_7e1
        :pswitch_7d2
        :pswitch_7bf
        :pswitch_7af
        :pswitch_79c
        :pswitch_789
        :pswitch_772
        :pswitch_75f
        :pswitch_750
        :pswitch_744
        :pswitch_725
        :pswitch_70e
        :pswitch_6ff
        :pswitch_6cf
        :pswitch_6c3
        :pswitch_6b0
        :pswitch_69d
        :pswitch_68a
        :pswitch_673
        :pswitch_660
        :pswitch_649
        :pswitch_632
        :pswitch_61f
        :pswitch_60c
        :pswitch_5f9
        :pswitch_5da
        :pswitch_5c7
        :pswitch_5b8
        :pswitch_5ac
        :pswitch_599
        :pswitch_586
        :pswitch_581
        :pswitch_56a
        :pswitch_553
        :pswitch_53c
        :pswitch_525
        :pswitch_519
        :pswitch_50d
        :pswitch_4fa
        :pswitch_4ee
        :pswitch_4cf
        :pswitch_4b8
        :pswitch_4a5
        :pswitch_48e
        :pswitch_473
        :pswitch_460
        :pswitch_44d
        :pswitch_43a
        :pswitch_427
        :pswitch_40c
        :pswitch_400
        :pswitch_3f4
        :pswitch_3ec
        :pswitch_3e0
        :pswitch_3c5
        :pswitch_3a6
        :pswitch_397
        :pswitch_384
        :pswitch_371
        :pswitch_35a
        :pswitch_343
        :pswitch_330
        :pswitch_328
        :pswitch_311
        :pswitch_2fa
        :pswitch_2e3
        :pswitch_2c8
        :pswitch_2a1
        :pswitch_292
        :pswitch_283
        :pswitch_26c
        :pswitch_255
        :pswitch_242
        :pswitch_22f
        :pswitch_218
        :pswitch_203
        :pswitch_1f0
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1af
        :pswitch_198
        :pswitch_181
        :pswitch_16e
        :pswitch_157
        :pswitch_140
        :pswitch_134
        :pswitch_128
        :pswitch_119
        :pswitch_106
        :pswitch_ef
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_b2
        :pswitch_9f
        :pswitch_93
        :pswitch_80
        :pswitch_69
        :pswitch_49
        :pswitch_24
    .end packed-switch
.end method
