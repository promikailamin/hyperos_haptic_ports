.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DevicePolicyManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Looper;Landroid/telephony/SubscriptionManager;I)V
    .registers 5

    .line 24242
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userId:I

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 9

    .line 24245
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 24247
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v2

    .line 24249
    array-length v4, v2

    :goto_10
    if-ge v3, v4, :cond_35

    aget v5, v2, v3

    .line 24250
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 24251
    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v6

    if-eqz v6, :cond_27

    .line 24253
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userId:I

    if-eq v6, v7, :cond_32

    goto :goto_27

    :catchall_25
    move-exception v2

    goto :goto_3d

    .line 24254
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userId:I

    .line 24255
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 24254
    invoke-virtual {v6, v5, v7}, Landroid/telephony/SubscriptionManager;->setSubscriptionUserHandle(ILandroid/os/UserHandle;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_25

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 24259
    :cond_35
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :goto_3d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 24260
    throw v2
.end method
