.class public Lmiui/cameraanimation/CameraAnimationManager;
.super Ljava/lang/Object;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cameraanimation/CameraAnimationManager$H;
    }
.end annotation


# static fields
.field private static final blacklist FORCE_BLACK_V2:Ljava/lang/String; = "force_black_v2"

.field public static final whitelist FRONT_CAMERA_CLOSE:I = 0x1

.field public static final whitelist FRONT_CAMERA_OPEN:I = 0x0

.field public static final whitelist TAG:Ljava/lang/String; = "CameraAnimationManager"

.field private static final blacklist VIRTUAL_CAMERA_BOUNDARY:I = 0x64

.field public static final whitelist sMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAnimationView:Lmiui/cameraanimation/CameraAnimationView;

.field private blacklist mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private blacklist mBackCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

.field private blacklist mForegroundPackage:Ljava/lang/String;

.field private blacklist mFrontCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHideNotch:Z

.field private blacklist mHideNotchObserver:Landroid/database/ContentObserver;

.field private blacklist mIsAddedView:Z

.field private blacklist mLastUnavailableCameraId:I

.field private blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;
    .registers 1

    iget-object p0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAnimationView:Lmiui/cameraanimation/CameraAnimationView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrontCameraID(Lmiui/cameraanimation/CameraAnimationManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAddedView(Lmiui/cameraanimation/CameraAnimationManager;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mIsAddedView:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastUnavailableCameraId(Lmiui/cameraanimation/CameraAnimationManager;)I
    .registers 1

    iget p0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManager(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForegroundPackage(Lmiui/cameraanimation/CameraAnimationManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundPackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHideNotch(Lmiui/cameraanimation/CameraAnimationManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAddedView(Lmiui/cameraanimation/CameraAnimationManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mIsAddedView:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastUnavailableCameraId(Lmiui/cameraanimation/CameraAnimationManager;I)V
    .registers 2

    iput p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWindowParam(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartCameraAnimation(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->startCameraAnimation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopCameraAnimation(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->stopCameraAnimation()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/cameraanimation/CameraAnimationManager;->sMonitorList:Ljava/util/ArrayList;

    .line 47
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "com.mlab.cam"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mBackCameraID:Ljava/util/List;

    .line 73
    new-instance v0, Lmiui/cameraanimation/CameraAnimationManager$1;

    invoke-direct {v0, p0}, Lmiui/cameraanimation/CameraAnimationManager$1;-><init>(Lmiui/cameraanimation/CameraAnimationManager;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 109
    new-instance v0, Lmiui/cameraanimation/CameraAnimationManager$2;

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/cameraanimation/CameraAnimationManager$2;-><init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotchObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance v0, Lmiui/cameraanimation/CameraAnimationManager$3;

    invoke-direct {v0, p0}, Lmiui/cameraanimation/CameraAnimationManager$3;-><init>(Lmiui/cameraanimation/CameraAnimationManager;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    .line 54
    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera_animation"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v1, Lmiui/cameraanimation/CameraAnimationManager$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmiui/cameraanimation/CameraAnimationManager$H;-><init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v1, Lmiui/cameraanimation/CameraAnimationView;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiui/cameraanimation/CameraAnimationView;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAnimationView:Lmiui/cameraanimation/CameraAnimationView;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mIsAddedView:Z

    .line 61
    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 62
    const-string v3, "force_black_v2"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotchObserver:Landroid/database/ContentObserver;

    .line 61
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 64
    return-void
.end method

.method private blacklist canShowAnimation()Z
    .registers 3

    .line 106
    iget-boolean v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotch:Z

    if-nez v0, :cond_10

    sget-object v0, Lmiui/cameraanimation/CameraAnimationManager;->sMonitorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .registers 10

    .line 132
    const/16 v6, 0x55

    .line 133
    .local v6, "h":I
    const/4 v7, -0x1

    .line 134
    .local v7, "w":I
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const/16 v4, 0x538

    const/4 v5, -0x3

    move-object v0, v8

    move v1, v7

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 146
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 147
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 148
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 149
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 150
    const-string v1, "cameraAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    return-object v0
.end method

.method private blacklist initCameraId()V
    .registers 10

    .line 156
    :try_start_0
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "ids":[Ljava/lang/String;
    if-eqz v0, :cond_4b

    array-length v1, v0

    if-lez v1, :cond_4b

    .line 158
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_4b

    aget-object v3, v0, v2

    .line 159
    .local v3, "sid":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 160
    .local v4, "id":I
    const/16 v5, 0x64

    if-lt v4, v5, :cond_1e

    .line 161
    goto :goto_48

    .line 163
    :cond_1e
    iget-object v5, p0, Lmiui/cameraanimation/CameraAnimationManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 164
    .local v5, "cc":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 165
    .local v6, "facing":I
    if-nez v6, :cond_3c

    .line 166
    iget-object v7, p0, Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 167
    :cond_3c
    const/4 v7, 0x1

    if-ne v6, v7, :cond_48

    .line 168
    iget-object v7, p0, Lmiui/cameraanimation/CameraAnimationManager;->mBackCameraID:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4c

    .line 158
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "cc":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "facing":I
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 174
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_4b
    goto :goto_54

    .line 172
    :catch_4c
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraAnimationManager"

    const-string v2, "Can\'t initCameraId"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void
.end method

.method private blacklist startCameraAnimation()V
    .registers 3

    .line 96
    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->canShowAnimation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 97
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    :cond_c
    return-void
.end method

.method private blacklist stopCameraAnimation()V
    .registers 3

    .line 102
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist registerForegroundInfoChangeListener()V
    .registers 2

    .line 127
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 128
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 129
    return-void
.end method

.method public whitelist systemReady()V
    .registers 4

    .line 67
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 68
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 69
    invoke-virtual {p0}, Lmiui/cameraanimation/CameraAnimationManager;->registerForegroundInfoChangeListener()V

    .line 70
    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->initCameraId()V

    .line 71
    return-void
.end method
