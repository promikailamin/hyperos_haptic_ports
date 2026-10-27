.class public final Landroid/media/MicrophoneInfo$Coordinate3F;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MicrophoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coordinate3F"
.end annotation


# instance fields
.field public final whitelist x:F

.field public final whitelist y:F

.field public final whitelist z:F


# direct methods
.method constructor greylist-max-o <init>(FFF)V
    .registers 4

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    .line 388
    iput p2, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    .line 389
    iput p3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    .line 390
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 394
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 395
    return v0

    .line 397
    :cond_4
    instance-of v1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 398
    return v2

    .line 400
    :cond_a
    check-cast p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 401
    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    iget v3, p1, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_25

    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    iget v3, p1, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_25

    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    iget p1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0
.end method
