.class public Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
.super Landroid/view/SurfaceControl$CaptureArgs$Builder;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$DisplayCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDisplayToken:Landroid/os/IBinder;

.field private blacklist mHeight:I

.field private blacklist mUseIdentityTransform:Z

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayToken(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseIdentityTransform(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mWidth:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1190
    invoke-direct {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;-><init>()V

    .line 1191
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 1192
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .registers 3

    .line 1183
    iget-object v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 1187
    new-instance v0, Landroid/view/SurfaceControl$DisplayCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs;-><init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;Landroid/view/SurfaceControl$DisplayCaptureArgs-IA;)V

    return-object v0

    .line 1184
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null display token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic blacklist getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-virtual {p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThis()Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 1

    .line 1230
    return-object p0
.end method

.method public bridge synthetic blacklist setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCalledByRotationLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setCalledByRotationLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDisplayToken(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1198
    iput-object p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    .line 1199
    return-object p0
.end method

.method public bridge synthetic blacklist setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3

    .line 1172
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1212
    iput p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mWidth:I

    .line 1213
    iput p2, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mHeight:I

    .line 1214
    return-object p0
.end method

.method public bridge synthetic blacklist setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    .line 1172
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3

    .line 1172
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 2
    .param p1, "useIdentityTransform"    # Z

    .line 1224
    iput-boolean p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    .line 1225
    return-object p0
.end method
