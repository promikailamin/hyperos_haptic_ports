.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# static fields
.field public static final NLS_COMPLETION_GRACE_PERIOD:Ljava/time/Duration;


# instance fields
.field public final mIsHeadlessSystemUserMode:Z

.field public final mLightTrimListeners:Landroid/util/ArraySet;

.field public final mRequestedNotificationListeners:Landroid/util/ArrayMap;

.field public final mTrustedListenerUids:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$0iWeY82Ox6K-WVRWLCpMEXmz-hA(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyListenerHintsChangedLocked$7(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6V9RGqXihQs6v7F21expZx6F_zc(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$prepareNotifyPostedLocked$3(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WHqs6YFtOfFequl8EwqMerBSx4(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$prepareNotifyPostedLocked$2(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MbMaXgxIL1qOClQUBkbGT0oPFFg(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$onStatusBarIconsBehaviorChanged$0(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSrMhYvlV-R3E77qIoH5pzE972U(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyRankingUpdateLocked$6(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RbnnqtIVpjhzFw8dbsSx7hvhMgg(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyRemovedLocked$4(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VmcY63y9deVrzSb6PhmE8Uor26s(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyNotificationChannelGroupChanged$10(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W6cqH1TH5i5zhS_9JyCD0Cwqo4k(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyNotificationChannelChanged$9(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iL7tP1rlSnQntsBHgGsAwtCItDk(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyInterruptionFilterChanged$8(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nPIV6NoKkWlO9nB30QOeIw7qlCM(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$prepareNotifyPostedLocked$1(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykOQj42f4S_ClginyasCRZXMpGU(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyRemovedLocked$5(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetNLS_COMPLETION_GRACE_PERIOD()Ljava/time/Duration;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->NLS_COMPLETION_GRACE_PERIOD:Ljava/time/Duration;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xa

    .line 13757
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->NLS_COMPLETION_GRACE_PERIOD:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 13

    .line 13797
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;Z)V
    .registers 7

    .line 13802
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 13803
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 13786
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 13788
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 13790
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 13804
    iput-boolean p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mIsHeadlessSystemUserMode:Z

    return-void
.end method


# virtual methods
.method public allowRebindForParentUser()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 13900
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object p0

    return-object p0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .registers 2

    .line 13905
    instance-of p0, p1, Landroid/service/notification/INotificationListener;

    return p0
.end method

.method public ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .registers 7

    .line 14157
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 14158
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14159
    :try_start_f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 14160
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationListenerFilter;

    .line 14161
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_80

    if-nez v1, :cond_49

    .line 14164
    const-string v1, "android.service.notification.default_filter_types"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 14165
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.service.notification.default_filter_types"

    .line 14166
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 14168
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getTypesFromStringList(Ljava/lang/String;)I

    move-result v1

    .line 14169
    new-instance v2, Landroid/service/notification/NotificationListenerFilter;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v2, v1, v3}, Landroid/service/notification/NotificationListenerFilter;-><init>(ILandroid/util/ArraySet;)V

    .line 14171
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_82

    .line 14177
    :cond_49
    :goto_49
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.service.notification.disabled_filter_types"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 14178
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.service.notification.disabled_filter_types"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 14179
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14178
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getTypesFromStringList(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_80

    .line 14181
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    .line 14182
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationListenerFilter;

    .line 14184
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v2

    not-int p1, p1

    and-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    .line 14185
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14189
    :cond_80
    monitor-exit v0

    return-void

    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_f .. :try_end_83} :catchall_47

    throw p0
.end method

.method public getBindFlags()J
    .registers 3

    .line 0
    const-wide v0, 0x805000101L

    return-wide v0
.end method

.method public getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 2

    .line 13887
    new-instance p0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 13888
    const-string/jumbo v0, "notification listener"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 13889
    const-string v0, "android.service.notification.NotificationListenerService"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 13890
    const-string v0, "enabled_listeners"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 13891
    const-string v0, "enabled_notification_listeners"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 13892
    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 13893
    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    const v0, 0x1040721

    .line 13894
    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    return-object p0
.end method

.method public final getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J
    .registers 3

    .line 14253
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mBinderSession:Landroid/app/IBinderSession;

    if-eqz p1, :cond_9

    .line 14254
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->reportBinderTransactionStarting(Landroid/app/IBinderSession;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;
    .registers 3

    .line 14143
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14144
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/NotificationListenerFilter;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 14145
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I
    .registers 2

    .line 14231
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTypesFromStringList(Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_4b

    .line 14195
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v0, p0

    .line 14196
    :goto_a
    array-length v1, p1

    if-ge p0, v1, :cond_4a

    .line 14197
    aget-object v1, p1, p0

    .line 14198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_47

    .line 14201
    :cond_16
    const-string v2, "ONGOING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    or-int/lit8 v0, v0, 0x8

    goto :goto_47

    .line 14203
    :cond_21
    const-string v2, "CONVERSATIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    or-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 14205
    :cond_2c
    const-string v2, "SILENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    or-int/lit8 v0, v0, 0x4

    goto :goto_47

    .line 14207
    :cond_37
    const-string v2, "ALERTING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    or-int/lit8 v0, v0, 0x2

    goto :goto_47

    .line 14211
    :cond_42
    :try_start_42
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_46} :catch_47

    or-int/2addr v0, v1

    :catch_47
    :goto_47
    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_4a
    return v0

    :cond_4b
    return p0
.end method

.method public hasAllowedListener(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 14934
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    move p2, v0

    .line 14935
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_24

    .line 14936
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_24
    return v0
.end method

.method public hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 14537
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isAppTrustedNotificationListenerService(ILjava/lang/String;)Z
    .registers 14

    .line 14435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 14437
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v4, "android.permission.RECEIVE_SENSITIVE_NOTIFICATIONS"

    invoke-interface {v0, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 14438
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x94

    move v7, p1

    move-object v8, p2

    .line 14440
    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_87

    .line 14448
    :cond_2f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14449
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p2, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_47

    .line 14450
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    goto :goto_47

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_94

    :catch_44
    move-exception v0

    move-object p1, v0

    goto :goto_8b

    .line 14452
    :cond_47
    :goto_47
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-eqz p2, :cond_55

    .line 14454
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object p1

    :cond_55
    move p2, v3

    .line 14456
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_83

    .line 14457
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 14458
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v5

    if-nez v5, :cond_80

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 14459
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_7a} :catch_44
    .catchall {:try_start_5 .. :try_end_7a} :catchall_41

    if-ne v0, v5, :cond_80

    .line 14466
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_80
    add-int/lit8 p2, p2, 0x1

    goto :goto_56

    :cond_83
    :goto_83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_93

    :cond_87
    :goto_87
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 14464
    :goto_8b
    :try_start_8b
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string p2, "Failed to check trusted status of listener"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_41

    goto :goto_83

    :goto_93
    return v3

    .line 14466
    :goto_94
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14467
    throw p0
.end method

.method public isListenerPackage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 14916
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 14917
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14918
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p0, 0x1

    .line 14919
    monitor-exit v1

    return p0

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 14922
    :cond_2e
    monitor-exit v1

    return v0

    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public isUidTrusted(I)Z
    .registers 3

    .line 14541
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter v0

    .line 14542
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 14543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 14544
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$notifyInterruptionFilterChanged$8(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    .line 14746
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public final synthetic lambda$notifyListenerHintsChangedLocked$7(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    .line 14689
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public final synthetic lambda$notifyNotificationChannelChanged$9(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 8

    .line 14762
    iget-boolean v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14763
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 14764
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNotificationAssistant(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 14765
    :cond_18
    :goto_18
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public final synthetic lambda$notifyNotificationChannelGroupChanged$10(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 7

    .line 14785
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    .line 14786
    :cond_10
    :goto_10
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    return-void
.end method

.method public final synthetic lambda$notifyRankingUpdateLocked$6(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 3

    .line 14677
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public final synthetic lambda$notifyRemovedLocked$4(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 6

    .line 14635
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    return-void
.end method

.method public final synthetic lambda$notifyRemovedLocked$5(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 14639
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$onStatusBarIconsBehaviorChanged$0(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZJ)V
    .registers 6

    .line 14241
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 14243
    :try_start_4
    invoke-interface {v0, p2, p3, p4}, Landroid/service/notification/INotificationListener;->onStatusBarIconsBehaviorChanged(ZJ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p2

    .line 14245
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to notify listener (hideSilentStatusIcons): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$prepareNotifyPostedLocked$1(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4

    .line 14368
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public final synthetic lambda$prepareNotifyPostedLocked$2(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 14399
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    return-void
.end method

.method public final synthetic lambda$prepareNotifyPostedLocked$3(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4

    .line 14422
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public loadDefaultsFromConfig()V
    .registers 7

    .line 13841
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 13844
    const-string v1, ":"

    .line 13845
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 13846
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_4c

    .line 13847
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_49

    .line 13854
    :cond_23
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mIsHeadlessSystemUserMode:Z

    if-eqz v3, :cond_2a

    const/high16 v3, 0x4c0000

    goto :goto_2c

    :cond_2a
    const/high16 v3, 0xc0000

    .line 13857
    :goto_2c
    aget-object v4, v0, v2

    .line 13858
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v3

    move v4, v1

    .line 13860
    :goto_33
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 13861
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 13862
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_4c
    return-void
.end method

.method public notifyHiddenLocked(Ljava/util/List;)V
    .registers 8

    if-eqz p1, :cond_2b

    .line 14702
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2b

    .line 14706
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 14709
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_2b

    .line 14711
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 14712
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    :goto_2b
    return-void
.end method

.method public notifyInterruptionFilterChanged(I)V
    .registers 6

    .line 14740
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14741
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForUser()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14742
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 14741
    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_8

    .line 14745
    :cond_27
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_34
    return-void
.end method

.method public notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 6

    .line 14872
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 14873
    const-string/jumbo v1, "onInterruptionFilterChanged"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v1

    .line 14876
    :try_start_b
    invoke-interface {v0, p2, v1, v2}, Landroid/service/notification/INotificationListener;->onInterruptionFilterChanged(IJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 14878
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to notify listener (interruption filter): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 6

    .line 14859
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 14860
    const-string/jumbo v1, "onListenerHintsChanged"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v1

    .line 14863
    :try_start_b
    invoke-interface {v0, p2, v1, v2}, Landroid/service/notification/INotificationListener;->onListenerHintsChanged(IJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 14865
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to notify listener (listener hints): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public notifyListenerHintsChangedLocked(I)V
    .registers 6

    .line 14684
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14685
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForUser()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14686
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 14685
    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_8

    .line 14689
    :cond_27
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_34
    return-void
.end method

.method public notifyNotificationChannelChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 14

    .line 14885
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    move-object v1, v0

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 14886
    const-string/jumbo v0, "onNotificationChannelModification"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 14889
    :try_start_10
    invoke-interface/range {v1 .. v7}, Landroid/service/notification/INotificationListener;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;IJ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    move-object p2, v0

    .line 14892
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to notify listener (channel changed): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 14

    if-nez p3, :cond_3

    goto :goto_41

    .line 14755
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14756
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14757
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_b

    .line 14761
    :cond_2f
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda5;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_41
    :goto_41
    return-void
.end method

.method public notifyNotificationChannelGroupChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 14

    .line 14900
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 14901
    const-string/jumbo v0, "onNotificationChannelGroupModification"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 14904
    :try_start_12
    invoke-interface/range {v1 .. v7}, Landroid/service/notification/INotificationListener;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;IJ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    move-object p2, v0

    .line 14907
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to notify listener (channel group changed): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 14

    if-nez p3, :cond_3

    goto :goto_41

    .line 14778
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14779
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14780
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_b

    .line 14784
    :cond_2f
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_41
    :goto_41
    return-void
.end method

.method public notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 8

    .line 14796
    const-string/jumbo v0, "unable to notify listener (posted): "

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 14797
    const-string/jumbo v2, "onNotificationPostedFull"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v2

    .line 14800
    :try_start_e
    invoke-interface {v1, p2, p3, v2, v3}, Landroid/service/notification/INotificationListener;->onNotificationPostedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;J)V
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_11} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p2

    .line 14808
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :catch_28
    move-exception p2

    .line 14806
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    const/4 v0, 0x1

    .line 14273
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 4

    .line 14289
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 14290
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 7

    .line 14845
    const-string/jumbo v0, "unable to notify listener (ranking update): "

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 14846
    const-string/jumbo v2, "onNotificationRankingUpdate"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v2

    .line 14849
    :try_start_e
    invoke-interface {v1, p2, v2, v3}, Landroid/service/notification/INotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;J)V
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_11} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p2

    .line 14853
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :catch_28
    move-exception p2

    .line 14851
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public notifyRankingUpdateLocked(Ljava/util/List;)V
    .registers 9

    if-eqz p1, :cond_a

    .line 14652
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 14656
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14657
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForUser()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14658
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 14657
    invoke-virtual {v3, v2, v4}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_13

    :cond_32
    if-eqz v0, :cond_5b

    .line 14663
    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5b

    .line 14665
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 14666
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14667
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v4

    .line 14666
    invoke-virtual {v5, v6, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_5d

    :cond_5b
    if-nez v0, :cond_13

    .line 14675
    :goto_5d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v3

    .line 14677
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_70
    return-void
.end method

.method public notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 15

    .line 14815
    const-string/jumbo v1, "unable to notify listener (removed): "

    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    move-object v2, v0

    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 14817
    :try_start_8
    iget v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    const-wide/32 v3, 0xa732a34

    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x14

    if-eq p5, v0, :cond_1b

    const/16 v0, 0x15

    if-ne p5, v0, :cond_1d

    :cond_1b
    const/16 p5, 0x11

    .line 14823
    :cond_1d
    iget v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    const-wide/32 v3, 0xba84d90

    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, 0x16

    if-ne p5, v0, :cond_2e

    const/16 p5, 0xa

    :cond_2e
    move v6, p5

    .line 14827
    const-string/jumbo p5, "onNotificationRemovedFull"

    invoke-virtual {p0, p1, p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 14830
    invoke-interface/range {v2 .. v8}, Landroid/service/notification/INotificationListener;->onNotificationRemovedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;IJ)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_3c} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    move-object p2, v0

    goto :goto_43

    :catch_40
    move-exception v0

    move-object p2, v0

    goto :goto_58

    .line 14838
    :goto_43
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    .line 14836
    :goto_58
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6c
    return-void
.end method

.method public notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
    .registers 18

    move/from16 v6, p2

    .line 14593
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isInLockDownMode(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 14597
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 14602
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 14604
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 14605
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move-object v0, v11

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14606
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v3

    invoke-virtual {v1, v7, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_29

    .line 14612
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v1

    const/16 v3, 0x1c

    const/16 v4, 0xe

    if-eqz v1, :cond_54

    if-eq v6, v4, :cond_54

    iget v1, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v1, v3, :cond_54

    goto :goto_29

    :cond_54
    if-ne v6, v4, :cond_5b

    .line 14619
    iget v1, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v1, v3, :cond_5b

    goto :goto_29

    :cond_5b
    if-eqz v9, :cond_67

    .line 14624
    iget v1, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 14625
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result v1

    if-nez v1, :cond_67

    const/4 v1, 0x1

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    :goto_68
    if-eqz v1, :cond_70

    if-nez v0, :cond_70

    .line 14627
    invoke-virtual {p0, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    :cond_70
    move-object v12, v0

    .line 14631
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_80

    move-object/from16 v5, p3

    goto :goto_81

    :cond_80
    move-object v5, v11

    :goto_81
    if-eqz v1, :cond_85

    move-object v3, v12

    goto :goto_86

    :cond_85
    move-object v3, v8

    .line 14634
    :goto_86
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    .line 14635
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v6, p2

    move-object v0, v12

    goto :goto_29

    .line 14639
    :cond_9d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyUnhiddenLocked(Ljava/util/List;)V
    .registers 6

    if-eqz p1, :cond_20

    .line 14725
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_20

    .line 14729
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 14732
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_20

    .line 14734
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 14735
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    :goto_20
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 11

    .line 14026
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 14028
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_74

    const/4 p1, 0x0

    move v1, p1

    .line 14033
    :goto_a
    :try_start_a
    array-length v2, p2

    if-ge v1, v2, :cond_4d

    .line 14034
    aget-object v2, p2, v1

    .line 14035
    aget v3, p3, v1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 14036
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1d
    if-ltz v4, :cond_4a

    .line 14037
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 14038
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 14039
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_47

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 14040
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_76

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 14046
    :cond_4d
    :goto_4d
    array-length v1, p2

    if-ge p1, v1, :cond_74

    .line 14047
    aget-object v1, p2, p1

    .line 14048
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5a
    if-ltz v2, :cond_71

    .line 14049
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 14050
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationListenerFilter;

    .line 14051
    new-instance v4, Landroid/content/pm/VersionedPackage;

    aget v5, p3, p1

    invoke-direct {v4, v1, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 14052
    invoke-virtual {v3, v4}, Landroid/service/notification/NotificationListenerFilter;->removePackage(Landroid/content/pm/VersionedPackage;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5a

    :cond_71
    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 14056
    :cond_74
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_a .. :try_end_77} :catchall_45

    throw p0
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 7

    .line 13931
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const/4 v3, -0x1

    iget v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystemUi:Z

    .line 13935
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 13937
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 13938
    :try_start_28
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v3

    .line 13939
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 13940
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_6b

    .line 13941
    iget v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 13943
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 13942
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isAppTrustedNotificationListenerService(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 13944
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter v1

    .line 13945
    :try_start_43
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    iget v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13946
    monitor-exit v1

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_50

    throw p0

    .line 13950
    :cond_53
    :goto_53
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mBinderSession:Landroid/app/IBinderSession;

    if-eqz p1, :cond_64

    .line 13952
    const-string/jumbo v1, "onListenerConnected"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->reportBinderTransactionStarting(Landroid/app/IBinderSession;Ljava/lang/String;)J

    move-result-wide v1

    .line 13953
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Landroid/app/IBinderSession;)V

    goto :goto_67

    :cond_64
    const/4 v4, 0x0

    const-wide/16 v1, 0x0

    .line 13970
    :goto_67
    :try_start_67
    invoke-interface {v0, v3, v4, v1, v2}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/IDispatchCompletionListener;J)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6a} :catch_6a

    :catch_6a
    return-void

    :catchall_6b
    move-exception p0

    .line 13940
    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 13979
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 13980
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 13981
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 13982
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 13985
    :cond_16
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter v0

    .line 13986
    :try_start_19
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13987
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2b

    .line 13989
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_2b
    move-exception p0

    .line 13987
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onStatusBarIconsBehaviorChanged(Z)V
    .registers 10

    .line 14237
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14238
    const-string/jumbo v1, "onStatusBarIconsBehaviorChanged"

    invoke-virtual {p0, v4, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDispatchReportingToken(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;)J

    move-result-wide v6

    .line 14240
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_2b
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 13994
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 13995
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 13996
    :try_start_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_2d

    .line 13997
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 13998
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 14001
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_28

    throw p0
.end method

.method public onUserUnlocked(I)V
    .registers 3

    .line 14006
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14007
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 14016
    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserUnlocked(I)V

    return-void
.end method

.method public prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Lcom/android/server/notification/NotificationRecord;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 14309
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->isInLockDownMode(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 14310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 14313
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14316
    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    .line 14317
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    goto :goto_31

    :catch_2b
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_1c6

    :cond_30
    move-object v5, v4

    .line 14318
    :goto_31
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v6, v7, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 14322
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    .line 14323
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 14324
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmRedactOtpNotifications(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v9

    .line 14327
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v4

    move-object v12, v11

    :goto_50
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1c5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 14328
    iget v14, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result v14

    const/16 v16, 0x0

    if-eqz v9, :cond_6d

    if-eqz v7, :cond_6d

    if-nez v14, :cond_6d

    const/16 v17, 0x1

    goto :goto_6f

    :cond_6d
    move/from16 v17, v16

    :goto_6f
    if-eqz v9, :cond_77

    if-eqz v8, :cond_77

    if-nez v14, :cond_77

    const/4 v14, 0x1

    goto :goto_79

    :cond_77
    move/from16 v14, v16

    .line 14331
    :goto_79
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v19, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v4

    invoke-virtual {v15, v3, v4, v13}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v5, :cond_97

    .line 14332
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move/from16 v20, v4

    .line 14333
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v4

    invoke-virtual {v15, v5, v4, v13}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_99

    const/4 v15, 0x1

    goto :goto_9b

    :cond_97
    move/from16 v20, v4

    :cond_99
    move/from16 v15, v16

    :goto_9b
    if-nez v15, :cond_a2

    if-nez v20, :cond_a2

    move/from16 v18, v7

    goto :goto_b2

    .line 14341
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v4

    move/from16 v18, v4

    const/16 v4, 0x1c

    if-eqz v18, :cond_b7

    move/from16 v18, v7

    iget v7, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v7, v4, :cond_b9

    :cond_b2
    :goto_b2
    move/from16 v7, v18

    move-object/from16 v4, v19

    goto :goto_50

    :cond_b7
    move/from16 v18, v7

    :cond_b9
    if-eqz v17, :cond_ca

    if-nez v19, :cond_ca

    .line 14347
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 14348
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v11, v4, v7}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    move-object v4, v7

    goto :goto_cc

    :cond_ca
    move-object/from16 v4, v19

    :goto_cc
    if-eqz v17, :cond_d3

    .line 14351
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    goto :goto_d7

    :cond_d3
    invoke-virtual {v6, v13}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    :goto_d7
    if-eqz v0, :cond_135

    .line 14359
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v19

    if-eqz v19, :cond_135

    move-object/from16 v19, v4

    .line 14360
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    const/high16 v22, 0x10000

    and-int v4, v4, v22

    if-lez v4, :cond_137

    if-eqz v3, :cond_137

    .line 14362
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_137

    .line 14363
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int v4, v4, v22

    if-lez v4, :cond_137

    .line 14365
    invoke-virtual {v13}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystemUi()Z

    move-result v4

    if-eqz v4, :cond_114

    .line 14366
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14367
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    .line 14368
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v13, v7, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 14374
    :cond_114
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_b2

    .line 14375
    iget-object v4, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "prepareNotifyPostedLocked: direct reply update, skipping post to "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14376
    invoke-virtual {v13}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 14375
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    :cond_135
    move-object/from16 v19, v4

    :cond_137
    if-nez p3, :cond_141

    .line 14386
    iget v4, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    if-lt v4, v7, :cond_141

    goto/16 :goto_b2

    .line 14390
    :cond_141
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v13}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    if-eqz v15, :cond_169

    if-nez v20, :cond_169

    if-eqz v14, :cond_154

    if-nez v12, :cond_154

    .line 14395
    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    move-object v12, v7

    :cond_154
    if-eqz v14, :cond_15b

    .line 14398
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    goto :goto_15f

    :cond_15b
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 14399
    :goto_15f
    new-instance v14, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda1;

    invoke-direct {v14, v1, v13, v7, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b2

    .line 14405
    :cond_169
    iget v7, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v14, -0x1

    if-ne v7, v14, :cond_170

    move/from16 v7, v16

    .line 14407
    :cond_170
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_178} :catch_2b

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    :try_start_17c
    invoke-virtual {v14, v5, v0, v15, v7}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 14409
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v15, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 14411
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    .line 14412
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x0

    move/from16 v21, v7

    move-object/from16 v20, v14

    .line 14409
    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    if-eqz v17, :cond_1ae

    if-nez v19, :cond_1ae

    .line 14416
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 14417
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v11, v14, v7}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v19, v7

    goto :goto_1ae

    :catch_1ac
    move-exception v0

    goto :goto_1c6

    :cond_1ae
    :goto_1ae
    if-eqz v17, :cond_1b5

    .line 14421
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    goto :goto_1b9

    :cond_1b5
    invoke-virtual {v6, v13}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 14422
    :goto_1b9
    new-instance v14, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda2;

    invoke-direct {v14, v1, v13, v7, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1c1} :catch_1ac

    move-object/from16 v5, v16

    goto/16 :goto_b2

    :cond_1c5
    return-object v2

    .line 14425
    :goto_1c6
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify listeners for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public readExtraTag(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 11

    .line 14074
    const-string/jumbo v0, "request_listeners"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 14075
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p1

    .line 14076
    :goto_d
    invoke-static {p2, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 14077
    const-string v0, "listener"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_d

    .line 14080
    :cond_20
    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 14081
    const-string v1, "component"

    .line 14082
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14081
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 14086
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 14087
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    const/16 v4, 0xf

    .line 14088
    :cond_3c
    :goto_3c
    invoke-static {p2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 14089
    const-string v5, "allowed"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 14090
    const-string/jumbo v4, "types"

    invoke-static {p2, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    goto :goto_3c

    .line 14091
    :cond_56
    const-string v5, "disallowed"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 14092
    const-string/jumbo v5, "pkg"

    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14093
    const-string/jumbo v6, "uid"

    invoke-static {p2, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 14094
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 14095
    new-instance v7, Landroid/content/pm/VersionedPackage;

    invoke-direct {v7, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 14096
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 14100
    :cond_7f
    new-instance v3, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v3, v4, v2}, Landroid/service/notification/NotificationListenerFilter;-><init>(ILandroid/util/ArraySet;)V

    .line 14102
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 14103
    :try_start_87
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14104
    monitor-exit v2

    goto/16 :goto_d

    :catchall_97
    move-exception p0

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_97

    throw p0

    :cond_9a
    return-void
.end method

.method public redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 13

    .line 14476
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    const-class v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_21

    .line 14480
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 14482
    :cond_21
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have ApplicationInfo. Did you pass in a \'cloneLight\' notification?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14484
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 14486
    :goto_40
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const v2, 0x1040953

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14487
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 14488
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    const/4 v5, 0x0

    .line 14489
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 14490
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14491
    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 14492
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 14493
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    .line 14494
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 14495
    new-array v4, v5, [Landroid/app/Notification$Action;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 14496
    iget-object v4, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_97

    .line 14497
    :goto_74
    iget-object v4, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v4

    if-ge v5, v4, :cond_97

    .line 14498
    new-instance v4, Landroid/app/Notification$Action$Builder;

    iget-object v7, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v7, v7, v5

    invoke-direct {v4, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/app/Notification$Action;)V

    .line 14499
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    .line 14500
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const v8, 0x1040952

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 14501
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 14505
    :cond_97
    const-class v4, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v3, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_c2

    .line 14506
    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v4

    .line 14507
    new-instance v7, Landroid/app/Notification$MessagingStyle;

    invoke-direct {v7, v4}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 14508
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    .line 14509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v1, v9, v10, v4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    .line 14508
    invoke-virtual {v7, v8}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    .line 14510
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 14512
    :cond_c2
    const-class v1, Landroid/app/Notification$BigTextStyle;

    .line 14513
    invoke-virtual {v3, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 14514
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 14515
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 14516
    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 14517
    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 14518
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 14521
    :cond_e1
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 14524
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 14525
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14527
    :cond_f4
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14528
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.textLines"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14529
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14530
    invoke-virtual {p1, p0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public final reportBinderTransactionStarting(Landroid/app/IBinderSession;Ljava/lang/String;)J
    .registers 3

    .line 13911
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBinderSession;->binderTransactionStarting(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p1

    .line 13913
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string p2, "Local call threw a remote exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V
    .registers 4

    .line 14150
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14151
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14152
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 14224
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 14226
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z
    .registers 8

    .line 13810
    invoke-super/range {p0 .. p5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p0, 0x0

    return p0

    .line 13816
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13818
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-nez p4, :cond_2c

    if-ltz p3, :cond_2c

    .line 13820
    iget-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter p5

    .line 13821
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13822
    monitor-exit p5

    goto :goto_2c

    :catchall_28
    move-exception v0

    move-object p0, v0

    monitor-exit p5
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_28

    throw p0

    :cond_2c
    :goto_2c
    if-eqz p4, :cond_48

    if-ltz p3, :cond_48

    .line 13824
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isAppTrustedNotificationListenerService(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 13825
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter p1

    .line 13826
    :try_start_39
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13827
    monitor-exit p1

    goto :goto_48

    :catchall_44
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_44

    throw p0

    .line 13831
    :cond_48
    :goto_48
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x40000000    # 2.0f

    .line 13833
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 13834
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 13831
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public shouldReflectToSettings()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 14

    .line 14555
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_5c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v7, v4

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    if-eqz p2, :cond_2a

    .line 14558
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_a

    :catch_28
    move-exception v0

    goto :goto_5d

    .line 14562
    :cond_2a
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_37

    iget v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_37

    goto :goto_a

    .line 14566
    :cond_37
    iget v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3e

    move v9, v2

    goto :goto_3f

    :cond_3e
    move v9, v4

    :goto_3f
    if-eqz p2, :cond_4e

    .line 14570
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 14571
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 14570
    invoke-virtual {v4, v7, v6, v5, v9}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    goto :goto_a

    .line 14576
    :cond_4e
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 14577
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 14576
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_28

    goto :goto_a

    :cond_5c
    return-void

    .line 14582
    :goto_5d
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6e

    const-string p2, "grant"

    goto :goto_71

    :cond_6e
    const-string/jumbo p2, "revoke"

    :goto_71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Uri permissions to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public writeExtraXmlTags(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9

    .line 14111
    const-string/jumbo v0, "request_listeners"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14112
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14114
    :try_start_a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 14115
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationListenerFilter;

    .line 14116
    const-string v5, "listener"

    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14117
    const-string v5, "component"

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/ComponentName;

    .line 14118
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 14117
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14119
    const-string/jumbo v5, "user"

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v5, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 14121
    const-string v3, "allowed"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14122
    const-string/jumbo v3, "types"

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v5

    invoke-static {p1, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 14123
    const-string v3, "allowed"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14125
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getDisallowedPackages()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/VersionedPackage;

    .line 14126
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 14127
    const-string v5, "disallowed"

    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14128
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14129
    const-string/jumbo v5, "uid"

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 14130
    const-string v4, "disallowed"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_64

    :catchall_99
    move-exception p0

    goto :goto_aa

    .line 14134
    :cond_9b
    const-string v3, "listener"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_14

    .line 14136
    :cond_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a .. :try_end_a3} :catchall_99

    .line 14138
    const-string/jumbo p0, "request_listeners"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 14136
    :goto_aa
    :try_start_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_99

    throw p0
.end method
