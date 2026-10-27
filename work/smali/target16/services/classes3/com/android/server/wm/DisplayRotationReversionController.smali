.class public final Lcom/android/server/wm/DisplayRotationReversionController;
.super Ljava/lang/Object;
.source "DisplayRotationReversionController.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mSlots:[Z

.field public mUserRotationOverridden:I


# direct methods
.method public static synthetic $r8$lambda$04Xwpe7cEnpHVvU4iW5V-c1GVtU(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public beforeOverrideApplied(I)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7

    return-void

    .line 71
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->maybeSaveUserRotation()V

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method public getSlotsCopy()[Z
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isRotationReversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnyOverrideActive()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    .line 100
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public isOverrideActive(I)Z
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isRotationReversionEnabled()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->hasDisplayRotationPolicy()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 65
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final isTopFullscreenActivityNoSensor()Z
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DisplayRotationReversionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayRotationReversionController$$ExternalSyntheticLambda0;-><init>()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method public final maybeSaveUserRotation()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isAnyOverrideActive()Z

    move-result v1

    if-nez v1, :cond_19

    .line 131
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 132
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    :cond_19
    return-void
.end method

.method public revertOverride(I)Z
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 109
    :cond_8
    aput-boolean v2, v0, p1

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isAnyOverrideActive()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 111
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_21

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x3ba112cfb9fbc912L    # -2.2819742391242918E21

    const/4 p1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_21
    return v2

    .line 116
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    .line 117
    iget v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    .line 118
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3e

    .line 119
    iget v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const-string v2, "DisplayRotationReversionController#revertOverride"

    invoke-virtual {p1, v3, v0, v2}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(IILjava/lang/String;)V

    .line 121
    iput v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    return v3

    :cond_3e
    return v2
.end method

.method public updateForNoSensorOverride()V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_22

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isTopFullscreenActivityNoSensor()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 87
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x6070f7c12293c0ccL

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 88
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    return-void

    .line 91
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isTopFullscreenActivityNoSensor()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 92
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x1c981d3924f8c0d6L    # -7.211543063252226E170

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 93
    :cond_38
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    :cond_3b
    return-void
.end method
