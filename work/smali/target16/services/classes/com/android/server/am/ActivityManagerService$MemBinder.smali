.class public Lcom/android/server/am/ActivityManagerService$MemBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 2145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2130
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;-><init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 2146
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    .line 2152
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 2154
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "meminfo"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_28

    if-nez v1, :cond_22

    .line 2158
    :goto_18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void

    .line 2156
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_18

    :catchall_28
    move-exception p1

    .line 2158
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 2159
    throw p1
.end method
