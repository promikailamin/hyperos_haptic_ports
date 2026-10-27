.class public Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
.super Ljava/lang/Object;
.source "ScrollableComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollAxisRange"
.end annotation


# instance fields
.field private blacklist mCanScrollBackwards:Z

.field private blacklist mCanScrollForward:Z

.field private blacklist mMaxValue:F

.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(FFZZ)V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mValue:F

    .line 102
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mMaxValue:F

    .line 103
    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollForward:Z

    .line 104
    iput-boolean p4, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollBackwards:Z

    .line 105
    return-void
.end method


# virtual methods
.method public blacklist canScrollBackwards()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollBackwards:Z

    return v0
.end method

.method public blacklist canScrollForward()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollForward:Z

    return v0
.end method

.method public blacklist getMaxValue()F
    .registers 2

    .line 114
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mMaxValue:F

    return v0
.end method

.method public blacklist getmValue()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mValue:F

    return v0
.end method
