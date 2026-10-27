.class Lcom/android/server/tare/InternalResourceService$ConfigObserver;
.super Landroid/database/ContentObserver;
.source "InternalResourceService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigObserver"
.end annotation


# static fields
.field private static final KEY_DC_ENABLE_TARE:Ljava/lang/String; = "enable_tare"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method constructor <init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 1007
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    .line 1008
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1009
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 1010
    return-void
.end method

.method private updateEconomicPolicy()V
    .registers 9

    .line 1086
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1087
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1088
    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v1

    .line 1089
    .local v1, "initialLimit":J
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v3

    .line 1090
    .local v3, "hardLimit":J
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tare/CompleteEconomicPolicy;->tearDown()V

    .line 1091
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    new-instance v6, Lcom/android/server/tare/CompleteEconomicPolicy;

    iget-object v7, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {v6, v7}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-static {v5, v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy;)V

    .line 1092
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmBootPhase(Lcom/android/server/tare/InternalResourceService;)I

    move-result v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_87

    .line 1093
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/tare/CompleteEconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 1094
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_6b

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    .line 1096
    invoke-virtual {v5}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_7e

    .line 1098
    :cond_6b
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v6

    .line 1099
    invoke-virtual {v6}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v6

    .line 1098
    invoke-virtual {v5, v6, v7}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    .line 1101
    :cond_7e
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    .line 1103
    .end local v1    # "initialLimit":J
    .end local v3    # "hardLimit":J
    :cond_87
    monitor-exit v0

    .line 1104
    return-void

    .line 1103
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method private updateEnabledStatus()V
    .registers 5

    .line 1070
    const-string/jumbo v0, "tare"

    const-string v1, "enable_tare"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1072
    .local v0, "isTareEnabledDC":Z
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 1073
    nop

    .line 1072
    invoke-static {v3, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    move v2, v3

    :cond_15
    move v1, v2

    .line 1074
    .local v1, "isTareEnabled":Z
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v2

    if-eq v2, v1, :cond_40

    .line 1075
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2, v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmIsEnabled(Lcom/android/server/tare/InternalResourceService;Z)V

    .line 1076
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1077
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$msetupEverything(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_36

    .line 1079
    :cond_31
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mtearDownEverything(Lcom/android/server/tare/InternalResourceService;)V

    .line 1081
    :goto_36
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1083
    :cond_40
    return-void
.end method


# virtual methods
.method getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;
    .registers 3

    .line 1029
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "tare"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    return-object v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1034
    const-string v0, "enable_tare"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1035
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    goto :goto_2d

    .line 1036
    :cond_10
    const-string/jumbo v0, "tare_alarm_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1037
    const-string/jumbo v0, "tare_job_scheduler_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1038
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEconomicPolicy()V

    .line 1040
    :cond_2d
    :goto_2d
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "economicPolicyUpdated":Z
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1046
    :try_start_8
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1047
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_1f

    .line 1048
    goto :goto_10

    .line 1050
    :cond_1f
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_56

    :cond_27
    goto :goto_31

    :pswitch_28
    const-string v5, "enable_tare"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v4, 0x0

    :goto_31
    packed-switch v4, :pswitch_data_5c

    .line 1055
    if-nez v0, :cond_4f

    const-string v4, "am"

    goto :goto_3d

    .line 1052
    :pswitch_39
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    .line 1053
    goto :goto_4f

    .line 1056
    :goto_3d
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "js"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1057
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEconomicPolicy()V

    .line 1058
    const/4 v0, 0x1

    .line 1061
    .end local v3    # "name":Ljava/lang/String;
    :cond_4f
    :goto_4f
    goto :goto_10

    .line 1062
    :cond_50
    monitor-exit v1

    .line 1063
    return-void

    .line 1062
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_52

    throw v2

    nop

    :pswitch_data_56
    .packed-switch -0x552a3d64
        :pswitch_28
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_39
    .end packed-switch
.end method

.method public start()V
    .registers 4

    .line 1013
    nop

    .line 1014
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "tare"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 1016
    const-string v1, "enable_tare"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1015
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 1018
    const-string/jumbo v1, "tare_alarm_manager_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1017
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 1020
    const-string/jumbo v1, "tare_job_scheduler_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1019
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1022
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    .line 1023
    return-void
.end method
