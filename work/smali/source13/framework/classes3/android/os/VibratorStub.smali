.class public interface abstract Landroid/os/VibratorStub;
.super Ljava/lang/Object;
.source "VibratorStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/os/VibratorStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Landroid/os/VibratorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorStub;

    sput-object v0, Landroid/os/VibratorStub;->sInstance:Landroid/os/VibratorStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/os/VibratorStub;
    .registers 1

    .line 13
    sget-object v0, Landroid/os/VibratorStub;->sInstance:Landroid/os/VibratorStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist obtainOverlayVibrationEffect(Landroid/os/vibrator/StepSegment;)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist obtainStepSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/StepSegment;
.end method

.method public abstract blacklist obtainVibrationReason(Landroid/os/vibrator/StepSegment;)Ljava/lang/String;
.end method

.method public blacklist overlayByMiui(Landroid/os/vibrator/StepSegment;Ljava/lang/String;)Z
    .registers 4
    .param p1, "stepSegment"    # Landroid/os/vibrator/StepSegment;
    .param p2, "opPkg"    # Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    return v0
.end method
