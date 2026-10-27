.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .line 1743
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1746
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_10c

    :pswitch_8
    goto/16 :goto_10b

    .line 1760
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserMayRequestUnlock(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1761
    goto/16 :goto_10b

    .line 1816
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshTrustableTimers(Lcom/android/server/trust/TrustManagerService;I)V

    goto/16 :goto_10b

    .line 1757
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_25

    move v2, v3

    :cond_25
    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserRequestedUnlock(Lcom/android/server/trust/TrustManagerService;IZ)V

    .line 1758
    goto/16 :goto_10b

    .line 1810
    :pswitch_2a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_2f

    move v2, v3

    :cond_2f
    move v0, v2

    .line 1812
    .local v0, "shouldOverride":Z
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_37

    sget-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    goto :goto_39

    :cond_37
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 1813
    .local v1, "timeoutType":Lcom/android/server/trust/TrustManagerService$TimeoutType;
    :goto_39
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mhandleScheduleTrustTimeout(Lcom/android/server/trust/TrustManagerService;ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V

    .line 1814
    goto/16 :goto_10b

    .line 1802
    .end local v0    # "shouldOverride":Z
    .end local v1    # "timeoutType":Lcom/android/server/trust/TrustManagerService$TimeoutType;
    :pswitch_40
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_4c

    .line 1803
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mupdateTrust(Lcom/android/server/trust/TrustManagerService;IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 1805
    :cond_4c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "except"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1807
    .local v0, "unlockedUser":I
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;II)V

    .line 1808
    goto/16 :goto_10b

    .line 1763
    .end local v0    # "unlockedUser":I
    :pswitch_61
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockLockout(Lcom/android/server/trust/TrustManagerService;II)V

    .line 1764
    goto/16 :goto_10b

    .line 1785
    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$msetDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V

    .line 1786
    goto/16 :goto_10b

    .line 1789
    :pswitch_75
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1790
    :try_start_7c
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 1791
    .local v1, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_af

    .line 1793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_88
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_ae

    .line 1794
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1795
    .local v2, "userId":I
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 1796
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v3, v4, :cond_ab

    .line 1797
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 1793
    .end local v2    # "userId":I
    .end local v3    # "value":Z
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 1800
    .end local v0    # "i":I
    :cond_ae
    goto :goto_10b

    .line 1791
    .end local v1    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    :catchall_af
    move-exception v1

    :try_start_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v1

    .line 1780
    :pswitch_b2
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmCurrentUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1781
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    .line 1782
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1783
    goto :goto_10b

    .line 1777
    :pswitch_c8
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1778
    goto :goto_10b

    .line 1771
    :pswitch_d0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchTrustableDowngrade(Lcom/android/server/trust/TrustManagerService;)V

    .line 1772
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1773
    goto :goto_10b

    .line 1766
    :pswitch_df
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1768
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1769
    goto :goto_10b

    .line 1754
    :pswitch_ea
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_f1

    move v2, v3

    :cond_f1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockAttempt(Lcom/android/server/trust/TrustManagerService;ZI)V

    .line 1755
    goto :goto_10b

    .line 1751
    :pswitch_f7
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mremoveListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1752
    goto :goto_10b

    .line 1748
    :pswitch_101
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$maddListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1749
    nop

    .line 1819
    :goto_10b
    return-void

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_101
        :pswitch_f7
        :pswitch_ea
        :pswitch_df
        :pswitch_8
        :pswitch_d0
        :pswitch_c8
        :pswitch_c8
        :pswitch_b2
        :pswitch_75
        :pswitch_c8
        :pswitch_6c
        :pswitch_61
        :pswitch_40
        :pswitch_2a
        :pswitch_1c
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method
