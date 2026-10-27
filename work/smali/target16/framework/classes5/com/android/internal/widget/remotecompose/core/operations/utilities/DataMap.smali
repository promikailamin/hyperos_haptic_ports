.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.super Ljava/lang/Object;
.source "DataMap.java"


# instance fields
.field public final blacklist mIds:[I

.field public final blacklist mNames:[Ljava/lang/String;

.field public final blacklist mTypes:[B


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;[B[I)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    .line 28
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getId(I)I
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    aget p1, v0, p1

    return p1
.end method

.method public blacklist getPos(Ljava/lang/String;)I
    .registers 4

    .line 38
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 39
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 41
    return v0

    .line 38
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getType(I)B
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    aget-byte p1, v0, p1

    return p1
.end method
