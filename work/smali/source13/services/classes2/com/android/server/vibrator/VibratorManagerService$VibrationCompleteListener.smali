.class final Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
.implements Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VibrationCompleteListener"
.end annotation


# instance fields
.field private mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/vibrator/VibratorManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1312
    return-void
.end method


# virtual methods
.method public onComplete(IJ)V
    .registers 5
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J

    .line 1324
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 1325
    .local v0, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v0, :cond_d

    .line 1326
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJ)V

    .line 1328
    :cond_d
    return-void
.end method

.method public onComplete(J)V
    .registers 4
    .param p1, "vibrationId"    # J

    .line 1316
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 1317
    .local v0, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v0, :cond_d

    .line 1318
    invoke-static {v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    .line 1320
    :cond_d
    return-void
.end method
