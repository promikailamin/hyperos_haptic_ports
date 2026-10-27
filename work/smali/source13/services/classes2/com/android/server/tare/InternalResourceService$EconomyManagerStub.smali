.class final Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;
.super Landroid/app/tare/IEconomyManager$Stub;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EconomyManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tare/InternalResourceService;

    .line 826
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Landroid/app/tare/IEconomyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TARE-IRS"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 834
    :cond_f
    const/4 v0, 0x1

    .line 835
    .local v0, "dumpAll":Z
    invoke-static {p3}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 836
    const/4 v1, 0x0

    aget-object v2, p3, v1

    .line 837
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "--help"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_59

    .line 840
    :cond_2a
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 843
    const/4 v0, 0x0

    goto :goto_5d

    .line 844
    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_5d

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    return-void

    .line 838
    :cond_59
    :goto_59
    invoke-static {p2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V

    .line 839
    return-void

    .line 850
    .end local v2    # "arg":Ljava/lang/String;
    :cond_5d
    :goto_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 852
    .local v1, "identityToken":J
    :try_start_61
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    new-instance v4, Landroid/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v4, p2, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {v3, v4, v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mdumpInternal(Lcom/android/server/tare/InternalResourceService;Landroid/util/IndentingPrintWriter;Z)V
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_72

    .line 854
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    nop

    .line 856
    return-void

    .line 854
    :catchall_72
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    throw v3
.end method
