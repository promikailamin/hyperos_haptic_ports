.class public Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;


# instance fields
.field public mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3184
    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public addControlPoint(FFJ)V
    .registers 5

    .line 3194
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    return-void
.end method

.method public build()Landroid/os/VibrationEffect;
    .registers 1

    .line 3205
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public reset(F)V
    .registers 3

    .line 3199
    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 3200
    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    return-void
.end method

.method public setInitialSharpness(F)V
    .registers 2

    .line 3189
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    return-void
.end method
