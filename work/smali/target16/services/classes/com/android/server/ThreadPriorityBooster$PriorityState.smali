.class public Lcom/android/server/ThreadPriorityBooster$PriorityState;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# instance fields
.field public prevPriority:I

.field public regionCounter:I

.field public final tid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    const v0, 0x7fffffff

    .line 103
    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ThreadPriorityBooster-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    return-void
.end method
