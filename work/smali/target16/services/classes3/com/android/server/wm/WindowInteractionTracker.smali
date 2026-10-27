.class public Lcom/android/server/wm/WindowInteractionTracker;
.super Ljava/lang/Object;
.source "WindowInteractionTracker.java"


# instance fields
.field public final mInteractionHistory:Ljava/util/Deque;

.field public final mSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 52
    :goto_8
    const-string v1, "WindowInteractionTracker size must be greater than 0"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    iput p1, p0, Lcom/android/server/wm/WindowInteractionTracker;->mSize:I

    .line 55
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowInteractionTracker;->mInteractionHistory:Ljava/util/Deque;

    return-void
.end method
