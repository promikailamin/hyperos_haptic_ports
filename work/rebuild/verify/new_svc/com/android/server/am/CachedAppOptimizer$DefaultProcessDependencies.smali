.class public final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# static fields
.field public static volatile mPidCompacting:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .registers 2

    .line 2240
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method

.method public performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    .registers 3

    .line 2246
    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 2247
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_b

    const/4 p0, 0x3

    .line 2248
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    goto :goto_1c

    .line 2249
    :cond_b
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_14

    const/4 p0, 0x1

    .line 2250
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    goto :goto_1c

    .line 2251
    :cond_14
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_1c

    const/4 p0, 0x2

    .line 2252
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    :cond_1c
    :goto_1c
    const/4 p0, -0x1

    .line 2254
    sput p0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method
