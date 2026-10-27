.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;
.super Ljava/lang/Object;
.source "ArrayAccess.java"


# virtual methods
.method public abstract blacklist getFloatValue(I)F
.end method

.method public abstract blacklist getFloats()[F
.end method

.method public blacklist getId(I)I
    .registers 2

    .line 41
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getIntValue(I)I
    .registers 2

    .line 65
    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public abstract blacklist getLength()I
.end method
