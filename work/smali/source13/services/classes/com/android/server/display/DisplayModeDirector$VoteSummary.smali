.class final Lcom/android/server/display/DisplayModeDirector$VoteSummary;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VoteSummary"
.end annotation


# instance fields
.field public baseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public maxRefreshRate:F

.field public minRefreshRate:F

.field public width:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 284
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 288
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 289
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 290
    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 291
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    .line 292
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 293
    return-void
.end method
