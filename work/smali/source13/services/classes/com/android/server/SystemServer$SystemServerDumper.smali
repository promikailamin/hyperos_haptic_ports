.class final Lcom/android/server/SystemServer$SystemServerDumper;
.super Landroid/os/Binder;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemServerDumper"
.end annotation


# instance fields
.field private final mDumpables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method static bridge synthetic -$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;->addDumpable(Landroid/util/Dumpable;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 3

    .line 764
    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 766
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;)V

    return-void
.end method

.method private addDumpable(Landroid/util/Dumpable;)V
    .registers 5
    .param p1, "dumpable"    # Landroid/util/Dumpable;

    .line 817
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 771
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    array-length v2, p3

    if-lez v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 773
    .local v2, "hasArgs":Z
    :goto_a
    iget-object v3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 774
    if-eqz v2, :cond_35

    :try_start_f
    const-string v4, "--list"

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 775
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 776
    .local v0, "dumpablesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_30

    .line 777
    iget-object v4, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 779
    .end local v1    # "i":I
    :cond_30
    monitor-exit v3

    return-void

    .line 813
    .end local v0    # "dumpablesSize":I
    :catchall_32
    move-exception v0

    goto/16 :goto_c6

    .line 782
    :cond_35
    if-eqz v2, :cond_83

    const-string v4, "--name"

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 783
    array-length v4, p3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4c

    .line 784
    const-string v0, "Must pass at least one argument to --name"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    monitor-exit v3

    return-void

    .line 787
    :cond_4c
    aget-object v4, p3, v1

    .line 788
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Dumpable;

    .line 789
    .local v6, "dumpable":Landroid/util/Dumpable;
    if-nez v6, :cond_63

    .line 790
    const-string v5, "No dummpable named %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {p2, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 791
    monitor-exit v3

    return-void

    .line 794
    :cond_63
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_f .. :try_end_6a} :catchall_32

    .line 796
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    :try_start_6a
    array-length v1, p3

    invoke-static {p3, v5, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 797
    .local v1, "actualArgs":[Ljava/lang/String;
    invoke-interface {v6, v0, v1}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_79

    .line 798
    .end local v1    # "actualArgs":[Ljava/lang/String;
    :try_start_74
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    .line 799
    .end local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_32

    return-void

    .line 794
    .restart local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    :catchall_79
    move-exception v1

    :try_start_7a
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception v5

    :try_start_7f
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "hasArgs":Z
    .end local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :goto_82
    throw v1

    .line 802
    .end local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "dumpable":Landroid/util/Dumpable;
    .restart local v2    # "hasArgs":Z
    .restart local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_83
    iget-object v4, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 803
    .local v4, "dumpablesSize":I
    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, p2, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_7f .. :try_end_90} :catchall_32

    .line 804
    .local v5, "ipw":Landroid/util/IndentingPrintWriter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_91
    if-ge v6, v4, :cond_c1

    .line 805
    :try_start_93
    iget-object v7, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Dumpable;

    .line 806
    .local v7, "dumpable":Landroid/util/Dumpable;
    const-string v8, "%s:\n"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-interface {v7}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 807
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 808
    invoke-interface {v7, v5, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 809
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 810
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_b7

    .line 804
    .end local v7    # "dumpable":Landroid/util/Dumpable;
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 803
    .end local v6    # "i":I
    :catchall_b7
    move-exception v0

    :try_start_b8
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_c0

    :catchall_bc
    move-exception v1

    :try_start_bd
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "hasArgs":Z
    .end local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :goto_c0
    throw v0

    .line 812
    .restart local v2    # "hasArgs":Z
    .restart local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_c1
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    .line 813
    .end local v4    # "dumpablesSize":I
    .end local v5    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v3

    .line 814
    return-void

    .line 813
    :goto_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_32

    throw v0
.end method
