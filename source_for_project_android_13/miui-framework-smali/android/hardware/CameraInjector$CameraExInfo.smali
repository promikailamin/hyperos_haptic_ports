.class Landroid/hardware/CameraInjector$CameraExInfo;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraExInfo"
.end annotation


# instance fields
.field private blacklist mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

.field private blacklist mCameraParameterInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReverseFrameData:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraOrientationEventListener(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraParameterInfo(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReverseFrameData(Landroid/hardware/CameraInjector$CameraExInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCameraOrientationEventListener(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReverseFrameData(Landroid/hardware/CameraInjector$CameraExInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "cameraId"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/CameraInjector$CameraExInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(I)V

    return-void
.end method
