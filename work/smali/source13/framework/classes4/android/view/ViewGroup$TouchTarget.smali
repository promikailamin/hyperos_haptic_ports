.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final greylist-max-o ALL_POINTER_IDS:I = -0x1

.field private static final greylist-max-o MAX_RECYCLED:I = 0x20

.field private static greylist-max-o sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist child:Landroid/view/View;

.field public greylist-max-o next:Landroid/view/ViewGroup$TouchTarget;

.field public greylist-max-o pointerIdBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8935
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 8952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8953
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "pointerIdBits"    # I

    .line 8956
    if-eqz p0, :cond_26

    .line 8961
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8962
    :try_start_5
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_f

    .line 8963
    new-instance v1, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v1}, Landroid/view/ViewGroup$TouchTarget;-><init>()V

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_1d

    .line 8965
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_f
    nop

    .line 8966
    .restart local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 8967
    sget v2, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 8968
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8970
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_23

    .line 8971
    iput-object p0, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 8972
    iput p1, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 8973
    return-object v1

    .line 8970
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 8957
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .registers 5

    .line 8977
    iget-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 8981
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8982
    :try_start_7
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_19

    .line 8983
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v2, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8984
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 8985
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    goto :goto_1b

    .line 8987
    :cond_19
    iput-object v3, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8989
    :goto_1b
    iput-object v3, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 8990
    monitor-exit v0

    .line 8991
    return-void

    .line 8990
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 8978
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already recycled once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
