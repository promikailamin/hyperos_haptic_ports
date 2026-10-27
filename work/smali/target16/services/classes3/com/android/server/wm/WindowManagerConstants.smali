.class public final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "WindowManagerConstants.java"


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mIgnoreActivityOrientationRequestLargeScreen:Z

.field public mIgnoreActivityOrientationRequestSmallScreen:Z

.field public final mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

.field public mSystemGestureExcludedByPreQStickyImmersive:Z

.field public mSystemGestureExclusionLimitDp:I

.field public mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field public final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$eUFhT9hdWSYnRFf4b7Ae4A_NcK8(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kw7nkERC6P7XlbxngpVlVq5rcqo(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZhRKMPFS71X9_8ICDB5TEPj-L8(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 113
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    .line 114
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 115
    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 116
    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/provider/DeviceConfigInterface;)V
    .registers 5

    .line 104
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/WindowManagerConstants;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 232
    const-string v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "system_gesture_exclusion_limit_dp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 238
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 240
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "ignore_activity_orientation_request_screens"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestSmallScreen:Z

    if-eqz v2, :cond_4b

    const-string v2, "all"

    goto :goto_54

    .line 242
    :cond_4b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestLargeScreen:Z

    if-eqz v2, :cond_52

    const-string v2, "large"

    goto :goto_54

    :cond_52
    const-string v2, "none"

    .line 241
    :goto_54
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    if-eqz v2, :cond_6b

    .line 244
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "opt_out_ignore_activity_orientation_request_list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 247
    :cond_6b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isPackageOptOutIgnoreActivityOrientationRequest(Ljava/lang/String;)Z
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    if-eqz p0, :cond_c

    .line 228
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 135
    :try_start_6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_24

    .line 137
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    goto :goto_59

    .line 139
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x4bcc3a39

    const/4 v5, 0x1

    if-eq v3, v4, :cond_41

    const v4, 0x12e32da7

    if-eq v3, v4, :cond_34

    goto :goto_f

    :cond_34
    const-string v3, "system_gesture_exclusion_limit_dp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    :goto_3f
    move v1, v5

    goto :goto_f

    .line 139
    :cond_41
    const-string v3, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    goto :goto_3f

    :cond_4d
    if-eqz v1, :cond_54

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 155
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 160
    :try_start_6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_23

    .line 162
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_5d

    .line 164
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_62

    goto :goto_e

    :sswitch_2b
    const-string v2, "opt_out_ignore_activity_orientation_request_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateOptOutIgnoreActivityOrientationRequestList()V

    goto :goto_e

    .line 164
    :sswitch_37
    const-string v2, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    goto :goto_e

    .line 164
    :sswitch_43
    const-string v2, "ignore_activity_orientation_request"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_54

    :sswitch_4c
    const-string v2, "ignore_activity_orientation_request_screens"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 170
    :goto_54
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateIgnoreActivityOrientationRequest()V

    goto :goto_e

    .line 179
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_23 .. :try_end_59} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_5d
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :sswitch_data_62
    .sparse-switch
        -0x7dbcbf7b -> :sswitch_4c
        -0x288426c3 -> :sswitch_43
        -0x7801476 -> :sswitch_37
        0xb5f6a3d -> :sswitch_2b
    .end sparse-switch
.end method

.method public start(Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "android"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-interface {v0, v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "window_manager"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-interface {v0, v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateIgnoreActivityOrientationRequest()V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateOptOutIgnoreActivityOrientationRequestList()V

    return-void
.end method

.method public final updateIgnoreActivityOrientationRequest()V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "window_manager"

    const-string v2, "ignore_activity_orientation_request"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v4, "ignore_activity_orientation_request_screens"

    invoke-interface {v2, v1, v4}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_24

    .line 208
    const-string v2, "large"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    const/4 v3, 0x1

    .line 209
    :cond_25
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestSmallScreen:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestLargeScreen:Z

    return-void
.end method

.method public final updateOptOutIgnoreActivityOrientationRequestList()V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "opt_out_ignore_activity_orientation_request_list"

    const-string v2, ""

    const-string v3, "window_manager"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    return-void

    .line 221
    :cond_16
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    .line 222
    const-string p0, ","

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 222
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final updateSystemGestureExcludedByPreQStickyImmersive()V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "system_gestures_excluded_by_pre_q_sticky_immersive"

    const/4 v2, 0x0

    const-string v3, "android"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    return-void
.end method

.method public final updateSystemGestureExclusionLimitDp()V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "system_gesture_exclusion_limit_dp"

    const/4 v2, 0x0

    .line 190
    const-string v3, "android"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    .line 189
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    return-void
.end method

.method public final updateSystemGestureExclusionLogDebounceMillis()V
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "system_gesture_exclusion_log_debounce_millis"

    const-wide/16 v2, 0x0

    .line 184
    const-string v4, "window_manager"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    return-void
.end method
