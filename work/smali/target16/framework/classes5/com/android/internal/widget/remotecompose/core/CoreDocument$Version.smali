.class Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation


# instance fields
.field public final blacklist major:I

.field public final blacklist minor:I

.field public final blacklist patchLevel:I


# direct methods
.method constructor blacklist <init>(III)V
    .registers 4

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    .line 726
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    .line 727
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->patchLevel:I

    .line 728
    return-void
.end method


# virtual methods
.method public blacklist supportsVersion(III)Z
    .registers 7

    .line 739
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_6

    .line 740
    return v1

    .line 742
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v2, 0x1

    if-ge p1, v0, :cond_c

    .line 743
    return v2

    .line 746
    :cond_c
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-le p2, p1, :cond_11

    .line 747
    return v1

    .line 749
    :cond_11
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-ge p2, p1, :cond_16

    .line 750
    return v2

    .line 753
    :cond_16
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->patchLevel:I

    if-gt p3, p1, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method
