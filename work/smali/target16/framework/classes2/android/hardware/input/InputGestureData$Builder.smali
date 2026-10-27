.class public Landroid/hardware/input/InputGestureData$Builder;
.super Ljava/lang/Object;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowCaptureByFocusedWindow:Z

.field private blacklist mAppLaunchData:Landroid/hardware/input/AppLaunchData;

.field private blacklist mKeyGestureType:I

.field private blacklist mTrigger:Landroid/hardware/input/InputGestureData$Trigger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    .line 99
    iput-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAllowCaptureByFocusedWindow:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/input/InputGestureData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    if-eqz v0, :cond_7d

    .line 136
    iget v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    if-eqz v0, :cond_75

    .line 139
    iget v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 141
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No app launch data for system action launch application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/hardware/input/AidlInputGestureData;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData;-><init>()V

    .line 145
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    invoke-interface {v1}, Landroid/hardware/input/InputGestureData$Trigger;->getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 146
    iget v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    iput v1, v0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    .line 147
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v1, :cond_6b

    .line 148
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v2, :cond_3f

    check-cast v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 149
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    goto :goto_6b

    .line 150
    :cond_3f
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v2, :cond_4e

    check-cast v1, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 151
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    goto :goto_6b

    .line 152
    :cond_4e
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v2, :cond_63

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 153
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    .line 154
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    goto :goto_6b

    .line 156
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppLaunchData type is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_6b
    :goto_6b
    iget-boolean v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAllowCaptureByFocusedWindow:Z

    iput-boolean v1, v0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    .line 160
    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, v0}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    return-object v1

    .line 137
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No system action found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No trigger found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCaptureByFocusedWindow(Z)Landroid/hardware/input/InputGestureData$Builder;
    .registers 2

    .line 127
    iput-boolean p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAllowCaptureByFocusedWindow:Z

    .line 128
    return-object p0
.end method

.method public blacklist setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;
    .registers 3

    .line 117
    const/16 v0, 0x33

    iput v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    .line 118
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    .line 119
    return-object p0
.end method

.method public blacklist setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;
    .registers 2

    .line 111
    iput p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    .line 112
    return-object p0
.end method

.method public blacklist setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;
    .registers 2

    .line 105
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    .line 106
    return-object p0
.end method
