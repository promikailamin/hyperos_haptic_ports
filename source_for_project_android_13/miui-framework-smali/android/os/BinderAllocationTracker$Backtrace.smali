.class Landroid/os/BinderAllocationTracker$Backtrace;
.super Ljava/lang/Object;
.source "BinderAllocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderAllocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Backtrace"
.end annotation


# instance fields
.field final blacklist backtrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor blacklist <init>([Ljava/lang/StackTraceElement;)V
    .registers 2
    .param p1, "backtrace"    # [Ljava/lang/StackTraceElement;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Landroid/os/BinderAllocationTracker$Backtrace;->backtrace:[Ljava/lang/StackTraceElement;

    .line 321
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 325
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 326
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 327
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/os/BinderAllocationTracker$Backtrace;

    .line 328
    .local v0, "backtrace1":Landroid/os/BinderAllocationTracker$Backtrace;
    iget-object v1, p0, Landroid/os/BinderAllocationTracker$Backtrace;->backtrace:[Ljava/lang/StackTraceElement;

    iget-object v2, v0, Landroid/os/BinderAllocationTracker$Backtrace;->backtrace:[Ljava/lang/StackTraceElement;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 326
    .end local v0    # "backtrace1":Landroid/os/BinderAllocationTracker$Backtrace;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$Backtrace;->backtrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
