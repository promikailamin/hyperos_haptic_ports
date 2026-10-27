.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocInfo"
.end annotation


# instance fields
.field public blacklist mNumberOfImages:I

.field public blacklist mNumberOfOps:I

.field public blacklist mSizeOfImages:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfOps:I

    .line 1564
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfImages:I

    .line 1565
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mSizeOfImages:I

    return-void
.end method


# virtual methods
.method public blacklist getNumberOfImages()I
    .registers 2

    .line 1582
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfImages:I

    return v0
.end method

.method public blacklist getNumberOfOps()I
    .registers 2

    .line 1573
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfOps:I

    return v0
.end method

.method public blacklist getSizeOfImages()I
    .registers 2

    .line 1591
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mSizeOfImages:I

    return v0
.end method
