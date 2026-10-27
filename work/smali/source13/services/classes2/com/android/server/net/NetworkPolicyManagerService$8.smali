.class Lcom/android/server/net/NetworkPolicyManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1230
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1238
    .local v1, "userId":I
    if-ne v1, v2, :cond_e

    return-void

    .line 1240
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_60

    :cond_17
    goto :goto_2b

    :sswitch_18
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v2, v5

    goto :goto_2b

    :sswitch_22
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v2, v4

    :goto_2b
    packed-switch v2, :pswitch_data_6a

    goto :goto_5e

    .line 1243
    :pswitch_2f
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1246
    :try_start_34
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, v1, v5, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZZ)Z

    .line 1249
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmMeteredRestrictedUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1250
    const-string v3, "android.intent.action.USER_ADDED"

    if-ne v0, v3, :cond_4b

    .line 1252
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$maddDefaultRestrictBackgroundAllowlistUidsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    .line 1255
    :cond_4b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_5b

    .line 1256
    :try_start_50
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForGlobalChangeAL(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 1257
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_58

    .line 1258
    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_5b

    goto :goto_5e

    .line 1257
    :catchall_58
    move-exception v4

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "userId":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$8;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_5a
    throw v4

    .line 1258
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "userId":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$8;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_5b
    move-exception v3

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    throw v3

    .line 1261
    :goto_5e
    return-void

    nop

    :sswitch_data_60
    .sparse-switch
        -0x7ad942ef -> :sswitch_22
        0x42dd01f1 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method
