.class Lcom/android/server/am/AppRestrictionController$NotificationHelper;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$NotificationHelper$NotificationType;
    }
.end annotation


# static fields
.field static final ACTION_FGS_MANAGER_TRAMPOLINE:Ljava/lang/String; = "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

.field static final ATTR_LAST_BATTERY_NOTIFICATION_TIME:Ljava/lang/String; = "last_batt_noti_ts"

.field static final ATTR_LAST_LONG_FGS_NOTIFICATION_TIME:Ljava/lang/String; = "last_long_fgs_noti_ts"

.field static final GROUP_KEY:Ljava/lang/String; = "com.android.app.abusive_bg_apps"

.field static final NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

.field static final NOTIFICATION_TYPE_ABUSIVE_CURRENT_DRAIN:I = 0x0

.field static final NOTIFICATION_TYPE_LAST:I = 0x2

.field static final NOTIFICATION_TYPE_LONG_RUNNING_FGS:I = 0x1

.field static final NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

.field static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field static final SUMMARY_NOTIFICATION_ID:I = 0xc1b2508


# instance fields
.field private final mActionButtonReceiver:Landroid/content/BroadcastReceiver;

.field private final mBgController:Lcom/android/server/am/AppRestrictionController;

.field private final mContext:Landroid/content/Context;

.field private final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationIDStepper:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mSettingsLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2396
    const-string v0, "Abusive current drain"

    const-string v1, "Long-running FGS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

    .line 2401
    const-string/jumbo v0, "last_batt_noti_ts"

    const-string/jumbo v1, "last_long_fgs_noti_ts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 4
    .param p1, "controller"    # Lcom/android/server/am/AppRestrictionController;

    .line 2455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2434
    new-instance v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;-><init>(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 2452
    const v0, 0xc1b2509

    iput v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    .line 2456
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2457
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2458
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2459
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mLock:Ljava/lang/Object;

    .line 2460
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    .line 2461
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 2462
    return-void
.end method

.method static notificationTimeAttrToType(Ljava/lang/String;)I
    .registers 4
    .param p0, "attr"    # Ljava/lang/String;

    .line 2407
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_2c

    :cond_9
    goto :goto_20

    :sswitch_a
    const-string/jumbo v0, "last_batt_noti_ts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_21

    :sswitch_15
    const-string/jumbo v0, "last_long_fgs_noti_ts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_21

    :goto_20
    const/4 v0, -0x1

    :goto_21
    packed-switch v0, :pswitch_data_36

    .line 2413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2411
    :pswitch_2a
    return v1

    .line 2409
    :pswitch_2b
    return v2

    :sswitch_data_2c
    .sparse-switch
        -0x44f6aebf -> :sswitch_15
        0x10bb131 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method static notificationTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "notificationType"    # I

    .line 2424
    sget-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method static notificationTypeToTimeAttr(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 2417
    sget-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private postSummaryNotification(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "targetUser"    # Landroid/os/UserHandle;

    .line 2682
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2684
    const-string v1, "com.android.app.abusive_bg_apps"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 2686
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2687
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 2688
    const v2, 0x106001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2690
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2691
    .local v0, "summary":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const v3, 0xc1b2508

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2692
    return-void
.end method


# virtual methods
.method cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2709
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2710
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2711
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 2712
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-eqz v1, :cond_19

    .line 2713
    const/4 v2, 0x1

    .line 2714
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getNotificationId(I)I

    move-result v2

    .line 2715
    .local v2, "notificationId":I
    if-lez v2, :cond_19

    .line 2716
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2719
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v2    # "notificationId":I
    :cond_19
    monitor-exit v0

    .line 2720
    return-void

    .line 2719
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2695
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2696
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2697
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 2698
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-eqz v1, :cond_19

    .line 2699
    const/4 v2, 0x0

    .line 2700
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getNotificationId(I)I

    move-result v2

    .line 2701
    .local v2, "notificationId":I
    if-lez v2, :cond_19

    .line 2702
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2705
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v2    # "notificationId":I
    :cond_19
    monitor-exit v0

    .line 2706
    return-void

    .line 2705
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method getNotificationIdIfNecessary(ILjava/lang/String;I)I
    .registers 13
    .param p1, "notificationType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2591
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2592
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2593
    invoke-virtual {v1, p3, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 2594
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 2595
    monitor-exit v0

    return v2

    .line 2598
    :cond_10
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v3

    .line 2599
    .local v3, "now":J
    nop

    .line 2600
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v5

    .line 2601
    .local v5, "lastNotificationShownTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2c

    .line 2602
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->getNotificationMinInterval(I)J

    move-result-wide v7

    add-long/2addr v7, v5

    cmp-long v7, v7, v3

    if-lez v7, :cond_2c

    .line 2608
    monitor-exit v0

    return v2

    .line 2610
    :cond_2c
    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJ)V

    .line 2611
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getNotificationId(I)I

    move-result v2

    .line 2612
    .local v2, "notificationId":I
    if-gtz v2, :cond_3f

    .line 2613
    iget v7, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    move v2, v7

    .line 2614
    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setNotificationId(II)V

    .line 2623
    :cond_3f
    monitor-exit v0

    return v2

    .line 2624
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v2    # "notificationId":I
    .end local v3    # "now":J
    .end local v5    # "lastNotificationShownTime":J
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method getNotificationMinInterval(I)J
    .registers 4
    .param p1, "notificationType"    # I

    .line 2579
    packed-switch p1, :pswitch_data_18

    .line 2585
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2583
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    return-wide v0

    .line 2581
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    return-wide v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method onSystemReady()V
    .registers 7

    .line 2465
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v4

    const-string v3, "android.permission.MANAGE_ACTIVITY_TASKS"

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 2468
    return-void
.end method

.method postLongRunningFgsIfNecessary(Ljava/lang/String;I)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2527
    move-object/from16 v8, p0

    move/from16 v7, p2

    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2529
    invoke-virtual {v0, v7}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v11

    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2532
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppFGSTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v14

    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2537
    invoke-virtual {v0, v7}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0

    .line 2536
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result v18

    .line 2540
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v21

    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2541
    invoke-virtual {v0, v7}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v22

    .line 2527
    const/16 v9, 0x1b9

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v10, p2

    invoke-static/range {v9 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 2543
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    if-nez v0, :cond_45

    .line 2547
    return-void

    .line 2549
    :cond_45
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    if-nez v0, :cond_5a

    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2550
    move-object/from16 v9, p1

    invoke-virtual {v0, v9, v7}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2554
    return-void

    .line 2549
    :cond_5a
    move-object/from16 v9, p1

    .line 2557
    :cond_5c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2558
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2560
    iget-object v1, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 2572
    .end local v0    # "intent":Landroid/content/Intent;
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x1

    const v2, 0x1040662

    const v3, 0x104064e

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v4, v10

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postNotificationIfNecessary(IIILandroid/app/PendingIntent;Ljava/lang/String;I[Landroid/app/Notification$Action;)V

    .line 2576
    return-void
.end method

.method postNotification(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;[Landroid/app/Notification$Action;)V
    .registers 14
    .param p1, "notificationId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "icon"    # Landroid/graphics/drawable/Icon;
    .param p7, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p8, "actions"    # [Landroid/app/Notification$Action;

    .line 2651
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2652
    .local v0, "targetUser":Landroid/os/UserHandle;
    invoke-direct {p0, v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postSummaryNotification(Landroid/os/UserHandle;)V

    .line 2654
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2656
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2657
    const-string v2, "com.android.app.abusive_bg_apps"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2658
    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2659
    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 2660
    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2662
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2663
    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2664
    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2665
    .local v1, "notificationBuilder":Landroid/app/Notification$Builder;
    if-eqz p6, :cond_4e

    .line 2666
    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 2668
    :cond_4e
    if-eqz p8, :cond_5c

    .line 2669
    array-length v2, p8

    const/4 v3, 0x0

    :goto_52
    if-ge v3, v2, :cond_5c

    aget-object v4, p8, v3

    .line 2670
    .local v4, "action":Landroid/app/Notification$Action;
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 2669
    .end local v4    # "action":Landroid/app/Notification$Action;
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 2674
    :cond_5c
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 2676
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1, v2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2679
    return-void
.end method

.method postNotificationIfNecessary(IIILandroid/app/PendingIntent;Ljava/lang/String;I[Landroid/app/Notification$Action;)V
    .registers 27
    .param p1, "notificationType"    # I
    .param p2, "titleRes"    # I
    .param p3, "messageRes"    # I
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "actions"    # [Landroid/app/Notification$Action;

    .line 2630
    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move/from16 v11, p1

    move/from16 v12, p6

    invoke-virtual {v9, v11, v10, v12}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->getNotificationIdIfNecessary(ILjava/lang/String;I)I

    move-result v13

    .line 2631
    .local v13, "notificationId":I
    if-gtz v13, :cond_f

    .line 2632
    return-void

    .line 2635
    :cond_f
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v14

    .line 2636
    .local v14, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 2637
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const-wide/32 v2, 0xc8000

    const/16 v4, 0x3e8

    .line 2638
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2637
    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2639
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2640
    .local v16, "title":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2641
    if-eqz v8, :cond_40

    invoke-virtual {v8, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_41

    :cond_40
    move-object v3, v10

    :goto_41
    aput-object v3, v1, v2

    .line 2640
    move/from16 v5, p3

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 2642
    .local v17, "message":Ljava/lang/String;
    if-eqz v8, :cond_52

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v10, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    move-object v6, v0

    .line 2644
    .local v6, "icon":Landroid/graphics/drawable/Icon;
    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v7, p4

    move-object/from16 v18, v8

    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v18, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postNotification(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;[Landroid/app/Notification$Action;)V

    .line 2646
    return-void
.end method

.method postRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2471
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    if-nez v0, :cond_11

    .line 2475
    return-void

    .line 2478
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 2479
    .local v11, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-static {v1, v9, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2480
    const/high16 v0, 0x14000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2482
    iget-object v2, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0xc000000

    const/4 v6, 0x0

    .line 2484
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 2482
    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 2485
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v13, 0x0

    .line 2486
    .local v13, "actions":[Landroid/app/Notification$Action;
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2487
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result v14

    .line 2488
    .local v14, "hasForegroundServices":Z
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2489
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result v15

    .line 2490
    .local v15, "hasForegroundServiceNotifications":Z
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    if-nez v0, :cond_58

    .line 2493
    if-eqz v14, :cond_58

    if-eqz v15, :cond_58

    .line 2497
    return-void

    .line 2519
    :cond_58
    const/4 v1, 0x0

    const v2, 0x1040661

    const v3, 0x104064d

    move-object/from16 v0, p0

    move-object v4, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postNotificationIfNecessary(IIILandroid/app/PendingIntent;Ljava/lang/String;I[Landroid/app/Notification$Action;)V

    .line 2523
    return-void
.end method
