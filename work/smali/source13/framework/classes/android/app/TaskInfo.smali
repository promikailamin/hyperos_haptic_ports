.class public Landroid/app/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TaskInfo$CameraCompatControlState;
    }
.end annotation


# static fields
.field public static final blacklist CAMERA_COMPAT_CONTROL_DISMISSED:I = 0x3

.field public static final blacklist CAMERA_COMPAT_CONTROL_HIDDEN:I = 0x0

.field public static final blacklist CAMERA_COMPAT_CONTROL_TREATMENT_APPLIED:I = 0x2

.field public static final blacklist CAMERA_COMPAT_CONTROL_TREATMENT_SUGGESTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TaskInfo"


# instance fields
.field public whitelist baseActivity:Landroid/content/ComponentName;

.field public whitelist baseIntent:Landroid/content/Intent;

.field public blacklist cameraCompatControlState:I

.field public final greylist configuration:Landroid/content/res/Configuration;

.field public blacklist defaultMinSize:I

.field public blacklist displayAreaFeatureId:I

.field public blacklist displayCutoutInsets:Landroid/graphics/Rect;

.field public blacklist displayId:I

.field public blacklist isFocused:Z

.field public blacklist isHiddenFreeformTask:Z

.field public blacklist isResizeable:Z

.field public whitelist isRunning:Z

.field public blacklist isSleeping:Z

.field public blacklist isVisible:Z

.field public greylist lastActiveTime:J

.field public blacklist launchCookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist launchIntoPipHostTaskId:I

.field public blacklist mIsCastMode:Z

.field public blacklist mTopActivityLocusId:Landroid/content/LocusId;

.field public blacklist minHeight:I

.field public blacklist minWidth:I

.field public whitelist numActivities:I

.field public whitelist origActivity:Landroid/content/ComponentName;

.field public blacklist parentTaskId:I

.field public blacklist pictureInPictureParams:Landroid/app/PictureInPictureParams;

.field public blacklist positionInParent:Landroid/graphics/Point;

.field public blacklist realActivity:Landroid/content/ComponentName;

.field public greylist resizeMode:I

.field public blacklist shouldDockBigOverlays:Z

.field public blacklist supportMultipleTask:Z

.field public blacklist supportsMultiWindow:Z

.field public greylist supportsSplitScreenMultiWindow:Z

.field public whitelist taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public whitelist taskId:I

.field public blacklist token:Landroid/window/WindowContainerToken;

.field public whitelist topActivity:Landroid/content/ComponentName;

.field public blacklist topActivityEligibleForLetterboxEducation:Z

.field public blacklist topActivityInMiuiSizeCompat:Z

.field public blacklist topActivityInSizeCompat:Z

.field public blacklist topActivityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist topActivityType:I

.field public blacklist topChildTaskId:I

.field public greylist-max-r userId:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 167
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 374
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 167
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 377
    invoke-virtual {p0, p1}, Landroid/app/TaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 378
    return-void
.end method

.method public static blacklist cameraCompatControlStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "cameraCompatControlState"    # I

    .line 708
    packed-switch p0, :pswitch_data_2a

    .line 714
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected camera compat control state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 712
    :pswitch_1c
    const-string v0, "dismissed"

    return-object v0

    .line 711
    :pswitch_1f
    const-string/jumbo v0, "treatment-applied"

    return-object v0

    .line 710
    :pswitch_23
    const-string/jumbo v0, "treatment-suggested"

    return-object v0

    .line 709
    :pswitch_27
    const-string v0, "hidden"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public blacklist addLaunchCookie(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "cookie"    # Landroid/os/IBinder;

    .line 428
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 429
    :cond_b
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    return-void

    .line 428
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist containsLaunchCookie(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "cookie"    # Landroid/os/IBinder;

    .line 457
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/TaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/TaskInfo;

    .line 506
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 507
    return v0

    .line 509
    :cond_4
    iget v1, p0, Landroid/app/TaskInfo;->displayId:I

    iget v2, p1, Landroid/app/TaskInfo;->displayId:I

    if-ne v1, v2, :cond_60

    iget v1, p0, Landroid/app/TaskInfo;->taskId:I

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v1, v2, :cond_60

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    if-ne v1, v2, :cond_60

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    if-ne v1, v2, :cond_60

    iget v1, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    iget v2, p1, Landroid/app/TaskInfo;->cameraCompatControlState:I

    if-ne v1, v2, :cond_60

    .line 516
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasCompatUI()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 517
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 518
    :cond_3e
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasCompatUI()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 519
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v1, v2, :cond_60

    .line 520
    :cond_52
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasCompatUI()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisible:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-ne v1, v2, :cond_60

    :cond_5e
    const/4 v0, 0x1

    goto :goto_61

    :cond_60
    nop

    .line 509
    :goto_61
    return v0
.end method

.method public blacklist equalsForMiuiSizeCompat(Landroid/app/TaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/TaskInfo;

    .line 530
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 531
    return v0

    .line 533
    :cond_4
    iget v1, p0, Landroid/app/TaskInfo;->displayId:I

    iget v2, p1, Landroid/app/TaskInfo;->displayId:I

    if-ne v1, v2, :cond_60

    iget v1, p0, Landroid/app/TaskInfo;->taskId:I

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v1, v2, :cond_60

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    if-ne v1, v2, :cond_60

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    if-ne v1, v2, :cond_60

    iget v1, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    iget v2, p1, Landroid/app/TaskInfo;->cameraCompatControlState:I

    if-ne v1, v2, :cond_60

    .line 540
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasMiuiCompatUi()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 541
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 542
    :cond_3e
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasMiuiCompatUi()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 543
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v1, v2, :cond_60

    .line 544
    :cond_52
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasMiuiCompatUi()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisible:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-ne v1, v2, :cond_60

    :cond_5e
    const/4 v0, 0x1

    goto :goto_61

    :cond_60
    nop

    .line 533
    :goto_61
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/TaskInfo;

    .line 481
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 482
    return v0

    .line 484
    :cond_4
    iget v1, p0, Landroid/app/TaskInfo;->topActivityType:I

    iget v2, p1, Landroid/app/TaskInfo;->topActivityType:I

    if-ne v1, v2, :cond_84

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isResizeable:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isResizeable:Z

    if-ne v1, v2, :cond_84

    iget-boolean v1, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    if-ne v1, v2, :cond_84

    iget v1, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    iget v2, p1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 488
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v2, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 489
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-boolean v1, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 490
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 491
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 492
    invoke-virtual {p0}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 493
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isFocused:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-ne v1, v2, :cond_84

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisible:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-ne v1, v2, :cond_84

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isSleeping:Z

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isSleeping:Z

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    iget-object v2, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 497
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget v1, p0, Landroid/app/TaskInfo;->parentTaskId:I

    iget v2, p1, Landroid/app/TaskInfo;->parentTaskId:I

    if-ne v1, v2, :cond_84

    const/4 v0, 0x1

    goto :goto_85

    :cond_84
    nop

    .line 484
    :goto_85
    return v0
.end method

.method public blacklist getActivityType()I
    .registers 2

    .line 423
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 398
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getParentTaskId()I
    .registers 2

    .line 466
    iget v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    return v0
.end method

.method public blacklist getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getToken()Landroid/window/WindowContainerToken;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public blacklist hasCameraCompatControl()Z
    .registers 3

    .line 434
    iget v0, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist hasCompatUI()Z
    .registers 2

    .line 440
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasCameraCompatControl()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist hasMiuiCompatUi()Z
    .registers 2

    .line 446
    invoke-virtual {p0}, Landroid/app/TaskInfo;->hasCameraCompatControl()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist hasParentTask()Z
    .registers 3

    .line 472
    iget v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isVisible:Z

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->userId:I

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->taskId:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->displayId:I

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isRunning:Z

    .line 556
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 557
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 558
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 559
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 560
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->numActivities:I

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 565
    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->resizeMode:I

    .line 569
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 570
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->topActivityType:I

    .line 572
    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    .line 575
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 576
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isResizeable:Z

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->minWidth:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->minHeight:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 581
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    .line 582
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isFocused:Z

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isVisible:Z

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isSleeping:Z

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    .line 591
    sget-object v0, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->mIsCastMode:Z

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/TaskInfo;->topChildTaskId:I

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->supportMultipleTask:Z

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/TaskInfo;->isHiddenFreeformTask:Z

    .line 603
    return-void
.end method

.method public blacklist shouldDockBigOverlays()Z
    .registers 2

    .line 411
    iget-boolean v0, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskInfo{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " realActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->numActivities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/TaskInfo;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " supportsSplitScreenMultiWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " supportsMultiWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " defaultMinSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->defaultMinSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->topActivityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pictureInPictureParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldDockBigOverlays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " launchIntoPipHostTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayCutoutSafeInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " launchCookies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " positionInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parentTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->parentTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFocused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->isSleeping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityInSizeCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityInMiuiSizeCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityEligibleForLetterboxEducation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayAreaFeatureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraCompatControlState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 700
    invoke-static {v1}, Landroid/app/TaskInfo;->cameraCompatControlStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsCastMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/TaskInfo;->mIsCastMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    return-object v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 609
    iget v0, p0, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget v0, p0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget v0, p0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 613
    iget-object v0, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 615
    iget-object v0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 616
    iget-object v0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 617
    iget-object v0, p0, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 618
    iget-object v0, p0, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 620
    iget v0, p0, Landroid/app/TaskInfo;->numActivities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-wide v0, p0, Landroid/app/TaskInfo;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 623
    iget-object v0, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 624
    iget-boolean v0, p0, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    iget-boolean v0, p0, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 626
    iget v0, p0, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 628
    iget-object v0, p0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 629
    iget v0, p0, Landroid/app/TaskInfo;->topActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget-object v0, p0, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 631
    iget-boolean v0, p0, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    iget v0, p0, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-object v0, p0, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    iget-object v0, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 635
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    iget v0, p0, Landroid/app/TaskInfo;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget v0, p0, Landroid/app/TaskInfo;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget v0, p0, Landroid/app/TaskInfo;->defaultMinSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v0, p0, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 640
    iget-object v0, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 641
    iget v0, p0, Landroid/app/TaskInfo;->parentTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 643
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 644
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isSleeping:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 647
    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 648
    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 649
    iget-object v0, p0, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 650
    iget v0, p0, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget v0, p0, Landroid/app/TaskInfo;->cameraCompatControlState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    iget-boolean v0, p0, Landroid/app/TaskInfo;->mIsCastMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 656
    iget v0, p0, Landroid/app/TaskInfo;->topChildTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget-boolean v0, p0, Landroid/app/TaskInfo;->supportMultipleTask:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 659
    iget-boolean v0, p0, Landroid/app/TaskInfo;->isHiddenFreeformTask:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    return-void
.end method
