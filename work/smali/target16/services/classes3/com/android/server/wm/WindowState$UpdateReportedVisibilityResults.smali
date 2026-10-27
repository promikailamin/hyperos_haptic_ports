.class public final Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;
.super Ljava/lang/Object;
.source "WindowState.java"


# instance fields
.field public nowGone:Z

.field public numDrawn:I

.field public numInteresting:I

.field public numVisible:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5056
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 5059
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 5060
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 5061
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    const/4 v0, 0x1

    .line 5062
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void
.end method
