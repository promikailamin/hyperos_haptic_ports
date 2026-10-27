.class public Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
.super Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;
.source "DisplayModeDirector.java"


# instance fields
.field public final mAuthenticationPossible:Landroid/util/SparseBooleanArray;

.field public final mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .registers 2

    .line 2782
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;-><init>()V

    .line 2783
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 2784
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 2840
    const-string v0, "  UdfpsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string v0, "    mUdfpsRefreshRateEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2842
    :goto_c
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const-string v3, ": "

    const-string v4, "      Display "

    if-ge v1, v2, :cond_46

    .line 2843
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2844
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "enabled"

    goto :goto_2b

    :cond_29
    const-string v5, "disabled"

    .line 2845
    :goto_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2847
    :cond_46
    const-string v1, "    mAuthenticationPossible: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    :goto_4b
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 2849
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2850
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "possible"

    goto :goto_67

    .line 2851
    :cond_65
    const-string v2, "impossible"

    .line 2852
    :goto_67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_82
    return-void
.end method

.method public observe()V
    .registers 4

    .line 2787
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_23

    .line 2794
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101df

    .line 2795
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 2797
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onAuthenticationPossible(IZ)V
    .registers 5

    .line 2819
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2820
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xe

    .line 2821
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IZI)V

    .line 2823
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onRequestDisabled(I)V
    .registers 5

    .line 2811
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2812
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x17

    .line 2813
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IZI)V

    .line 2814
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onRequestEnabled(I)V
    .registers 5

    .line 2803
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2804
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x17

    .line 2805
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IZI)V

    .line 2806
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final updateVoteLocked(IZI)V
    .registers 4

    if-eqz p2, :cond_d

    .line 2830
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    move-result p2

    .line 2831
    invoke-static {p2, p2}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p2

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 2835
    :goto_e
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
