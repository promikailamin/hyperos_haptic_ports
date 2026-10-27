.class public Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized requestDisplayState(IIFF)V
    .registers 15

    monitor-enter p0

    .line 414
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_68

    .line 415
    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_5d

    .line 417
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq p2, v2, :cond_25

    move v2, v4

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    if-eqz v2, :cond_59

    .line 420
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    move v6, v3

    move v7, v4

    move v8, v7

    :goto_35
    if-ge v6, v5, :cond_5b

    if-ne v6, v1, :cond_3b

    move v9, p2

    goto :goto_45

    .line 422
    :cond_3b
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v9}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    :goto_45
    if-eq v9, v4, :cond_48

    move v7, v3

    .line 426
    :cond_48
    invoke-static {v9}, Landroid/view/Display;->isActiveState(I)Z

    move-result v9

    if-eqz v9, :cond_4f

    move v8, v3

    :cond_4f
    if-nez v7, :cond_54

    if-nez v8, :cond_54

    goto :goto_5b

    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :catchall_57
    move-exception p1

    goto :goto_7e

    :cond_59
    move v7, v4

    move v8, v7

    :cond_5b
    :goto_5b
    move v3, v2

    goto :goto_5f

    :cond_5d
    move v7, v4

    move v8, v7

    .line 437
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_57

    if-ne p2, v4, :cond_6a

    .line 441
    :try_start_62
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    goto :goto_6a

    :catchall_68
    move-exception p1

    goto :goto_80

    :cond_6a
    :goto_6a
    if-eqz v3, :cond_75

    .line 445
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    invoke-interface {v0, v8, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(ZZ)V

    :cond_75
    if-eq p2, v4, :cond_7c

    .line 449
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_68

    .line 451
    :cond_7c
    monitor-exit p0

    return-void

    .line 437
    :goto_7e
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_57

    :try_start_7f
    throw p1

    :goto_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_68

    throw p1
.end method
