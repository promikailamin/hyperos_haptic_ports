.class public interface abstract Lcom/android/server/notification/NotificationManagerServiceStub;
.super Ljava/lang/Object;
.source "NotificationManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;
    .registers 1

    .line 23
    const-class v0, Lcom/android/server/notification/NotificationManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public adjustVibration(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 2
    .param p1, "vibration"    # Landroid/os/VibrationEffect;

    .line 40
    return-object p1
.end method

.method public abstract calculateAudiblyAlerted(Landroid/media/AudioManager;Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public abstract checkAllowToCreateChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract checkCallerIsXmsf()Z
.end method

.method public abstract checkFullScreenIntent(Landroid/app/Notification;Landroid/app/AppOpsManager;ILjava/lang/String;)V
.end method

.method public abstract checkInterceptListener(Landroid/service/notification/StatusBarNotification;Landroid/content/ComponentName;)Z
.end method

.method public abstract checkIsXmsfFakeConditionProviderEnabled(Ljava/lang/String;)Z
.end method

.method public abstract customizeNotificationLight(IIILandroid/content/Context;)Lcom/android/server/notification/NotificationRecord$Light;
.end method

.method public abstract dumpLight(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
.end method

.method public enableBlockedToasts(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public abstract fixCheckInterceptListenerAutoGroup(Landroid/app/Notification;Ljava/lang/String;)V
.end method

.method public getAppPkgByChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "channelIdOrGroupId"    # Ljava/lang/String;
    .param p2, "defaultPkg"    # Ljava/lang/String;

    .line 78
    return-object p2
.end method

.method public getAppUidByPkg(Ljava/lang/String;I)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultUid"    # I

    .line 82
    return p2
.end method

.method public abstract getColorLightManager()Landroid/os/IBinder;
.end method

.method public getMiuiDefaultListerWithVersion()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPlayVibrationPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "defaultPkg"    # Ljava/lang/String;

    .line 70
    return-object p3
.end method

.method public getVibRateLimiter()Ljava/lang/Object;
    .registers 2

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isAllowAppNotificationListener(ZLcom/android/server/notification/NotificationManagerService$NotificationListeners;ILjava/lang/String;)V
.end method

.method public abstract isAllowAppRenderedToast(Ljava/lang/String;II)Z
.end method

.method public abstract isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
.end method

.method public abstract isDeniedDemoPostNotification(IILandroid/app/Notification;Ljava/lang/String;)Z
.end method

.method public abstract isDeniedLed(Lcom/android/server/notification/NotificationRecord;)Z
.end method

.method public abstract isDeniedLocalNotification(Landroid/app/AppOpsManager;Landroid/app/Notification;ILjava/lang/String;)Z
.end method

.method public abstract isDeniedPlaySound(Landroid/media/AudioManager;Lcom/android/server/notification/NotificationRecord;)Z
.end method

.method public abstract isDeniedPlayVibration(Landroid/media/AudioManager;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)Z
.end method

.method public abstract isPackageDistractionRestrictionLocked(Lcom/android/server/notification/NotificationRecord;)Z
.end method

.method public abstract isSupportSilenceMode()Z
.end method

.method public abstract readDefaultsAndFixMiuiVersion(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;Landroid/util/TypedXmlPullParser;)V
.end method

.method public abstract setLightsDebug(Ljava/lang/Boolean;)V
.end method

.method public abstract shouldInjectDeleteChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public skipClearAll(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "reason"    # I

    .line 44
    const/4 v0, 0x0

    return v0
.end method
