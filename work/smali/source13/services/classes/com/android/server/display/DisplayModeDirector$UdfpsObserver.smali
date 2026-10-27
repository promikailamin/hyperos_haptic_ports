.class Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;
.super Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdfpsObserver"
.end annotation


# instance fields
.field private final mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 2319
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;-><init>()V

    .line 2320
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$UdfpsObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    return-void
.end method

.method private updateHbmStateLocked(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .line 2345
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2346
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(I)V

    .line 2347
    return-void
.end method

.method private updateVoteLocked(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 2351
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2352
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 2353
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .line 2354
    .local v1, "maxRefreshRate":F
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    .line 2355
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_27

    .line 2356
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 2354
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2359
    :cond_2a
    invoke-static {v1, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 2360
    .end local v1    # "maxRefreshRate":F
    .local v0, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_30

    .line 2361
    .end local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_2f
    const/4 v0, 0x0

    .line 2364
    .restart local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_30
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v2, 0xc

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2365
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2368
    const-string v0, "  UdfpsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    const-string v0, "    mLocalHbmEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 2371
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2372
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "enabled"

    goto :goto_26

    :cond_24
    const-string v2, "disabled"

    .line 2373
    .local v2, "enabled":Ljava/lang/String;
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    .end local v1    # "displayId":I
    .end local v2    # "enabled":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2375
    .end local v0    # "i":I
    :cond_49
    return-void
.end method

.method public observe()V
    .registers 2

    .line 2323
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2324
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2325
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_d

    .line 2326
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 2328
    :cond_d
    return-void
.end method

.method public onHbmDisabled(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2339
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2340
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateHbmStateLocked(IZ)V

    .line 2341
    monitor-exit v0

    .line 2342
    return-void

    .line 2341
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onHbmEnabled(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2332
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2333
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateHbmStateLocked(IZ)V

    .line 2334
    monitor-exit v0

    .line 2335
    return-void

    .line 2334
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method
