.class public Lmiui/mqsas/IMQSService$Default;
.super Ljava/lang/Object;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist appCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "actionList"    # Ljava/lang/String;
    .param p3, "logPath"    # Ljava/lang/String;
    .param p4, "servicesList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 3
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkDumpForWatchdog(Lmiui/mqsas/sdk/event/WatchdogEvent;)I
    .registers 3
    .param p1, "event"    # Lmiui/mqsas/sdk/event/WatchdogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist commonCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "actionList"    # Ljava/lang/String;
    .param p4, "logPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist dialogButtonChecked(IILjava/lang/String;Z)V
    .registers 5
    .param p1, "operation"    # I
    .param p2, "eventType"    # I
    .param p3, "dgt"    # Ljava/lang/String;
    .param p4, "isChecked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist dumpBugReport()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist getOneTrackService()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRules(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBootCompleted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist registerApplicationScoutThread(Landroid/app/IAppScoutThread;I)V
    .registers 3
    .param p1, "thread"    # Landroid/app/IAppScoutThread;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/AnrEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist reportAppScoutEvent(Lmiui/mqsas/sdk/event/AppScoutEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/AppScoutEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public blacklist reportBluetoothEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/BootEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist reportBrightnessEvent(IIILjava/lang/String;)V
    .registers 5
    .param p1, "startOrEnd"    # I
    .param p2, "progress"    # I
    .param p3, "autoBrightnessEnabled"    # I
    .param p4, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    .registers 2
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist reportConnectExceptionEvent(IILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .param p3, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist reportContinuousKillProcessEvent(Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist reportDataStallSuspected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public blacklist reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "isGlobalNeed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist reportEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isGlobalNeed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist reportEvents(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .param p1, "module"    # Ljava/lang/String;
    .param p3, "isGlobalNeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    .local p2, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist reportEventsV2(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "module"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isGlobalNeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    .local p2, "infoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist reportFeatureEvent(Lmiui/mqsas/sdk/event/FeatureEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/FeatureEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist reportGameDelayEvent(Ljava/util/Map;Ljava/lang/String;)V
    .registers 3
    .param p1, "gameDelayTimeStatisMap"    # Ljava/util/Map;
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public blacklist reportGeneralEvent(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist reportGeneralException(Lmiui/mqsas/sdk/event/GeneralExceptionEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/GeneralExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist reportHangExceptionEvents()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist reportHeapLeakEvent(Lmiui/mqsas/sdk/event/HeapLeakEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/HeapLeakEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist reportHighMemoryEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "summary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V
    .registers 2
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist reportL2DataStallEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist reportLowMemEvent(Lmiui/mqsas/sdk/event/LowMemEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/LowMemEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist reportNativeEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isGlobalNeed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist reportNativeFeatureEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/PackageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V
    .registers 2
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist reportRebootNullEvent(Lmiui/mqsas/sdk/event/RebootNullEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/RebootNullEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist reportRssLeakEvent(Lmiui/mqsas/sdk/event/RssLeakEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/RssLeakEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/ScreenOnEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist reportSimpleEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist reportSysScoutEvent(Lmiui/mqsas/sdk/event/SysScoutEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/SysScoutEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    return-void
.end method

.method public blacklist reportTelephonyEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public blacklist reportTxBadOrRetryEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    return-void
.end method

.method public blacklist reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    .registers 2
    .param p1, "event"    # Lmiui/mqsas/sdk/event/WatchdogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist reportXmsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist unregisterApplicationScoutThread(I)V
    .registers 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method
