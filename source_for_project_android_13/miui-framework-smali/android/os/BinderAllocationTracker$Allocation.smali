.class Landroid/os/BinderAllocationTracker$Allocation;
.super Ljava/lang/Object;
.source "BinderAllocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderAllocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Allocation"
.end annotation


# instance fields
.field final blacklist backtrace:[Ljava/lang/StackTraceElement;

.field blacklist count:I

.field final blacklist interfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>([Ljava/lang/StackTraceElement;)V
    .registers 3
    .param p1, "backtrace"    # [Ljava/lang/StackTraceElement;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/BinderAllocationTracker$Allocation;->interfaces:Ljava/util/HashMap;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BinderAllocationTracker$Allocation;->count:I

    .line 253
    iput-object p1, p0, Landroid/os/BinderAllocationTracker$Allocation;->backtrace:[Ljava/lang/StackTraceElement;

    .line 254
    return-void
.end method
