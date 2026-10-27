.class public final Lcom/android/server/UiModeManagerService$LocalService;
.super Lcom/android/server/UiModeManagerInternal;
.source "UiModeManagerService.java"


# instance fields
.field public final mContrastListeners:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContrastListeners(Lcom/android/server/UiModeManagerService$LocalService;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->mContrastListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 2696
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Lcom/android/server/UiModeManagerInternal;-><init>()V

    .line 2697
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->mContrastListeners:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getDisplayUiMode(I)I
    .registers 5

    .line 2756
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2757
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-nez p1, :cond_22

    .line 2762
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurUiMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    goto :goto_46

    :cond_22
    and-int/lit8 v1, p1, 0xf

    if-nez v1, :cond_33

    .line 2766
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurUiMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    or-int/2addr p1, v1

    :cond_33
    and-int/lit8 v1, p1, 0x30

    if-nez v1, :cond_44

    .line 2770
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurUiMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p0

    and-int/lit8 p0, p0, 0x30

    or-int/2addr p1, p0

    .line 2772
    :cond_44
    monitor-exit v0

    return p1

    .line 2773
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_20

    throw p0
.end method

.method public isNightMode(I)Z
    .registers 6

    .line 2702
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2704
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    and-int/lit8 v1, p1, 0x30

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_2a

    :goto_1b
    move v2, v3

    goto :goto_2a

    .line 2709
    :cond_1d
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmConfiguration(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2a

    goto :goto_1b

    .line 2719
    :cond_2a
    :goto_2a
    monitor-exit v0

    return v2

    :catchall_2c
    move-exception p0

    .line 2720
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setDisplayUiMode(II)V
    .registers 7

    if-eqz p1, :cond_8b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_83

    .line 2732
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2733
    :try_start_c
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1d

    .line 2736
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_81

    :cond_1d
    and-int/lit8 v1, p2, 0xf

    if-nez v1, :cond_47

    and-int/lit8 v1, p2, 0x30

    if-nez v1, :cond_47

    .line 2740
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing UI mode override on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_70

    .line 2743
    :cond_47
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting UI mode override on display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2747
    :goto_70
    invoke-static {}, Landroid/app/UiModeManager;->invalidateCurrentModeTypeCache()V

    .line 2748
    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    .line 2750
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_1b

    .line 2751
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmWindowManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->onDisplayUiModeChanged(I)V

    return-void

    .line 2750
    :goto_81
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_1b

    throw p0

    .line 2730
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not override uiMode for invalid display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2726
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not override uiMode for DEFAULT_DISPLAY, the default display follows the device-level uiMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
