.class final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultProcessDependencies"
.end annotation


# static fields
.field public static volatile mPidCompacting:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2120
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPss(I)J
    .registers 4
    .param p1, "pid"    # I

    .line 2136
    invoke-static {p1}, Landroid/os/Process;->getPss(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRss(I)[J
    .registers 3
    .param p1, "pid"    # I

    .line 2143
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    return-object v0
.end method

.method public interruptProcCompaction()V
    .registers 1

    .line 2125
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcancelCompaction()V

    .line 2126
    return-void
.end method

.method public performCompaction(Ljava/lang/String;I)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2149
    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 2150
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2151
    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    goto :goto_34

    .line 2152
    :cond_13
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2153
    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    goto :goto_34

    .line 2154
    :cond_24
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2155
    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    .line 2157
    :cond_34
    :goto_34
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 2158
    return-void
.end method

.method public setAppStartingMode(Z)V
    .registers 2
    .param p1, "appStarting"    # Z

    .line 2130
    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smswitchQuickCompactMode(Z)V

    .line 2131
    return-void
.end method
