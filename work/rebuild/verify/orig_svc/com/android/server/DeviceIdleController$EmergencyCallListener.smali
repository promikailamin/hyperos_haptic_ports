.class public Lcom/android/server/DeviceIdleController$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public volatile mIsEmergencyCallActive:Z

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 2455
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$EmergencyCallListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public isEmergencyCallActive()Z
    .registers 1

    .line 2484
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    return p0
.end method

.method public onCallStateChanged(I)V
    .registers 5

    .line 2473
    invoke-static {}, Lcom/android/server/DeviceIdleController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged(): state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p1, :cond_33

    .line 2475
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    .line 2476
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 2477
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 2478
    :try_start_29
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2479
    monitor-exit p1

    return-void

    :catchall_30
    move-exception p0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    return-void
.end method

.method public onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5

    const/4 p1, 0x1

    .line 2463
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 2464
    invoke-static {}, Lcom/android/server/DeviceIdleController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "DeviceIdleController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOutgoingEmergencyCall(): subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_20
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 2466
    :try_start_23
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fputmActiveReason(Lcom/android/server/DeviceIdleController;I)V

    .line 2467
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    const-string p2, "emergency call"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2468
    monitor-exit p1

    return-void

    :catchall_37
    move-exception p0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw p0
.end method
