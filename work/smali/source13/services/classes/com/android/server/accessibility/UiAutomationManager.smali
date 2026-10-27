.class Lcom/android/server/accessibility/UiAutomationManager;
.super Ljava/lang/Object;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final LOG_TAG:Ljava/lang/String; = "UiAutomationManager"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field private mTrace:Landroid/accessibilityservice/AccessibilityTrace;

.field private mUiAutomationFlags:I

.field private mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

.field private mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private mUiAutomationServiceOwner:Landroid/os/IBinder;

.field private final mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUiAutomationServiceOwner(Lcom/android/server/accessibility/UiAutomationManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmUiAutomationServiceOwner(Lcom/android/server/accessibility/UiAutomationManager;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCOMPONENT_NAME()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "UiAutomation"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/UiAutomationManager$1;-><init>(Lcom/android/server/accessibility/UiAutomationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 63
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private destroyUiAutomationService()V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 227
    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 229
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->onRemoved()V

    .line 230
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->resetLocked()V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 232
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    if-eqz v3, :cond_2b

    .line 233
    iget-object v4, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 235
    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 238
    :cond_2b
    iput v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 218
    .local v1, "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 219
    if-eqz v1, :cond_b

    .line 220
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 222
    :cond_b
    return-void

    .line 218
    .end local v1    # "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method getRelevantEventTypes()I
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 199
    .local v1, "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 200
    if-nez v1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 201
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->getRelevantEventTypes()I

    move-result v0

    return v0

    .line 199
    .end local v1    # "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getRequestedEventMaskLocked()I
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 192
    :cond_6
    iget v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    return v0
.end method

.method getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 209
    .local v1, "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 210
    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0

    .line 209
    .end local v1    # "uiAutomationService":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method isTouchExplorationEnabledLocked()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mRequestTouchExplorationMode:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isUiAutomationRunningLocked()Z
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 31
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p5, "id"    # I
    .param p6, "mainHandler"    # Landroid/os/Handler;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "trace"    # Landroid/accessibilityservice/AccessibilityTrace;
    .param p10, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "systemActionPerformer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p12, "awm"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p13, "flags"    # I

    .line 100
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p4

    iget-object v12, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 101
    :try_start_9
    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v13, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 103
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_d3

    if-nez v0, :cond_ab

    .line 110
    :try_start_12
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v11, 0x0

    invoke-interface {v15, v0, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_9c
    .catchall {:try_start_12 .. :try_end_18} :catchall_d3

    .line 115
    nop

    .line 117
    move/from16 v10, p13

    :try_start_1b
    iput v10, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 118
    move-object/from16 v9, p8

    iput-object v9, v14, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 119
    move-object/from16 v8, p9

    iput-object v8, v14, Lcom/android/server/accessibility/UiAutomationManager;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 123
    monitor-exit v12

    return-void

    .line 125
    :cond_2d
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v7, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_d3

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v16, v12

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    :try_start_4a
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;-><init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    iput-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 128
    iput-object v15, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_96

    .line 129
    move-object/from16 v1, p4

    :try_start_53
    iput-object v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_92

    .line 130
    move-object/from16 v2, p2

    :try_start_57
    iput-object v2, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_db

    .line 132
    :try_start_59
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_67} :catch_74
    .catchall {:try_start_59 .. :try_end_67} :catchall_db

    .line 138
    nop

    .line 140
    :try_start_68
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->onAdded()V

    .line 142
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->connectServiceUnknownThread()V

    .line 143
    monitor-exit v16

    .line 144
    return-void

    .line 134
    :catch_74
    move-exception v0

    .line 135
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "UiAutomationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed registering death link: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 137
    monitor-exit v16

    return-void

    .line 143
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_92
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_d9

    :catchall_96
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v1, p4

    goto :goto_d9

    .line 111
    :catch_9c
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v16, v12

    move-object v1, v13

    .line 112
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v3, "UiAutomationManager"

    const-string v4, "Couldn\'t register for the death of a UiTestAutomationService!"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    monitor-exit v16

    return-void

    .line 104
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_ab
    move-object/from16 v2, p2

    move-object/from16 v16, v12

    move-object v1, v13

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiAutomationService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v4, v4, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "already registered!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .end local p1    # "owner":Landroid/os/IBinder;
    .end local p2    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local p5    # "id":I
    .end local p6    # "mainHandler":Landroid/os/Handler;
    .end local p7    # "securityPolicy":Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .end local p8    # "systemSupport":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .end local p9    # "trace":Landroid/accessibilityservice/AccessibilityTrace;
    .end local p10    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local p11    # "systemActionPerformer":Lcom/android/server/accessibility/SystemActionPerformer;
    .end local p12    # "awm":Lcom/android/server/accessibility/AccessibilityWindowManager;
    .end local p13    # "flags":I
    throw v0

    .line 143
    .restart local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .restart local p1    # "owner":Landroid/os/IBinder;
    .restart local p2    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .restart local p3    # "context":Landroid/content/Context;
    .restart local p4    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local p5    # "id":I
    .restart local p6    # "mainHandler":Landroid/os/Handler;
    .restart local p7    # "securityPolicy":Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .restart local p8    # "systemSupport":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .restart local p9    # "trace":Landroid/accessibilityservice/AccessibilityTrace;
    .restart local p10    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local p11    # "systemActionPerformer":Lcom/android/server/accessibility/SystemActionPerformer;
    .restart local p12    # "awm":Lcom/android/server/accessibility/AccessibilityWindowManager;
    .restart local p13    # "flags":I
    :catchall_d3
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v16, v12

    move-object v1, v13

    :goto_d9
    monitor-exit v16
    :try_end_da
    .catchall {:try_start_68 .. :try_end_da} :catchall_db

    throw v0

    :catchall_db
    move-exception v0

    goto :goto_d9
.end method

.method sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    :cond_7
    return-void
.end method

.method suppressingAccessibilityServicesLocked()Z
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 6
    .param p1, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_22

    .line 152
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v2, v2, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 153
    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_22

    goto :goto_41

    .line 154
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiAutomationService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not registered!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .end local p1    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    throw v1

    .line 157
    .restart local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager;
    .restart local p1    # "serviceClient":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method useAccessibility()Z
    .registers 2

    .line 178
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
