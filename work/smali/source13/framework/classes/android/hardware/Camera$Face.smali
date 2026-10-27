.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public blacklist blinkDetected:I

.field public blacklist faceRecognised:I

.field public whitelist id:I

.field public whitelist leftEye:Landroid/graphics/Point;

.field public whitelist mouth:Landroid/graphics/Point;

.field public whitelist rect:Landroid/graphics/Rect;

.field public whitelist rightEye:Landroid/graphics/Point;

.field public whitelist score:I

.field public blacklist smileDegree:I

.field public blacklist smileScore:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2077
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 2086
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 2095
    iput-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 2104
    iput-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 2109
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/Camera$Face;->smileDegree:I

    .line 2113
    iput v0, p0, Landroid/hardware/Camera$Face;->smileScore:I

    .line 2117
    iput v0, p0, Landroid/hardware/Camera$Face;->blinkDetected:I

    .line 2121
    iput v0, p0, Landroid/hardware/Camera$Face;->faceRecognised:I

    .line 2018
    return-void
.end method
