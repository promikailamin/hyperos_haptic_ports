.class public final Lcom/android/server/vibrator/VibratorManagerService$HalListener;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/HalVibrator$Callbacks;
.implements Lcom/android/server/vibrator/HalVibratorManager$Callbacks;


# instance fields
.field public mServiceRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 3

    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$HalListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSyncedVibrationComplete(J)V
    .registers 3

    .line 2130
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$HalListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_d

    .line 2132
    invoke-static {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    :cond_d
    return-void
.end method

.method public onVibrationSessionComplete(J)V
    .registers 3

    .line 2138
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$HalListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_d

    .line 2140
    invoke-static {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationSessionComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    :cond_d
    return-void
.end method

.method public onVibrationStepComplete(IJJ)V
    .registers 12

    .line 2146
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$HalListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz v0, :cond_11

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2148
    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJJ)V

    :cond_11
    return-void
.end method
