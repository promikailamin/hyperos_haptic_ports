.class public Lcom/android/server/usage/AppStandbyController$Pool;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# instance fields
.field public final mArray:[Ljava/lang/Object;

.field public mSize:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 520
    iput v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    .line 523
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    .line 528
    :try_start_1
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    aget-object v0, v1, v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception v0

    goto :goto_13

    :cond_10
    const/4 v0, 0x0

    :goto_11
    monitor-exit p0

    return-object v0

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_e

    throw v0
.end method

.method public declared-synchronized recycle(Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 532
    :try_start_1
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    add-int/lit8 v2, v0, 0x1

    .line 533
    iput v2, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    aput-object p1, v1, v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 535
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method
