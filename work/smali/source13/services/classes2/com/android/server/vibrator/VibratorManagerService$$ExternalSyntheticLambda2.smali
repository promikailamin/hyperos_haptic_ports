.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Landroid/os/VibrationEffect;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/os/VibrationEffect;

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->lambda$fixupAlwaysOnEffectsLocked$2(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
