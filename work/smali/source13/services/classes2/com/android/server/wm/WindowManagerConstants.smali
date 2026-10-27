.class final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "WindowManagerConstants.java"


# static fields
.field static final KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS:Ljava/lang/String; = "system_gesture_exclusion_log_debounce_millis"

.field private static final MIN_GESTURE_EXCLUSION_LIMIT_DP:I = 0xc8


# instance fields
.field private final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field mSystemGestureExcludedByPreQStickyImmersive:Z

.field mSystemGestureExclusionLimitDp:I

.field mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field private final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$R6jJTtpKTNTeb3Af8P_LcxxZpgI(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rr6DBPptBMcotjU-zTbQM6pjCkw(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V
    .registers 5
    .param p1, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p2, "updateSystemGestureExclusionCallback"    # Ljava/lang/Runnable;
    .param p3, "deviceConfig"    # Landroid/provider/DeviceConfigInterface;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 77
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    .line 78
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 79
    new-instance v0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 80
    new-instance v0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/provider/DeviceConfigInterface;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "deviceConfig"    # Landroid/provider/DeviceConfigInterface;

    .line 68
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/WindowManagerConstants;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V

    .line 70
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "updateSystemGestureExclusionLimit":Z
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_22

    .line 99
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 101
    :cond_22
    const/4 v4, -0x1

    :try_start_23
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_62

    :cond_2a
    goto :goto_40

    :sswitch_2b
    const-string/jumbo v5, "system_gesture_exclusion_limit_dp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x0

    goto :goto_40

    :sswitch_36
    const-string/jumbo v5, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x1

    :goto_40
    packed-switch v4, :pswitch_data_6c

    goto :goto_4e

    .line 107
    :pswitch_44
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    .line 108
    const/4 v1, 0x1

    .line 109
    goto :goto_4e

    .line 103
    :pswitch_49
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    .line 104
    const/4 v1, 0x1

    .line 105
    nop

    .line 113
    .end local v3    # "name":Ljava/lang/String;
    :goto_4e
    goto :goto_f

    .line 114
    :cond_4f
    if-eqz v1, :cond_56

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 117
    .end local v1    # "updateSystemGestureExclusionLimit":Z
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_23 .. :try_end_57} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 118
    return-void

    .line 117
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :sswitch_data_62
    .sparse-switch
        -0x4bcc3a39 -> :sswitch_36
        0x12e32da7 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_44
    .end packed-switch
.end method

.method private onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 122
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_21

    .line 124
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 126
    :cond_21
    const/4 v3, -0x1

    :try_start_22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_48

    :cond_29
    goto :goto_34

    :pswitch_2a
    const-string/jumbo v4, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v3, 0x0

    :goto_34
    packed-switch v3, :pswitch_data_4e

    goto :goto_3c

    .line 128
    :pswitch_38
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    .line 129
    nop

    .line 133
    .end local v2    # "name":Ljava/lang/String;
    :goto_3c
    goto :goto_e

    .line 134
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 135
    return-void

    .line 134
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_data_48
    .packed-switch -0x7801476
        :pswitch_2a
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_38
    .end packed-switch
.end method

.method private updateSystemGestureExcludedByPreQStickyImmersive()V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "android"

    const-string/jumbo v2, "system_gestures_excluded_by_pre_q_sticky_immersive"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 153
    return-void
.end method

.method private updateSystemGestureExclusionLimitDp()V
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 145
    const-string v1, "android"

    const-string/jumbo v2, "system_gesture_exclusion_limit_dp"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 144
    const/16 v1, 0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    .line 147
    return-void
.end method

.method private updateSystemGestureExclusionLogDebounceMillis()V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 139
    const-string/jumbo v1, "window_manager"

    const-string/jumbo v2, "system_gesture_exclusion_log_debounce_millis"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 141
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 156
    const-string v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "system_gesture_exclusion_limit_dp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 164
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 165
    return-void
.end method

.method start(Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "android"

    invoke-interface {v0, v2, p1, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v2, "window_manager"

    invoke-interface {v0, v2, p1, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    .line 91
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    .line 92
    return-void
.end method
