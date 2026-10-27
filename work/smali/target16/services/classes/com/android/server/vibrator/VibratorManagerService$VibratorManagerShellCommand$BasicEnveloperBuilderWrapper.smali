.class public Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;


# instance fields
.field public mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3158
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public addControlPoint(FFJ)V
    .registers 5

    .line 3168
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method public build()Landroid/os/VibrationEffect;
    .registers 1

    .line 3179
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public reset(F)V
    .registers 3

    .line 3173
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 3174
    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method public setInitialSharpness(F)V
    .registers 2

    .line 3163
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method
