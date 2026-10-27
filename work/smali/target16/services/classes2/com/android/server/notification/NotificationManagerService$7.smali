.class public Lcom/android/server/notification/NotificationManagerService$7;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$QXEqRFFZuiEhMhYYoGBg0WaLm6A(Lcom/android/server/notification/NotificationManagerService$7;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$7;->lambda$onAutomaticRuleStatusChanged$3(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHye2YEb9dHSm5-rHBLZ7FUKQNA(Lcom/android/server/notification/NotificationManagerService$7;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$7;->lambda$onZenModeChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VjbV3h_fMCv_o_qi-4PJ_RFUaNU(Lcom/android/server/notification/NotificationManagerService$7;Landroid/app/NotificationManager$Policy;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$7;->lambda$onPolicyChanged$1(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2AhFZDO8MRPFYn0IvCKeaGtmDQ(Lcom/android/server/notification/NotificationManagerService$7;Landroid/app/NotificationManager$Policy;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$7;->lambda$onConsolidatedPolicyChanged$2(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 2863
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAutomaticRuleStatusChanged$3(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 2915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2916
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2917
    const-string p1, "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2918
    const-string p1, "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 2919
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2920
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$onConsolidatedPolicyChanged$2(Landroid/app/NotificationManager$Policy;)V
    .registers 4

    .line 2904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2905
    const-string v1, "android.app.extra.NOTIFICATION_POLICY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2906
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V

    .line 2908
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public final synthetic lambda$onPolicyChanged$1(Landroid/app/NotificationManager$Policy;)V
    .registers 4

    .line 2894
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2895
    const-string v1, "android.app.extra.NOTIFICATION_POLICY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2896
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V

    .line 2897
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public final synthetic lambda$onZenModeChanged$0()V
    .registers 5

    .line 2879
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2880
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 2882
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    .line 2880
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2884
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2885
    :try_start_26
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2886
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_34

    .line 2887
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void

    :catchall_34
    move-exception p0

    .line 2886
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 2914
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda2;

    move-object v1, p0

    move v5, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$7;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onConfigChanged()V
    .registers 4

    .line 2866
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2868
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ZEN_CONFIGURATION_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2871
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    .line 2868
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .registers 3

    .line 2903
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$7;Landroid/app/NotificationManager$Policy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .registers 3

    .line 2893
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$7;Landroid/app/NotificationManager$Policy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onZenModeChanged()V
    .registers 2

    .line 2878
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$7;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
