.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;
.super Ljava/lang/Object;
.source "PathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Linear"
.end annotation


# instance fields
.field blacklist mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;
    .registers 16

    .line 487
    if-eqz p1, :cond_69

    if-eqz p2, :cond_69

    .line 488
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_60

    .line 489
    array-length v0, p1

    .line 490
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->reset()V

    .line 491
    if-eqz p3, :cond_12

    move v1, v0

    goto :goto_14

    :cond_12
    add-int/lit8 v1, v0, -0x1

    .line 492
    :goto_14
    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mMaxSize:I

    if-eq v2, v3, :cond_27

    .line 493
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    .line 495
    :cond_27
    if-nez v0, :cond_2c

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object p1

    .line 496
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    const/4 v3, 0x0

    aget v4, p1, v3

    aget v5, p2, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->moveTo(FF)V

    .line 497
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3c

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object p1

    .line 499
    :cond_3c
    nop

    :goto_3d
    if-ge v3, v1, :cond_56

    .line 500
    add-int/lit8 v2, v3, 0x1

    rem-int v4, v2, v0

    .line 502
    aget v6, p1, v3

    .line 503
    aget v7, p2, v3

    .line 504
    aget v8, p1, v4

    .line 505
    aget v9, p2, v4

    .line 507
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    aget v10, p1, v4

    aget v11, p2, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->cubicTo(FFFFFF)V

    .line 499
    move v3, v2

    goto :goto_3d

    .line 510
    :cond_56
    if-eqz p3, :cond_5d

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->closePath()V

    .line 511
    :cond_5d
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object p1

    .line 488
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "x/y length mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "x/y null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
