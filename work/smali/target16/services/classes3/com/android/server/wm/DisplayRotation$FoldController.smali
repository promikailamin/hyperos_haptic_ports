.class public Lcom/android/server/wm/DisplayRotation$FoldController;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# instance fields
.field public final mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

.field public final mAllowHalfFoldAutoRotationOverride:Z

.field public mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

.field public mDisplaySwitchRotationBlockTimeMs:I

.field public mHalfFoldSavedRotation:I

.field public mHingeAngleRotationBlockTimeMs:I

.field public mHingeAngleSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mInHalfFoldTransition:Z

.field public final mIsDisplayAlwaysSeparatingHinge:Z

.field public mLastDisplaySwitchTime:J

.field public mLastHingeAngleEventTime:J

.field public mMaxHingeAngle:I

.field public final mPauseAutorotationDuringUnfolding:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldDisableRotationSensor:Z

.field public mShouldIgnoreSensorRotation:Z

.field public final mTabletopRotations:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$9bgUwXUoqn8GF98MKx-Q46Qwu68(Lcom/android/server/wm/DisplayRotation$FoldController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->lambda$onHingeAngleChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ObUw2FMm1SL07uvWjAcUVxeiG3M(Lcom/android/server/wm/DisplayRotation$FoldController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->lambda$onPhysicalDisplayChanged$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateEnum(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalfFoldSavedRotation(Lcom/android/server/wm/DisplayRotation$FoldController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInHalfFoldTransition(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastDisplaySwitchTime(Lcom/android/server/wm/DisplayRotation$FoldController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastHingeAngleEventTime(Lcom/android/server/wm/DisplayRotation$FoldController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPauseAutorotationDuringUnfolding(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldDisableRotationSensor(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldIgnoreSensorRotation(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .registers 13

    .line 1779
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1757
    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 1762
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    const-wide/16 v0, 0x0

    .line 1764
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 1765
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    const/4 v0, 0x0

    .line 1768
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 1780
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    .line 1782
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 1783
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_9a

    .line 1786
    array-length v3, v1

    move v4, v0

    :goto_41
    if-ge v4, v3, :cond_ab

    aget v5, v1, v4

    if-eqz v5, :cond_8e

    const/16 v6, 0x5a

    const/4 v7, 0x1

    if-eq v5, v6, :cond_84

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_79

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_6f

    .line 1801
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v8, 0x4

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_97

    int-to-long v5, v5

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v9, 0x49e6af899df831b2L    # 1.0360993240422253E48

    invoke-static {v8, v9, v10, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_97

    .line 1798
    :cond_6f
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 1795
    :cond_79
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 1792
    :cond_84
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 1789
    :cond_8e
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_97
    :goto_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 1808
    :cond_9a
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_ab

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x4011086c30af3a2fL    # 4.258225212759995

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1812
    :cond_ab
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    .line 1815
    new-instance v0, Lcom/android/server/wm/DisplayRotation$FoldController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController$1;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;Lcom/android/server/wm/DisplayRotation;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

    .line 1836
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-eqz v0, :cond_10c

    .line 1840
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    .line 1842
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    .line 1844
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0121

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    .line 1846
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->registerSensorManager()V

    :cond_10c
    return-void
.end method


# virtual methods
.method public foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1926
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_63

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    int-to-long v8, v2

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    int-to-long v10, v2

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget v6, v2, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    int-to-long v12, v6

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLastOrientation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    int-to-long v14, v2

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    move-wide/from16 v16, v4

    int-to-long v3, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x7ad9da1852873806L    # 6.006603503852751E283

    const/16 v6, 0x1551

    invoke-static {v2, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1932
    :cond_63
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne v2, v3, :cond_6c

    .line 1933
    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    return-void

    .line 1936
    :cond_6c
    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne v1, v3, :cond_95

    if-eq v2, v3, :cond_95

    .line 1940
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    .line 1942
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 1943
    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    .line 1946
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    goto :goto_a4

    :cond_95
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1949
    iput-boolean v3, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 1950
    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    .line 1952
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1956
    :goto_a4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1957
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isDeviceInPosture(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Z)Z
    .registers 6

    .line 1880
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    .line 1883
    :cond_6
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1f

    .line 1884
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_1e

    return v2

    :cond_1e
    return v1

    :cond_1f
    return v2
.end method

.method public isSeparatingHinge()Z
    .registers 3

    .line 1894
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne v0, v1, :cond_f

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$onHingeAngleChanged$1()V
    .registers 2

    .line 2023
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2024
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 2025
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final synthetic lambda$onPhysicalDisplayChanged$0()V
    .registers 2

    .line 2010
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2011
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 2012
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onDisplayRemoved()V
    .registers 2

    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_b

    .line 1875
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_b
    return-void
.end method

.method public onHingeAngleChanged(F)V
    .registers 5

    .line 2017
    iget v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_23

    .line 2018
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 2022
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_23
    return-void
.end method

.method public onPhysicalDisplayChanged()V
    .registers 5

    .line 1994
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-nez v0, :cond_5

    return-void

    .line 1996
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    .line 1998
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne v0, v1, :cond_1f

    :cond_17
    const/4 v0, 0x1

    .line 2004
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 2005
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateOrientationListenerLw(Lcom/android/server/wm/DisplayRotation;)V

    .line 2008
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 2009
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public overrideFrozenRotation()Z
    .registers 2

    .line 1900
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final registerSensorManager()V
    .registers 5

    .line 1851
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2d

    const/16 v1, 0x24

    .line 1854
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1857
    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$2;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 1867
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    .line 1867
    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_2d
    return-void
.end method

.method public revertOverriddenRotation()I
    .registers 4

    .line 1917
    iget v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    const/4 v1, -0x1

    .line 1918
    iput v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 1919
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v1

    const/4 v2, 0x2

    .line 1920
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    const/4 v1, 0x0

    .line 1921
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    return v0
.end method

.method public shouldDisableRotationSensor()Z
    .registers 1

    .line 1966
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    return p0
.end method

.method public shouldIgnoreSensorRotation()Z
    .registers 1

    .line 1962
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    return p0
.end method

.method public shouldRevertOverriddenRotation()Z
    .registers 3

    .line 1906
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne v0, v1, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1910
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->isOverrideActive(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2d

    return v0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSensorRotationBlockIfNeeded()V
    .registers 7

    .line 1970
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v0

    .line 1971
    iget-wide v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_1f

    iget-wide v4, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    sub-long/2addr v0, v4

    iget v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v3

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1975
    :goto_20
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-eq v0, v1, :cond_39

    .line 1976
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-nez v0, :cond_39

    .line 1980
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    if-eqz v0, :cond_34

    .line 1982
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 1983
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateOrientationListenerLw(Lcom/android/server/wm/DisplayRotation;)V

    return-void

    .line 1987
    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_39
    return-void
.end method
