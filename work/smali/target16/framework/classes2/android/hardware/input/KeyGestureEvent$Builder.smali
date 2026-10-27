.class public Landroid/hardware/input/KeyGestureEvent$Builder;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyGestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mAppLaunchData:Landroid/hardware/input/AppLaunchData;

.field private blacklist mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mFlags:I

.field private blacklist mKeyGestureType:I

.field private blacklist mKeycodes:[I

.field private blacklist mModifierState:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    .line 283
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    .line 284
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    .line 285
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    .line 287
    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    .line 288
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    .line 289
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/input/KeyGestureEvent;
    .registers 3

    .line 361
    new-instance v0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {v0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    .line 362
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 363
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 364
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 365
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 366
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 367
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 368
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    .line 369
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v1, :cond_6a

    .line 370
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v1, v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v1, :cond_36

    .line 371
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 372
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    goto :goto_6a

    .line 373
    :cond_36
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v1, v1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v1, :cond_47

    .line 374
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    goto :goto_6a

    .line 375
    :cond_47
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v1, v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v1, :cond_62

    .line 376
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 377
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 379
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    goto :goto_6a

    .line 381
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppLaunchData type is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_6a
    :goto_6a
    new-instance v1, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v1, v0}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    return-object v1
.end method

.method public blacklist setAction(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 329
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    .line 330
    return-object p0
.end method

.method public blacklist setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 353
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    .line 354
    return-object p0
.end method

.method public blacklist setDeviceId(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 297
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    .line 298
    return-object p0
.end method

.method public blacklist setDisplayId(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 337
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    .line 338
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 345
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    .line 346
    return-object p0
.end method

.method public blacklist setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 321
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    .line 322
    return-object p0
.end method

.method public blacklist setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 305
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    .line 306
    return-object p0
.end method

.method public blacklist setModifierState(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2

    .line 313
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    .line 314
    return-object p0
.end method
