.class Landroid/hardware/CameraInjector$CameraOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraOrientationEventListener"
.end annotation


# instance fields
.field private blacklist mCamera:Landroid/hardware/Camera;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplay:Landroid/view/Display;

.field private blacklist mOrientation:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/Camera;Landroid/content/Context;)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "context"    # Landroid/content/Context;

    .line 647
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 642
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    .line 648
    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    .line 649
    iput-object p2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    .line 650
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 651
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    .line 652
    return-void
.end method


# virtual methods
.method public whitelist onOrientationChanged(I)V
    .registers 6
    .param p1, "orientation"    # I

    .line 659
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 660
    :cond_4
    iget v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    invoke-static {p1, v0}, Landroid/hardware/CameraInjector;->-$$Nest$smroundOrientation(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    .line 661
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5f

    .line 662
    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 663
    .local v0, "degrees":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 664
    .local v1, "newReverse":Z
    :goto_1c
    invoke-static {}, Landroid/hardware/CameraInjector;->-$$Nest$sfgetsCameraInfoMap()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fgetmReverseFrameData(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v2

    if-eq v2, v1, :cond_5f

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReverseFrameData change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current client orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {}, Landroid/hardware/CameraInjector;->-$$Nest$sfgetsCameraInfoMap()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fputmReverseFrameData(Landroid/hardware/CameraInjector$CameraExInfo;Z)V

    .line 670
    .end local v0    # "degrees":I
    .end local v1    # "newReverse":Z
    :cond_5f
    return-void
.end method
