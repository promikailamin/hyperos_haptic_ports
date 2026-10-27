.class public abstract Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "PaintOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist PTR_DEREFERENCE:I = 0x40000000

.field public static final blacklist VALUE_MASK:I = 0xffff


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-ne v0, v1, :cond_11

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object p1

    .line 32
    if-eqz p1, :cond_11

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 36
    :cond_11
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getId(ILcom/android/internal/widget/remotecompose/core/PaintContext;)I
    .registers 5

    .line 74
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 75
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-eqz p1, :cond_11

    .line 76
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    .line 78
    :cond_11
    return v0
.end method

.method public abstract blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
.end method

.method public blacklist suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .registers 2

    .line 57
    const/4 p1, 0x0

    return p1
.end method
