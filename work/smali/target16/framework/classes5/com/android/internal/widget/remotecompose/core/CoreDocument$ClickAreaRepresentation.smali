.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickAreaRepresentation"
.end annotation


# instance fields
.field blacklist mBottom:F

.field final blacklist mContentDescription:Ljava/lang/String;

.field blacklist mId:I

.field blacklist mLeft:F

.field final blacklist mMetadata:Ljava/lang/String;

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;FFFFLjava/lang/String;)V
    .registers 8

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    .line 792
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    .line 793
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    .line 794
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    .line 795
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    .line 796
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    .line 797
    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    .line 798
    return-void
.end method


# virtual methods
.method public blacklist contains(FF)Z
    .registers 4

    .line 808
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1a

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1a

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 770
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 771
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 772
    :cond_a
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 773
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v1, v3, :cond_27

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    .line 774
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    .line 775
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    .line 773
    :goto_28
    return v0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .registers 2

    .line 842
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 838
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    return v0
.end method

.method public blacklist getLeft()F
    .registers 2

    .line 812
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    return v0
.end method

.method public blacklist getMetadata()Ljava/lang/String;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTop()F
    .registers 2

    .line 816
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 780
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist height()F
    .registers 3

    .line 834
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public blacklist width()F
    .registers 3

    .line 825
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
