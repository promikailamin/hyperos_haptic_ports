.class public final Lcom/android/server/SystemServer$SystemServerDumper;
.super Landroid/os/Binder;
.source "SystemServer.java"


# instance fields
.field public final mDumpables:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;->addDumpable(Landroid/util/Dumpable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 3

    .line 765
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 767
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;)V

    return-void
.end method


# virtual methods
.method public final addDumpable(Landroid/util/Dumpable;)V
    .registers 5

    .line 836
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 837
    :try_start_3
    iget-object p0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 772
    array-length v1, p3

    if-lez v1, :cond_9

    move v1, p1

    goto :goto_a

    :cond_9
    move v1, v0

    .line 774
    :goto_a
    iget-object v2, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v2

    if-eqz v1, :cond_34

    .line 775
    :try_start_f
    const-string v3, "--list"

    aget-object v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 776
    iget-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_1f
    if-ge v0, p1, :cond_32

    .line 778
    iget-object p3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catchall_2f
    move-exception p0

    goto/16 :goto_10d

    .line 780
    :cond_32
    monitor-exit v2

    return-void

    :cond_34
    if-eqz v1, :cond_99

    .line 783
    const-string v1, "--name"

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 784
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4b

    .line 785
    const-string p0, "Must pass at least one argument to --name"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    monitor-exit v2

    return-void

    .line 788
    :cond_4b
    aget-object p1, p3, p1

    .line 789
    iget-object p0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_62

    .line 791
    const-string p0, "No dumpable named %s\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 792
    monitor-exit v2

    return-void

    .line 794
    :cond_62
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_f .. :try_end_69} :catchall_2f

    .line 795
    :try_start_69
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Dumpable;

    if-nez p0, :cond_81

    .line 797
    const-string p0, "%s has been garbage collected\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7f

    .line 803
    :try_start_7a
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_2f

    return-void

    :catchall_7f
    move-exception p0

    goto :goto_90

    .line 801
    :cond_81
    :try_start_81
    array-length p1, p3

    invoke-static {p3, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 802
    invoke-interface {p0, v0, p1}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_7f

    .line 803
    :try_start_8b
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    .line 804
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_2f

    return-void

    .line 794
    :goto_90
    :try_start_90
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception p1

    :try_start_95
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_98
    throw p0

    .line 807
    :cond_99
    iget-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 809
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_95 .. :try_end_a6} :catchall_2f

    const/4 p2, 0x0

    :goto_a7
    if-ge v0, p1, :cond_eb

    .line 811
    :try_start_a9
    iget-object v3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 812
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Dumpable;

    if-nez v3, :cond_cf

    if-nez p2, :cond_c3

    .line 815
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_c3

    :catchall_c1
    move-exception p0

    goto :goto_ff

    .line 817
    :cond_c3
    :goto_c3
    iget-object v3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 820
    :cond_cf
    const-string v4, "%s:\n"

    invoke-interface {v3}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 821
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 822
    invoke-interface {v3, v1, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 824
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_eb
    if-eqz p2, :cond_108

    .line 827
    const-string p0, "%d dumpable(s) has been garbage collected: %s\n"

    .line 828
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 827
    invoke-virtual {v1, p0, p1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_fe
    .catchall {:try_start_a9 .. :try_end_fe} :catchall_c1

    goto :goto_108

    .line 809
    :goto_ff
    :try_start_ff
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_103

    goto :goto_107

    :catchall_103
    move-exception p1

    :try_start_104
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_107
    throw p0

    .line 830
    :cond_108
    :goto_108
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V

    .line 832
    monitor-exit v2

    return-void

    :goto_10d
    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_104 .. :try_end_10e} :catchall_2f

    throw p0
.end method
