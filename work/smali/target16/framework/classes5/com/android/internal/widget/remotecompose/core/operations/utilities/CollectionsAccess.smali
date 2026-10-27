.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
.super Ljava/lang/Object;
.source "CollectionsAccess.java"


# virtual methods
.method public abstract blacklist getFloatValue(II)F
.end method

.method public abstract blacklist getFloats(I)[F
.end method

.method public abstract blacklist getId(II)I
.end method

.method public blacklist getIntValue(II)I
    .registers 3

    .line 68
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloatValue(II)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public abstract blacklist getListLength(I)I
.end method
