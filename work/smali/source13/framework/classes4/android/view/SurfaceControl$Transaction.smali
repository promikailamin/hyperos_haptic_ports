.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INVALID_COLOR:[F

.field public static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field greylist-max-o mFreeNativeResources:Ljava/lang/Runnable;

.field public greylist-max-o mNativeObject:J

.field private final blacklist mReparentedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 3096
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/view/SurfaceControl$Transaction;

    .line 3097
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3098
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetNativeTransactionFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 3109
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    .line 4717
    new-instance v0, Landroid/view/SurfaceControl$Transaction$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_24
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 3126
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateTransaction()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;-><init>(J)V

    .line 3127
    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "nativeObject"    # J

    .line 3129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    .line 3105
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    .line 3130
    iput-wide p1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 3131
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 3132
    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 3133
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    .line 3105
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    .line 3136
    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;->readFromParcel(Landroid/os/Parcel;)V

    .line 3137
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$Transaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$addTransactionCommittedListener$0(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/view/SurfaceControl$TransactionCommittedListener;

    .line 4677
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4705
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 4706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 4707
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 4708
    sget-object v2, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 4710
    :cond_18
    return-void
.end method


# virtual methods
.method public blacklist SetPassBlurSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 4123
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4124
    if-eqz p2, :cond_16

    .line 4125
    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4126
    :try_start_8
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v5, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPassBlurSurface(JJJ)V

    .line 4127
    monitor-exit v0

    goto :goto_1f

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1

    .line 4129
    :cond_16
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPassBlurSurface(JJJ)V

    .line 4131
    :goto_1f
    return-object p0
.end method

.method public whitelist addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/SurfaceControl$TransactionCommittedListener;

    .line 4676
    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    .line 4678
    .local v0, "listenerInner":Landroid/view/SurfaceControl$TransactionCommittedListener;
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    .line 4679
    return-object p0
.end method

.method public whitelist apply()V
    .registers 2

    .line 3144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 3145
    return-void
.end method

.method public greylist-max-o apply(Z)V
    .registers 4
    .param p1, "sync"    # Z

    .line 3176
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    .line 3177
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->notifyReparentedSurfaces()V

    .line 3178
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZ)V

    .line 3179
    return-void
.end method

.method protected greylist-max-o applyResizedSurfaces()V
    .registers 7

    .line 3185
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2d

    .line 3186
    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 3187
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 3188
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3189
    :try_start_1f
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl;->resize(II)V

    .line 3190
    monitor-exit v3

    .line 3185
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3190
    .restart local v1    # "size":Landroid/graphics/Point;
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :catchall_2a
    move-exception v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v4

    .line 3192
    .end local v0    # "i":I
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_2d
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3193
    return-void
.end method

.method protected blacklist checkPreconditions(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3115
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 3116
    return-void
.end method

.method public blacklist clear()V
    .registers 5

    .line 3153
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3154
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3155
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    .line 3156
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    .line 3158
    :cond_15
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 3165
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3166
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3167
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 3169
    return-void
.end method

.method public whitelist deferAnimation(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "num"    # I

    .line 4648
    if-gez p2, :cond_3

    .line 4649
    return-object p0

    .line 4651
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4652
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeDeferAnimation(JJI)V

    .line 4653
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4714
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "isEnable"    # Z

    .line 4105
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeEnableWallpaperAnim(JZ)V

    .line 4106
    return-object p0
.end method

.method public greylist hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3267
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3268
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3269
    return-object p0
.end method

.method public whitelist merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl$Transaction;

    .line 4580
    if-ne p0, p1, :cond_3

    .line 4581
    return-object p0

    .line 4583
    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4584
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4585
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4586
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4587
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeMergeTransaction(JJ)V

    .line 4588
    return-object p0
.end method

.method protected blacklist notifyReparentedSurfaces()V
    .registers 9

    .line 3199
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3200
    .local v0, "reparentCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_4f

    .line 3201
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 3202
    .local v2, "child":Landroid/view/SurfaceControl;
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3203
    :try_start_17
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 3204
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 3205
    .local v4, "listenerCount":I
    :goto_27
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_28
    if-ge v5, v4, :cond_42

    .line 3206
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$OnReparentListener;

    .line 3207
    .local v6, "listener":Landroid/view/SurfaceControl$OnReparentListener;
    iget-object v7, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    invoke-interface {v6, p0, v7}, Landroid/view/SurfaceControl$OnReparentListener;->onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 3205
    .end local v6    # "listener":Landroid/view/SurfaceControl$OnReparentListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 3209
    .end local v5    # "j":I
    :cond_42
    iget-object v5, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3210
    nop

    .end local v4    # "listenerCount":I
    monitor-exit v3

    .line 3200
    .end local v2    # "child":Landroid/view/SurfaceControl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3210
    .restart local v2    # "child":Landroid/view/SurfaceControl;
    :catchall_4c
    move-exception v4

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_4c

    throw v4

    .line 3212
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/SurfaceControl;
    :cond_4f
    return-void
.end method

.method public blacklist remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 4604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4605
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 4606
    return-object p0
.end method

.method public blacklist removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "displayId"    # I

    .line 4301
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeRemoveCurrentInputFocus(JI)V

    .line 4302
    return-object p0
.end method

.method public whitelist reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 3672
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3673
    const-wide/16 v0, 0x0

    .line 3674
    .local v0, "otherObject":J
    if-eqz p2, :cond_c

    .line 3675
    invoke-static {p2}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 3676
    iget-wide v0, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 3678
    :cond_c
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReparent(JJJ)V

    .line 3679
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    return-object p0
.end method

.method public blacklist requestFocusTransfer(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "focusedToken"    # Landroid/os/IBinder;
    .param p4, "focusedWindowName"    # Ljava/lang/String;
    .param p5, "displayId"    # I

    .line 4289
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4291
    return-object p0
.end method

.method public blacklist sanitize()V
    .registers 3

    .line 4548
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSanitize(J)V

    .line 4549
    return-void
.end method

.method public whitelist setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "alpha"    # F

    .line 3403
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3404
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAlpha(JJF)V

    .line 3405
    return-object p0
.end method

.method public greylist-max-o setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 3892
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAnimationTransaction(J)V

    .line 3893
    return-object p0
.end method

.method public blacklist setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "radius"    # I

    .line 3607
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3608
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBackgroundBlurRadius(JJI)V

    .line 3609
    return-object p0
.end method

.method public blacklist setBlurRegions(Landroid/view/SurfaceControl;[[F)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "regions"    # [[F

    .line 3622
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3623
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    array-length v5, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBlurRegions(JJ[[FI)V

    .line 3624
    return-object p0
.end method

.method public blacklist setBlurScaleRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "blurScaleRatio"    # F

    .line 3592
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 3593
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBlurScaleRatio(JJF)V

    .line 3594
    return-object p0
.end method

.method public blacklist setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/graphics/GraphicBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4330
    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 4346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "fence"    # Landroid/hardware/SyncFence;

    .line 4375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "fence"    # Landroid/hardware/SyncFence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/hardware/HardwareBuffer;",
            "Landroid/hardware/SyncFence;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .line 4418
    .local p4, "releaseCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/SyncFence;>;"
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4419
    if-eqz p3, :cond_1c

    .line 4420
    invoke-virtual {p3}, Landroid/hardware/SyncFence;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4421
    :try_start_a
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 4422
    invoke-virtual {p3}, Landroid/hardware/SyncFence;->getNativeFence()J

    move-result-wide v6

    .line 4421
    move-object v5, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    .line 4423
    monitor-exit v0

    goto :goto_27

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v1

    .line 4425
    :cond_1c
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v7, 0x0

    move-object v6, p2

    move-object v9, p4

    invoke-static/range {v2 .. v9}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    .line 4427
    :goto_27
    return-object p0
.end method

.method public whitelist setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 3318
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3319
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetSize(JJII)V

    .line 3321
    return-object p0
.end method

.method public whitelist setBufferTransform(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transform"    # I

    .line 4445
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4446
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBufferTransform(JJI)V

    .line 4447
    return-object p0
.end method

.method public whitelist setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "enable"    # Z

    .line 4621
    if-eqz p2, :cond_a

    .line 4622
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 4623
    :cond_a
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4624
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4626
    :cond_1b
    :goto_1b
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 4627
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_27

    const/16 v0, 0x800

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    move v5, v0

    const/16 v6, 0x800

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 4628
    return-object p0
.end method

.method public greylist setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # [F

    .line 3691
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3692
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    .line 3693
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4498
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4499
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 4500
    const/high16 v0, 0x88a0000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a

    .line 4502
    :cond_15
    const/high16 v0, 0x8810000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4504
    :goto_1a
    return-object p0
.end method

.method public blacklist setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "agnostic"    # Z

    .line 3503
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3504
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V

    .line 3505
    return-object p0
.end method

.method public blacklist setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # [F
    .param p3, "translation"    # [F

    .line 3491
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3492
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorTransform(JJ[F[F)V

    .line 3493
    return-object p0
.end method

.method public greylist-max-r setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "cornerRadius"    # F

    .line 3580
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3581
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCornerRadius(JJF)V

    .line 3583
    return-object p0
.end method

.method public whitelist setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 24
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .line 3544
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3545
    if-eqz v2, :cond_24

    .line 3546
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isValid()Z

    move-result v3

    const-string v4, "Crop isn\'t valid."

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3547
    iget-wide v5, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v7, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v5 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_34

    .line 3550
    :cond_24
    iget-wide v13, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v15, v3

    invoke-static/range {v13 .. v20}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    .line 3553
    :goto_34
    return-object v0
.end method

.method public whitelist setDamageRegion(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 4463
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V

    .line 4464
    return-object p0
.end method

.method public whitelist setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dataspace"    # I

    .line 4517
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4518
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDataSpace(JJI)V

    .line 4519
    return-object p0
.end method

.method public blacklist setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 4566
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4567
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    .line 4568
    return-object p0
.end method

.method public blacklist setDesintationFrame(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "destinationFrame"    # Landroid/graphics/Rect;

    .line 4555
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4556
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    .line 4559
    return-object p0
.end method

.method public blacklist setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dimmingEnabled"    # Z

    .line 4483
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4484
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDimmingEnabled(JJZ)V

    .line 4485
    return-object p0
.end method

.method public blacklist setDisplayDecoration(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "displayDecoration"    # Z

    .line 3725
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3726
    if-eqz p2, :cond_11

    .line 3727
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x200

    const/16 v5, 0x200

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    .line 3730
    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x200

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3732
    :goto_1b
    return-object p0
.end method

.method public blacklist setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 3818
    if-eqz p1, :cond_8

    .line 3821
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    .line 3822
    return-object p0

    .line 3819
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "layerStack"    # I

    .line 3807
    if-eqz p1, :cond_8

    .line 3810
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    .line 3811
    return-object p0

    .line 3808
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 20
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "orientation"    # I
    .param p3, "layerStackRect"    # Landroid/graphics/Rect;
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .line 3830
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_35

    .line 3833
    if-eqz v1, :cond_2d

    .line 3836
    if-eqz v2, :cond_25

    .line 3839
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    .line 3842
    return-object v0

    .line 3837
    :cond_25
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3834
    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "layerStackRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3831
    :cond_35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayToken must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist-max-o setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3849
    if-eqz p1, :cond_15

    .line 3852
    if-lez p2, :cond_c

    if-lez p3, :cond_c

    .line 3856
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V

    .line 3857
    return-object p0

    .line 3853
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3850
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .registers 8
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 3789
    if-eqz p1, :cond_1b

    .line 3793
    if-eqz p2, :cond_13

    .line 3794
    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3795
    :try_start_7
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    .line 3796
    monitor-exit v0

    goto :goto_1a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 3798
    :cond_13
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    .line 3800
    :goto_1a
    return-object p0

    .line 3790
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "mode"    # I

    .line 4539
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4540
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDropInputMode(JJI)V

    .line 4541
    return-object p0
.end method

.method public blacklist setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 3915
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupEnd(J)V

    .line 3916
    return-object p0
.end method

.method public blacklist setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 3905
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupStart(J)V

    .line 3906
    return-object p0
.end method

.method public blacklist setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transformHint"    # I

    .line 3339
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3340
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    .line 3341
    return-object p0
.end method

.method public blacklist setFlags(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "flag"    # I

    .line 3779
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3780
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3781
    return-object p0
.end method

.method public blacklist setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 4269
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4271
    return-object p0
.end method

.method public whitelist setFrameRate(Landroid/view/SurfaceControl;FI)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "frameRate"    # F
    .param p3, "compatibility"    # I

    .line 4210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;
    .registers 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "frameRate"    # F
    .param p3, "compatibility"    # I
    .param p4, "changeFrameRateStrategy"    # I

    .line 4250
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4251
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    .line 4253
    return-object p0
.end method

.method public blacklist setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "priority"    # I

    .line 3239
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 3240
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V

    .line 3241
    return-object p0
.end method

.method public blacklist setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "frameTimelineVsyncId"    # J

    .line 4641
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameTimelineVsync(JJ)V

    .line 4642
    return-object p0
.end method

.method public whitelist setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "destFrame"    # Landroid/graphics/Rect;
    .param p4, "orientation"    # I

    .line 3446
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3447
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v6, p4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    .line 3448
    return-object p0
.end method

.method public blacklist setHdrDimmer(Landroid/view/SurfaceControl;ZLjava/util/List;Ljava/util/List;)Landroid/view/SurfaceControl$Transaction;
    .registers 21
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .line 4026
    .local p3, "brightRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p4, "dimRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-class v3, F

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4027
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    .line 4028
    .local v13, "brightRegionLength":I
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x13

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v13, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, [[F

    .line 4029
    .local v14, "brightRegionArray":[[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    const/4 v8, 0x3

    const/16 v9, 0x8

    if-ge v5, v13, :cond_6b

    .line 4030
    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    aput v11, v10, v7

    .line 4031
    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    aput v11, v10, v6

    .line 4032
    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    aput v11, v10, v4

    .line 4033
    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    aput v11, v10, v8

    .line 4034
    aget-object v8, v14, v5

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v8, v10

    .line 4035
    aget-object v8, v14, v5

    aput v11, v8, v9

    .line 4036
    aget-object v8, v14, v5

    const/16 v9, 0xc

    aput v11, v8, v9

    .line 4029
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 4039
    .end local v5    # "i":I
    :cond_6b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 4040
    .local v15, "dimRegionLength":I
    new-array v5, v4, [I

    aput v9, v5, v6

    aput v15, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 4041
    .local v3, "dimRegionArray":[[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7c
    if-ge v5, v15, :cond_b1

    .line 4042
    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    aput v10, v9, v7

    .line 4043
    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    aput v10, v9, v6

    .line 4044
    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    aput v10, v9, v4

    .line 4045
    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    aput v10, v9, v8

    .line 4041
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 4047
    .end local v5    # "i":I
    :cond_b1
    iget-wide v4, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v12, p1

    iget-wide v6, v12, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v8, p2

    move-object v9, v14

    move v10, v13

    move-object v11, v3

    move v12, v15

    invoke-static/range {v4 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetHdrDimmer(JJZ[[FI[[FI)V

    .line 4049
    return-object v0
.end method

.method public blacklist setHdrDimmerRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "ratio"    # F

    .line 4055
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4056
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetHdrDimmerRatio(JJF)V

    .line 4057
    return-object p0
.end method

.method public blacklist setHdrDimmerRt(Landroid/view/SurfaceControl;ZLjava/util/List;Ljava/util/List;)Landroid/view/SurfaceControl$Transaction;
    .registers 23
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Z",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .line 3974
    .local p3, "brightRegions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/graphics/RectF;[F>;>;"
    .local p4, "dimRegions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/graphics/RectF;[F>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-class v3, F

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3975
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    .line 3976
    .local v13, "brightRegionLength":I
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x13

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v13, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, [[F

    .line 3977
    .local v14, "brightRegionArray":[[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v15, 0x3

    if-ge v5, v13, :cond_17d

    .line 3979
    aget-object v16, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    aput v12, v16, v7

    .line 3980
    aget-object v12, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v12, v6

    .line 3981
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    aput v12, v8, v4

    .line 3982
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    aput v12, v8, v15

    .line 3984
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v7

    aput v12, v8, v11

    .line 3985
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v6

    aput v12, v8, v10

    .line 3986
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v4

    aput v12, v8, v9

    .line 3987
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v15

    const/4 v15, 0x7

    aput v12, v8, v15

    .line 3988
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v11, v12, v11

    const/16 v12, 0x8

    aput v11, v8, v12

    .line 3989
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [F

    aget v10, v11, v10

    const/16 v11, 0x9

    aput v10, v8, v11

    .line 3990
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [F

    aget v9, v10, v9

    const/16 v10, 0xa

    aput v9, v8, v10

    .line 3991
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    const/4 v12, 0x7

    aget v9, v9, v12

    const/16 v12, 0xb

    aput v9, v8, v12

    .line 3992
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    const/16 v15, 0x8

    aget v9, v9, v15

    const/16 v15, 0xc

    aput v9, v8, v15

    .line 3994
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v11

    const/16 v11, 0xd

    aput v9, v8, v11

    .line 3995
    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v10

    const/16 v10, 0xe

    aput v9, v8, v10

    .line 3997
    aget-object v8, v14, v5

    const/16 v9, 0xf

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [F

    aget v7, v7, v12

    aput v7, v8, v9

    .line 3998
    aget-object v7, v14, v5

    const/16 v8, 0x10

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v15

    aput v9, v7, v8

    .line 3999
    aget-object v7, v14, v5

    const/16 v8, 0x11

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v11

    aput v9, v7, v8

    .line 4000
    aget-object v7, v14, v5

    const/16 v8, 0x12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v10

    aput v9, v7, v8

    .line 3977
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_22

    .line 4002
    .end local v5    # "i":I
    :cond_17d
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    .line 4003
    .local v12, "dimRegionLength":I
    new-array v5, v4, [I

    const/16 v7, 0x8

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v12, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 4004
    .local v3, "dimRegionArray":[[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_191
    if-ge v5, v12, :cond_21d

    .line 4006
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/16 v16, 0x0

    aput v8, v7, v16

    .line 4007
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v7, v6

    .line 4008
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    aput v8, v7, v4

    .line 4009
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    aput v8, v7, v15

    .line 4011
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    const/16 v16, 0x0

    aget v8, v8, v16

    aput v8, v7, v11

    .line 4012
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v6

    aput v8, v7, v10

    .line 4013
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v15

    aput v8, v7, v9

    .line 4014
    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v4

    const/16 v17, 0x7

    aput v8, v7, v17

    .line 4004
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_191

    .line 4016
    .end local v5    # "i":I
    :cond_21d
    iget-wide v4, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v6, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v8, p2

    move-object v9, v14

    move v10, v13

    move-object v11, v3

    move/from16 v16, v12

    .end local v12    # "dimRegionLength":I
    .local v16, "dimRegionLength":I
    invoke-static/range {v4 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetHdrDimmer(JJZ[[FI[[FI)V

    .line 4018
    return-object v0
.end method

.method public blacklist setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "handle"    # Landroid/view/InputWindowHandle;

    .line 3412
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3413
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    .line 3414
    return-object p0
.end method

.method public whitelist setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "z"    # I

    .line 3369
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3370
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayer(JJI)V

    .line 3371
    return-object p0
.end method

.method public greylist-max-o setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "layerStack"    # I

    .line 3655
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3656
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayerStack(JJI)V

    .line 3657
    return-object p0
.end method

.method public blacklist setLimitedFrameRate(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "frameRate"    # I

    .line 3865
    if-eqz p1, :cond_21

    .line 3868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLimitedFrameRate to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V

    .line 3871
    return-object p0

    .line 3866
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 14
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F

    .line 3457
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3458
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMatrix(JJFFFF)V

    .line 3460
    return-object p0
.end method

.method public greylist setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "float9"    # [F

    .line 3474
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3475
    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 3477
    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x5

    aget v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3478
    return-object p0
.end method

.method public blacklist setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "key"    # I
    .param p3, "data"    # I

    .line 3924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3925
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    :try_start_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 3929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3930
    nop

    .line 3931
    return-object p0

    .line 3929
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3930
    throw v1
.end method

.method public blacklist setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "key"    # I
    .param p3, "data"    # Landroid/os/Parcel;

    .line 3939
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3940
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V

    .line 3941
    return-object p0
.end method

.method public blacklist setMiBlendModes(Landroid/view/SurfaceControl;[[I)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "miBlendModes"    # [[I

    .line 3645
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3646
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    array-length v5, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMiBlendModes(JJ[[II)V

    .line 3647
    return-object p0
.end method

.method public blacklist setMiSecurityDisplay(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "isSecurity"    # Z

    .line 3878
    if-eqz p1, :cond_21

    .line 3881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMiSecurityDisplay to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V

    .line 3884
    return-object p0

    .line 3879
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMiShadow(Landroid/view/SurfaceControl;IFFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 16
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # I
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "radius"    # F
    .param p6, "dispersion"    # F

    .line 4176
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    const/high16 v7, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMiShadow(Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setMiShadow(Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;)Landroid/view/SurfaceControl$Transaction;
    .registers 24
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # I
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "radius"    # F
    .param p6, "dispersion"    # F
    .param p7, "cornerRadius"    # F
    .param p8, "shadowBounds"    # Landroid/graphics/RectF;

    .line 4186
    move-object v0, p0

    move-object/from16 v1, p8

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4187
    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_3e

    .line 4188
    .local v2, "bounds":[F
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 4189
    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/RectF;->left:F

    aput v4, v2, v3

    .line 4190
    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    .line 4191
    const/4 v3, 0x2

    iget v4, v1, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    .line 4192
    const/4 v3, 0x3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    .line 4194
    :cond_26
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v14, p1

    iget-wide v5, v14, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object v13, v2

    invoke-static/range {v3 .. v13}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMiShadow(JJIFFFFF[F)V

    .line 4196
    return-object v0

    nop

    :array_3e
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public whitelist setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isOpaque"    # Z

    .line 3764
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3765
    if-eqz p2, :cond_f

    .line 3766
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_18

    .line 3768
    :cond_f
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3770
    :goto_18
    return-object p0
.end method

.method public whitelist setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3283
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3284
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPosition(JJFF)V

    .line 3285
    return-object p0
.end method

.method public greylist-max-o setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "z"    # I

    .line 3378
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3379
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v4, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetRelativeLayer(JJJI)V

    .line 3380
    return-object p0
.end method

.method public whitelist setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .line 3299
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3300
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    const-string v4, "Negative value passed in for scaleX"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3301
    cmpl-float v0, p3, v0

    if-ltz v0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    const-string v0, "Negative value passed in for scaleY"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3302
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetScale(JJFF)V

    .line 3303
    return-object p0
.end method

.method public whitelist setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "flag"    # I

    .line 4613
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 4614
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetScreenProjection(JJI)V

    .line 4615
    return-object p0
.end method

.method public greylist-max-o setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isSecure"    # Z

    .line 3712
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3713
    if-eqz p2, :cond_11

    .line 3714
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    .line 3716
    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3718
    :goto_1b
    return-object p0
.end method

.method public blacklist setSelfBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "selfBlurRadius"    # I

    .line 4085
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4086
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetSelfBlurRadius(JJI)V

    .line 4087
    return-object p0
.end method

.method public blacklist setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "shadowRadius"    # F

    .line 3962
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3963
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetShadowRadius(JJF)V

    .line 3964
    return-object p0
.end method

.method public blacklist setShadowSettings(Landroid/view/SurfaceControl;IF[FFFFI)Landroid/view/SurfaceControl$Transaction;
    .registers 22
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "shadowType"    # I
    .param p3, "length"    # F
    .param p4, "color"    # [F
    .param p5, "offsetX"    # F
    .param p6, "offsetY"    # F
    .param p7, "outset"    # F
    .param p8, "numOfLayers"    # I

    .line 4163
    move-object v0, p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4164
    invoke-static/range {p4 .. p4}, Landroid/view/SurfaceControl;->-$$Nest$smvalidateColorArg([F)V

    .line 4165
    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object v12, p1

    iget-wide v3, v12, Landroid/view/SurfaceControl;->mNativeObject:J

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetShadowSettings(JJIF[FFFFI)V

    .line 4167
    return-object v0
.end method

.method public blacklist setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "skipScrenshot"    # Z

    .line 4312
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4313
    if-eqz p2, :cond_11

    .line 4314
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x40

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    .line 4316
    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x40

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 4318
    :goto_1b
    return-object p0
.end method

.method public blacklist setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 28
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "vecX"    # F
    .param p5, "vecY"    # F
    .param p6, "maxStretchAmountX"    # F
    .param p7, "maxStretchAmountY"    # F
    .param p8, "childRelativeLeft"    # F
    .param p9, "childRelativeTop"    # F
    .param p10, "childRelativeRight"    # F
    .param p11, "childRelativeBottom"    # F

    .line 3634
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3635
    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v1 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V

    .line 3638
    return-object v0
.end method

.method public blacklist setSurfaceRotation(Landroid/view/SurfaceControl;[F[F[FFF)Landroid/view/SurfaceControl$Transaction;
    .registers 24
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "rotDegrees"    # [F
    .param p3, "rotCenterOffsets"    # [F
    .param p4, "layerOffsets"    # [F
    .param p5, "camDegree"    # F
    .param p6, "spaceDepth"    # F

    .line 4071
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4073
    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v5, 0x0

    aget v6, p2, v5

    const/4 v7, 0x1

    aget v8, p2, v7

    const/4 v9, 0x2

    aget v10, p2, v9

    aget v11, p3, v5

    aget v12, p3, v7

    aget v13, p4, v5

    aget v14, p4, v7

    aget v16, p4, v9

    move v5, v6

    move v6, v8

    move v7, v10

    move v8, v11

    move v9, v12

    move v10, v13

    move v11, v14

    move/from16 v12, v16

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-static/range {v1 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetSurfaceRotation(JJFFFFFFFFFF)V

    .line 4077
    return-object v0
.end method

.method public greylist-max-o setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transparentRegion"    # Landroid/graphics/Region;

    .line 3387
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3388
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    .line 3390
    return-object p0
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isTrustedOverlay"    # Z

    .line 4528
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4529
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTrustedOverlay(JJZ)V

    .line 4530
    return-object p0
.end method

.method public blacklist setUpdateTextureFlag(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "updateTexture"    # Z

    .line 4136
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4137
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetUpdateTextureFlag(JJZ)V

    .line 4138
    return-object p0
.end method

.method public blacklist setUseParentSelfBlur(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "useParent"    # Z

    .line 4092
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4093
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_c

    const/high16 v4, 0x10000

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const/high16 v5, 0x10000

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 4094
    return-object p0
.end method

.method public whitelist setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "visible"    # Z

    .line 3223
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3224
    if-eqz p2, :cond_a

    .line 3225
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    .line 3227
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setWallPaperAnimProcess(F)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "process"    # F

    .line 4114
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWallpaperAnimProcess(JF)V

    .line 4115
    return-object p0
.end method

.method public blacklist setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3566
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3567
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    .line 3568
    return-object p0
.end method

.method public greylist setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 22
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3523
    if-eqz v2, :cond_1b

    .line 3524
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_29

    .line 3527
    :cond_1b
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    .line 3530
    :goto_29
    return-object v0
.end method

.method public greylist show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3253
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3254
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3255
    return-object p0
.end method

.method public blacklist syncInputWindows()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 3424
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSyncInputWindows(J)V

    .line 3425
    return-object p0
.end method

.method public blacklist unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3701
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3702
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    sget-object v4, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    .line 3703
    return-object p0
.end method

.method public blacklist unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3352
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3353
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    .line 3354
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4692
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 4693
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4694
    return-void

    .line 4697
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4698
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    .line 4699
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1f

    .line 4700
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    .line 4702
    :cond_1f
    return-void
.end method
