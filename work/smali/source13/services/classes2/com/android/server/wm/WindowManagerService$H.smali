.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final ANIMATION_FAILSAFE:I = 0x3c

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FLOAT_WINDOWS_HIDE_TIMEOUT:I = 0x67

.field public static final FLOAT_WINDOWS_SHOW:I = 0x68

.field public static final FORCE_GC:I = 0xf

.field public static final INSETS_CHANGED:I = 0x42

.field public static final LAYOUT_AND_ASSIGN_WINDOW_LAYERS_IF_NEEDED:I = 0x3f

.field public static final MSG_REMOVE_BOOT_COVER_LAYER_TIMEOUT:I = 0x6c

.field public static final MSG_REMOVE_UPDATE_WALLPAPER_TARGET_TIMEOUT:I = 0x6e

.field public static final MSG_SERVICE_INIT_AFTER_BOOT:I = 0x6b

.field public static final MSG_UPDATE_BLUR_WALLPAPER:I = 0x6a

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final ON_POINTER_DOWN_OUTSIDE_FOCUS:I = 0x3e

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final RECOMPUTE_FOCUS:I = 0x3d

.field public static final REPARENT_TASK_TO_DEFAULT_DISPLAY:I = 0x41

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESTORE_POINTER_ICON:I = 0x37

.field public static final SET_HAS_OVERLAY_UI:I = 0x3a

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_MULTI_WINDOW_STACKS:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e

.field public static final WINDOW_STATE_BLAST_SYNC_TIMEOUT:I = 0x40

.field public static final WINDOW_STATE_POST_DRAW_TRANSACTION_TIMEOUT:I = 0x69


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 5724
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 5787
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_1e

    .line 5788
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: entry what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_562

    goto/16 :goto_556

    .line 6155
    :sswitch_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/WindowManagerServiceStub;->setWallpaperAsTarget(Z)V

    goto/16 :goto_556

    .line 6148
    :sswitch_39
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6149
    const-string v1, "WindowManager"

    const-string v2, " Remove BootBlackCoverLayer timeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6150
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/DisplayRotationStub;->immediatelyRemoveBootLayer()V

    .line 6151
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6152
    goto/16 :goto_556

    .line 6151
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6129
    :sswitch_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->initAfterBoot()V

    .line 6130
    goto/16 :goto_556

    .line 6135
    :sswitch_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->updateBlurWallpaperBmp()V

    .line 6136
    goto/16 :goto_556

    .line 6140
    :sswitch_6d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6141
    const-string v1, "WindowManager"

    const-string/jumbo v2, "wms.Apply PostDrawTransaction timeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6143
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->immediatelyApplyTransaction()V

    .line 6144
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6145
    goto/16 :goto_556

    .line 6144
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6072
    :sswitch_90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 6073
    .local v0, "diplaycontentTemp":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->recoveryFloatWindowState(Z)V

    .line 6074
    goto/16 :goto_556

    .line 6068
    .end local v0    # "diplaycontentTemp":Lcom/android/server/wm/DisplayContent;
    :sswitch_99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 6069
    .local v0, "diplaycontent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->floatWindowsHideTimeout()V

    .line 6070
    goto/16 :goto_556

    .line 6116
    .end local v0    # "diplaycontent":Lcom/android/server/wm/DisplayContent;
    :sswitch_a2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6117
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    if-lez v1, :cond_bb

    .line 6118
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 6121
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 6123
    :cond_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_a7 .. :try_end_bc} :catchall_c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6124
    goto/16 :goto_556

    .line 6123
    :catchall_c1
    move-exception v1

    :try_start_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6107
    :sswitch_c7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_cc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 6109
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 6111
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 6112
    .end local v1    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_cc .. :try_end_e2} :catchall_e7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6113
    goto/16 :goto_556

    .line 6112
    :catchall_e7
    move-exception v1

    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6099
    :sswitch_ed
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_f2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6100
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6101
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blast sync timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6102
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 6103
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_115
    .catchall {:try_start_f2 .. :try_end_115} :catchall_11a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6104
    goto/16 :goto_556

    .line 6103
    :catchall_11a
    move-exception v1

    :try_start_11b
    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6091
    :sswitch_120
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_125
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6092
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 6093
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iput-boolean v3, v1, Lcom/android/server/wm/DisplayContent;->mLayoutAndAssignWindowLayersScheduled:Z

    .line 6094
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 6095
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_132
    .catchall {:try_start_125 .. :try_end_132} :catchall_137

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6096
    goto/16 :goto_556

    .line 6095
    :catchall_137
    move-exception v1

    :try_start_138
    monitor-exit v0
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6084
    :sswitch_13d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6085
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 6086
    .local v1, "touchedToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$monPointerDownOutsideFocusLocked(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 6087
    .end local v1    # "touchedToken":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_142 .. :try_end_14f} :catchall_154

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6088
    goto/16 :goto_556

    .line 6087
    :catchall_154
    move-exception v1

    :try_start_155
    monitor-exit v0
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6077
    :sswitch_15a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_15f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6078
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 6080
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_15f .. :try_end_168} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6081
    goto/16 :goto_556

    .line 6080
    :catchall_16d
    move-exception v1

    :try_start_16e
    monitor-exit v0
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6059
    :sswitch_173
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_178
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6060
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmRecentsAnimationController(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_18c

    .line 6061
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmRecentsAnimationController(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 6063
    :cond_18c
    monitor-exit v0
    :try_end_18d
    .catchall {:try_start_178 .. :try_end_18d} :catchall_192

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6064
    goto/16 :goto_556

    .line 6063
    :catchall_192
    move-exception v1

    :try_start_193
    monitor-exit v0
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6055
    :sswitch_198
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_1a3

    goto :goto_1a4

    :cond_1a3
    move v2, v3

    :goto_1a4
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 6056
    goto/16 :goto_556

    .line 6049
    :sswitch_1a9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1ae
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6050
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 6051
    monitor-exit v0
    :try_end_1c1
    .catchall {:try_start_1ae .. :try_end_1c1} :catchall_1c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6052
    goto/16 :goto_556

    .line 6051
    :catchall_1c6
    move-exception v1

    :try_start_1c7
    monitor-exit v0
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6028
    :sswitch_1cc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 6029
    .local v0, "window":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_1d5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6041
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6042
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 6043
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 6044
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 6045
    monitor-exit v2
    :try_end_1ee
    .catchall {:try_start_1d5 .. :try_end_1ee} :catchall_1f3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6046
    goto/16 :goto_556

    .line 6045
    :catchall_1f3
    move-exception v1

    :try_start_1f4
    monitor-exit v2
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5812
    .end local v0    # "window":Lcom/android/server/wm/WindowState;
    :sswitch_1f9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5813
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_5fc

    goto :goto_24e

    .line 5829
    :pswitch_1ff
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5830
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "animator_duration_scale"

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v5

    .line 5829
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;F)V

    .line 5833
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_24e

    .line 5822
    :pswitch_21c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5823
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v4

    .line 5822
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;F)V

    .line 5826
    goto :goto_24e

    .line 5815
    :pswitch_235
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5816
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v4

    .line 5815
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;F)V

    .line 5819
    nop

    .line 5837
    :goto_24e
    goto/16 :goto_556

    .line 6018
    .end local v0    # "mode":I
    :sswitch_250
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_255
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6019
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_261
    if-ltz v1, :cond_273

    .line 6020
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 6021
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->onWindowReplacementTimeout()V

    .line 6019
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_261

    .line 6023
    .end local v1    # "i":I
    :cond_273
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6024
    monitor-exit v0
    :try_end_27b
    .catchall {:try_start_255 .. :try_end_27b} :catchall_280

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6025
    goto/16 :goto_556

    .line 6024
    :catchall_280
    move-exception v1

    :try_start_281
    monitor-exit v0
    :try_end_282
    .catchall {:try_start_281 .. :try_end_282} :catchall_280

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6009
    :sswitch_286
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_28b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6010
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 6011
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_297

    .line 6012
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 6014
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_297
    monitor-exit v0
    :try_end_298
    .catchall {:try_start_28b .. :try_end_298} :catchall_29d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6015
    goto/16 :goto_556

    .line 6014
    :catchall_29d
    move-exception v1

    :try_start_29e
    monitor-exit v0
    :try_end_29f
    .catchall {:try_start_29e .. :try_end_29f} :catchall_29d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5998
    :sswitch_2a3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2a8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5999
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WallpaperController;

    .line 6001
    .local v1, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    if-eqz v1, :cond_2be

    .line 6002
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v2

    if-eqz v2, :cond_2be

    .line 6003
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 6005
    .end local v1    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    :cond_2be
    monitor-exit v0
    :try_end_2bf
    .catchall {:try_start_2a8 .. :try_end_2bf} :catchall_2c4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6006
    goto/16 :goto_556

    .line 6005
    :catchall_2c4
    move-exception v1

    :try_start_2c5
    monitor-exit v0
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_2c4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5991
    :sswitch_2ca
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2cf
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5992
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 5993
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    .line 5994
    monitor-exit v0
    :try_end_2dd
    .catchall {:try_start_2cf .. :try_end_2dd} :catchall_2e2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5995
    goto/16 :goto_556

    .line 5994
    :catchall_2e2
    move-exception v1

    :try_start_2e3
    monitor-exit v0
    :try_end_2e4
    .catchall {:try_start_2e3 .. :try_end_2e4} :catchall_2e2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5981
    :sswitch_2e8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2ed
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5982
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    if-eqz v2, :cond_2ff

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x7948488b

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v3, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5983
    :cond_2ff
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mcheckBootAnimationCompleteLocked(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    .line 5984
    .local v1, "bootAnimationComplete":Z
    monitor-exit v0
    :try_end_306
    .catchall {:try_start_2ed .. :try_end_306} :catchall_312

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5985
    if-eqz v1, :cond_556

    .line 5986
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mperformEnableScreen(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_556

    .line 5984
    .end local v1    # "bootAnimationComplete":Z
    :catchall_312
    move-exception v1

    :try_start_313
    monitor-exit v0
    :try_end_314
    .catchall {:try_start_313 .. :try_end_314} :catchall_312

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5928
    :sswitch_318
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 5929
    goto/16 :goto_556

    .line 5953
    :sswitch_31f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    .line 5954
    .local v0, "scale":F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 5955
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/Session;

    .line 5956
    .local v1, "session":Lcom/android/server/wm/Session;
    if-eqz v1, :cond_337

    .line 5958
    :try_start_32e
    iget-object v2, v1, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_333
    .catch Landroid/os/RemoteException; {:try_start_32e .. :try_end_333} :catch_334

    goto :goto_335

    .line 5959
    :catch_334
    move-exception v2

    .line 5960
    :goto_335
    goto/16 :goto_556

    .line 5962
    :cond_337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5964
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_341
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5965
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_345
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_361

    .line 5966
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Session;

    iget-object v5, v5, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5965
    add-int/lit8 v4, v4, 0x1

    goto :goto_345

    .line 5969
    .end local v4    # "i":I
    :cond_361
    monitor-exit v3
    :try_end_362
    .catchall {:try_start_341 .. :try_end_362} :catchall_37c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5970
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_366
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_37a

    .line 5972
    :try_start_36c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindowSessionCallback;

    invoke-interface {v4, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_375
    .catch Landroid/os/RemoteException; {:try_start_36c .. :try_end_375} :catch_376

    .line 5974
    goto :goto_377

    .line 5973
    :catch_376
    move-exception v4

    .line 5970
    :goto_377
    add-int/lit8 v3, v3, 0x1

    goto :goto_366

    .line 5977
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v3    # "i":I
    :cond_37a
    goto/16 :goto_556

    .line 5969
    .restart local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :catchall_37c
    move-exception v4

    :try_start_37d
    monitor-exit v3
    :try_end_37e
    .catchall {:try_start_37d .. :try_end_37e} :catchall_37c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 5943
    .end local v0    # "scale":F
    .end local v1    # "session":Lcom/android/server/wm/Session;
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :sswitch_382
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 5944
    .local v0, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_38b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5945
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5946
    .local v2, "callback":Ljava/lang/Runnable;
    monitor-exit v1
    :try_end_399
    .catchall {:try_start_38b .. :try_end_399} :catchall_3a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5947
    if-eqz v2, :cond_556

    .line 5948
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_556

    .line 5946
    .end local v2    # "callback":Ljava/lang/Runnable;
    :catchall_3a3
    move-exception v2

    :try_start_3a4
    monitor-exit v1
    :try_end_3a5
    .catchall {:try_start_3a4 .. :try_end_3a5} :catchall_3a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5933
    .end local v0    # "container":Lcom/android/server/wm/WindowContainer;
    :sswitch_3a9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 5934
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_3b2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5935
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_3c2

    .line 5936
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5938
    :cond_3c2
    monitor-exit v1
    :try_end_3c3
    .catchall {:try_start_3b2 .. :try_end_3c3} :catchall_3c8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5939
    goto/16 :goto_556

    .line 5938
    :catchall_3c8
    move-exception v2

    :try_start_3c9
    monitor-exit v1
    :try_end_3ca
    .catchall {:try_start_3c9 .. :try_end_3ca} :catchall_3c8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5877
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    :sswitch_3ce
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3d3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5878
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_3eb

    .line 5879
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 5880
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "client-timeout"

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5881
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 5883
    :cond_3eb
    monitor-exit v0
    :try_end_3ec
    .catchall {:try_start_3d3 .. :try_end_3ec} :catchall_3f1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5884
    goto/16 :goto_556

    .line 5883
    :catchall_3f1
    move-exception v1

    :try_start_3f2
    monitor-exit v0
    :try_end_3f3
    .catchall {:try_start_3f2 .. :try_end_3f3} :catchall_3f1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5923
    :sswitch_3f7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mshowStrictModeViolation(Lcom/android/server/wm/WindowManagerService;II)V

    .line 5924
    goto/16 :goto_556

    .line 5908
    :sswitch_402
    const/4 v0, 0x0

    .line 5909
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 5910
    .local v1, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_40c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5911
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v5, :cond_427

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x5afec1f7

    const-string v8, "Timeout waiting for drawn: undrawn=%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v6, v7, v3, v8, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5913
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_427
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5914
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v0, v2

    .line 5915
    monitor-exit v4
    :try_end_438
    .catchall {:try_start_40c .. :try_end_438} :catchall_442

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5916
    if-eqz v0, :cond_556

    .line 5917
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_556

    .line 5915
    :catchall_442
    move-exception v2

    :try_start_443
    monitor-exit v4
    :try_end_444
    .catchall {:try_start_443 .. :try_end_444} :catchall_442

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 5903
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "container":Lcom/android/server/wm/WindowContainer;
    :sswitch_448
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 5904
    goto/16 :goto_556

    .line 5898
    :sswitch_44f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 5899
    goto/16 :goto_556

    .line 5888
    :sswitch_456
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_556

    .line 5889
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_461
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5890
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 5891
    monitor-exit v0
    :try_end_469
    .catchall {:try_start_461 .. :try_end_469} :catchall_473

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5892
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_556

    .line 5891
    :catchall_473
    move-exception v1

    :try_start_474
    monitor-exit v0
    :try_end_475
    .catchall {:try_start_474 .. :try_end_475} :catchall_473

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5866
    :sswitch_479
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_47e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5867
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v4, :cond_492

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x1331e106

    const-string v6, "App freeze timeout expired."

    move-object v7, v1

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5868
    :cond_492
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x2

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5869
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4a0
    if-ltz v1, :cond_4b2

    .line 5870
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    .line 5869
    add-int/lit8 v1, v1, -0x1

    goto :goto_4a0

    .line 5872
    .end local v1    # "i":I
    :cond_4b2
    monitor-exit v0
    :try_end_4b3
    .catchall {:try_start_47e .. :try_end_4b3} :catchall_4b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5873
    goto/16 :goto_556

    .line 5872
    :catchall_4b8
    move-exception v1

    :try_start_4b9
    monitor-exit v0
    :try_end_4ba
    .catchall {:try_start_4b9 .. :try_end_4ba} :catchall_4b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5861
    :sswitch_4be
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mperformEnableScreen(Lcom/android/server/wm/WindowManagerService;)V

    .line 5862
    goto/16 :goto_556

    .line 5841
    :sswitch_4c5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_4ca
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5844
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v1

    if-eqz v1, :cond_4e3

    .line 5847
    const/16 v1, 0xf

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5848
    monitor-exit v0
    :try_end_4df
    .catchall {:try_start_4ca .. :try_end_4df} :catchall_4fa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5852
    :cond_4e3
    :try_start_4e3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_4ee

    .line 5853
    monitor-exit v0
    :try_end_4ea
    .catchall {:try_start_4e3 .. :try_end_4ea} :catchall_4fa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5855
    :cond_4ee
    :try_start_4ee
    monitor-exit v0
    :try_end_4ef
    .catchall {:try_start_4ee .. :try_end_4ef} :catchall_4fa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5856
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 5857
    goto :goto_556

    .line 5855
    :catchall_4fa
    move-exception v1

    :try_start_4fb
    monitor-exit v0
    :try_end_4fc
    .catchall {:try_start_4fb .. :try_end_4fc} :catchall_4fa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5800
    :sswitch_500
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5802
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "transition_animation_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5805
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5807
    goto :goto_556

    .line 5792
    :sswitch_53c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 5793
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_545
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5794
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    .line 5795
    monitor-exit v1
    :try_end_54c
    .catchall {:try_start_545 .. :try_end_54c} :catchall_550

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5796
    goto :goto_556

    .line 5795
    :catchall_550
    move-exception v2

    :try_start_551
    monitor-exit v1
    :try_end_552
    .catchall {:try_start_551 .. :try_end_552} :catchall_550

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6160
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_556
    :goto_556
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_561

    .line 6161
    const-string v0, "WindowManager"

    const-string v1, "handleMessage: exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6163
    :cond_561
    return-void

    :sswitch_data_562
    .sparse-switch
        0xb -> :sswitch_53c
        0xe -> :sswitch_500
        0xf -> :sswitch_4c5
        0x10 -> :sswitch_4be
        0x11 -> :sswitch_479
        0x13 -> :sswitch_456
        0x16 -> :sswitch_44f
        0x17 -> :sswitch_448
        0x18 -> :sswitch_402
        0x19 -> :sswitch_3f7
        0x1e -> :sswitch_3ce
        0x20 -> :sswitch_3a9
        0x21 -> :sswitch_382
        0x22 -> :sswitch_31f
        0x24 -> :sswitch_318
        0x25 -> :sswitch_2e8
        0x26 -> :sswitch_2ca
        0x27 -> :sswitch_2a3
        0x29 -> :sswitch_286
        0x2e -> :sswitch_250
        0x33 -> :sswitch_1f9
        0x34 -> :sswitch_1cc
        0x37 -> :sswitch_1a9
        0x3a -> :sswitch_198
        0x3c -> :sswitch_173
        0x3d -> :sswitch_15a
        0x3e -> :sswitch_13d
        0x3f -> :sswitch_120
        0x40 -> :sswitch_ed
        0x41 -> :sswitch_c7
        0x42 -> :sswitch_a2
        0x67 -> :sswitch_99
        0x68 -> :sswitch_90
        0x69 -> :sswitch_6d
        0x6a -> :sswitch_64
        0x6b -> :sswitch_5b
        0x6c -> :sswitch_39
        0x6e -> :sswitch_28
    .end sparse-switch

    :pswitch_data_5fc
    .packed-switch 0x0
        :pswitch_235
        :pswitch_21c
        :pswitch_1ff
    .end packed-switch
.end method

.method sendNewMessageDelayed(ILjava/lang/Object;J)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 6167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 6168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6169
    return-void
.end method
