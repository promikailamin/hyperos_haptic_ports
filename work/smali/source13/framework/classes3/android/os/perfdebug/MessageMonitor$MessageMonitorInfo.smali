.class public Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;
.super Ljava/lang/Object;
.source "MessageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/MessageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageMonitorInfo"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/os/Message;J)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 106
    return-void
.end method

.method public blacklist reset()V
    .registers 1

    .line 107
    return-void
.end method
