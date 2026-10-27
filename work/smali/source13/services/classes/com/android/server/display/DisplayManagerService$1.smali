.class Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 293
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized requestDisplayState(IIFF)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "state"    # I
    .param p3, "brightness"    # F
    .param p4, "sdrBrightness"    # F

    monitor-enter p0

    .line 298
    const/4 v0, 0x1

    .line 299
    .local v0, "allInactive":Z
    const/4 v1, 0x1

    .line 301
    .local v1, "allOff":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_7a

    .line 302
    :try_start_a
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 303
    .local v3, "index":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-le v3, v4, :cond_57

    .line 304
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 305
    .local v4, "currentState":I
    if-eq p2, v4, :cond_26

    move v6, v5

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    .line 306
    .local v6, "stateChanged":Z
    :goto_27
    if-eqz v6, :cond_56

    .line 307
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 308
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_34
    if-ge v8, v7, :cond_56

    .line 309
    if-ne v8, v3, :cond_3a

    move v9, p2

    goto :goto_44

    :cond_3a
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v9}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 310
    .local v9, "displayState":I
    :goto_44
    if-eq v9, v5, :cond_47

    .line 311
    const/4 v1, 0x0

    .line 313
    :cond_47
    invoke-static {v9}, Landroid/view/Display;->isActiveState(I)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 314
    const/4 v0, 0x0

    .line 316
    :cond_4e
    if-nez v1, :cond_53

    if-nez v0, :cond_53

    .line 317
    goto :goto_56

    .line 308
    .end local v9    # "displayState":I
    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 321
    .end local v4    # "currentState":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_56
    :goto_56
    goto :goto_59

    .line 322
    .end local v6    # "stateChanged":Z
    :cond_57
    const/4 v4, 0x0

    move v6, v4

    .line 324
    .end local v3    # "index":I
    .restart local v6    # "stateChanged":Z
    :goto_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_75

    .line 327
    if-ne p2, v5, :cond_61

    .line 328
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    .line 331
    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService$1;
    :cond_61
    if-eqz v6, :cond_6c

    .line 332
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(ZZ)V

    .line 335
    :cond_6c
    if-eq p2, v5, :cond_73

    .line 336
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_7a

    .line 338
    :cond_73
    monitor-exit p0

    return-void

    .line 324
    .end local v6    # "stateChanged":Z
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService$1;
    :catchall_75
    move-exception v3

    :goto_76
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_78

    :try_start_77
    throw v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_7a

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService$1;
    :catchall_78
    move-exception v3

    goto :goto_76

    .line 297
    .end local v0    # "allInactive":Z
    .end local v1    # "allOff":Z
    .end local p1    # "displayId":I
    .end local p2    # "state":I
    .end local p3    # "brightness":F
    .end local p4    # "sdrBrightness":F
    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
