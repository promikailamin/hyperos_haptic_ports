.class Lcom/android/server/usage/AppStandbyController$Pool;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 500
    .local p0, "this":Lcom/android/server/usage/AppStandbyController$Pool;, "Lcom/android/server/usage/AppStandbyController$Pool<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    .line 501
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    .line 502
    return-void
.end method


# virtual methods
.method declared-synchronized obtain()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/usage/AppStandbyController$Pool;, "Lcom/android/server/usage/AppStandbyController$Pool<TT;>;"
    monitor-enter p0

    .line 506
    :try_start_1
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    aget-object v0, v1, v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    goto :goto_f

    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController$Pool;, "Lcom/android/server/usage/AppStandbyController$Pool<TT;>;"
    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return-object v0

    .line 506
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized recycle(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/usage/AppStandbyController$Pool;, "Lcom/android/server/usage/AppStandbyController$Pool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 510
    :try_start_1
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 511
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    aput-object p1, v1, v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 513
    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController$Pool;, "Lcom/android/server/usage/AppStandbyController$Pool<TT;>;"
    :cond_e
    monitor-exit p0

    return-void

    .line 509
    .end local p1    # "instance":Ljava/lang/Object;, "TT;"
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
