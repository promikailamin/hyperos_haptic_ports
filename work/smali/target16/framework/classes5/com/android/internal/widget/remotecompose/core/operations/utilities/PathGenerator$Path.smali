.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;
.super Ljava/lang/Object;
.source "PathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Path"
.end annotation


# static fields
.field public static final blacklist CLOSE:I = 0xf

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CUBIC:I = 0xe

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist MOVE:I = 0xa

.field public static final blacklist MOVE_NAN:F


# instance fields
.field blacklist mCx:F

.field blacklist mCy:F

.field blacklist mMaxSize:I

.field blacklist mPath:[F

.field blacklist mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->MOVE_NAN:F

    .line 52
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->CUBIC_NAN:F

    .line 53
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->CLOSE_NAN:F

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0xa

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mMaxSize:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCx:F

    .line 47
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCy:F

    .line 56
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mMaxSize:I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist closePath()V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    sget v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->CLOSE_NAN:F

    aput v2, v0, v1

    .line 95
    return-void
.end method

.method public blacklist copyPoints([F)I
    .registers 5

    .line 60
    if-eqz p1, :cond_38

    .line 63
    array-length v0, p1

    .line 64
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    if-lt v0, v1, :cond_12

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    return p1

    .line 65
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "points too small "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "points null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist cubicTo(FFFFFF)V
    .registers 10

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    sget v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->CUBIC_NAN:F

    aput v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCx:F

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCy:F

    aput v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p1, v0, v1

    .line 84
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p2, p1, v0

    .line 85
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p3, p1, p2

    .line 86
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p4, p1, p2

    .line 87
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p5, p1, p2

    .line 88
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p6, p1, p2

    .line 89
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCx:F

    .line 90
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCy:F

    .line 91
    return-void
.end method

.method public blacklist moveTo(FF)V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    sget v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->MOVE_NAN:F

    aput v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p1, v0, v1

    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mPath:[F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    aput p2, v0, v1

    .line 75
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCx:F

    .line 76
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mCy:F

    .line 77
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->mSize:I

    .line 99
    return-void
.end method
