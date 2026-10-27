.class public final Lcom/android/server/vibrator/PrebakedSegmentsValidator;
.super Ljava/lang/Object;
.source "PrebakedSegmentsValidator.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method
