.class final Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceBatteryListenerDelegate"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$EFmjYNCJERYjTSX75R9ktl_HLAc(Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;Landroid/hardware/input/IInputDeviceBatteryState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->lambda$notifyBatteryStateChanged$0(Landroid/hardware/input/IInputDeviceBatteryState;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/input/InputManager$InputDeviceBatteryListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 664
    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 665
    return-void
.end method

.method private synthetic blacklist lambda$notifyBatteryStateChanged$0(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .registers 9

    .line 669
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    iget v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v2, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    new-instance v4, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    iget-boolean v5, p1, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v6, p1, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-direct {v4, v5, v6, p1}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/input/InputManager$InputDeviceBatteryListener;->onBatteryStateChanged(IJLandroid/hardware/BatteryState;)V

    return-void
.end method


# virtual methods
.method blacklist notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .registers 4

    .line 668
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;Landroid/hardware/input/IInputDeviceBatteryState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method
