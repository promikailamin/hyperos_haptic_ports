.class Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;
.super Landroid/app/usage/NetworkStatsManager$UsageCallback;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsCallback"
.end annotation


# instance fields
.field private mIsAnyCallbackReceived:Z

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 1269
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;-><init>()V

    .line 1270
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public isAnyCallbackReceived()Z
    .registers 2

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    return v0
.end method

.method public onThresholdReached(ILjava/lang/String;)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 1276
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1277
    :try_start_8
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1278
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1279
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1280
    monitor-exit v0

    .line 1281
    return-void

    .line 1280
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method
