.class final Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LidSwitchBooleanSupplier"
.end annotation


# instance fields
.field private final mExpectedOpen:Z

.field final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V
    .registers 3
    .param p2, "expectedOpen"    # Z

    .line 488
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-boolean p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    .line 490
    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 495
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 499
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    monitor-exit v0

    return v1

    .line 496
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Have not received lid switch value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
    throw v1

    .line 500
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method
