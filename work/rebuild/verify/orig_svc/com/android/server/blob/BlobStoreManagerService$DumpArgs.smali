.class public final Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# instance fields
.field public mDumpAll:Z

.field public final mDumpBlobIds:Ljava/util/ArrayList;

.field public mDumpHelp:Z

.field public final mDumpPackages:Ljava/util/ArrayList;

.field public final mDumpUids:Ljava/util/ArrayList;

.field public mDumpUnredacted:Z

.field public final mDumpUserIds:Ljava/util/ArrayList;

.field public mSelectedSectionFlags:I


# direct methods
.method public static bridge synthetic -$$Nest$mdumpArgsUsage(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->dumpArgsUsage(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    return-void
.end method

.method public static getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I
    .registers 6

    .line 1870
    array-length v0, p0

    if-ge p1, v0, :cond_2b

    .line 1875
    :try_start_3
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    return p0

    .line 1877
    :catch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1871
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J
    .registers 6

    .line 1883
    array-length v0, p0

    if-ge p1, v0, :cond_2b

    .line 1888
    :try_start_3
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    return-wide p0

    .line 1890
    :catch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1863
    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 1866
    aget-object p0, p0, p1

    return-object p0

    .line 1864
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    .registers 8

    .line 1824
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;-><init>()V

    if-nez p0, :cond_9

    goto/16 :goto_10a

    :cond_9
    const/4 v1, 0x0

    .line 1829
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_10a

    .line 1830
    aget-object v2, p0, v1

    .line 1831
    const-string v3, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_105

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto/16 :goto_105

    .line 1833
    :cond_22
    const-string v3, "--unredacted"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    const-string v3, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto/16 :goto_f8

    .line 1838
    :cond_34
    const-string v3, "--sessions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1839
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpSessions()V

    goto/16 :goto_107

    .line 1840
    :cond_41
    const-string v3, "--blobs"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1841
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpBlobs()V

    goto/16 :goto_107

    .line 1842
    :cond_4e
    const-string v3, "--config"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1843
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpConfig()V

    goto/16 :goto_107

    .line 1844
    :cond_5b
    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    const-string v3, "-p"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto/16 :goto_e9

    .line 1846
    :cond_6d
    const-string v3, "--uid"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1847
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "uid"

    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_107

    .line 1848
    :cond_89
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1849
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "userId"

    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 1850
    :cond_a4
    const-string v3, "--blob"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "blobId"

    if-nez v3, :cond_d9

    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    goto :goto_d9

    .line 1852
    :cond_b7
    const-string v3, "--help"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d6

    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_d6

    .line 1856
    :cond_c8
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 1853
    :cond_d6
    :goto_d6
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    goto :goto_107

    .line 1851
    :cond_d9
    :goto_d9
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 1845
    :cond_e9
    :goto_e9
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "packageName"

    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 1834
    :cond_f8
    :goto_f8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_102

    if-nez v2, :cond_107

    .line 1836
    :cond_102
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    goto :goto_107

    .line 1832
    :cond_105
    :goto_105
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    :cond_107
    :goto_107
    add-int/2addr v1, v4

    goto/16 :goto_a

    :cond_10a
    :goto_10a
    return-object v0
.end method


# virtual methods
.method public allowDumpBlobs()V
    .registers 2

    .line 1782
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    return-void
.end method

.method public allowDumpConfig()V
    .registers 2

    .line 1793
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    return-void
.end method

.method public allowDumpSessions()V
    .registers 2

    .line 1771
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    return-void
.end method

.method public final dumpArgsUsage(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 1896
    const-string v0, "--help | -h"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    const-string v0, "Dump this help text"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1898
    const-string v0, "--sessions"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    const-string v0, "Dump only the sessions info"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1900
    const-string v0, "--blobs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    const-string v0, "Dump only the committed blobs info"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1902
    const-string v0, "--config"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    const-string v0, "Dump only the config values"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1904
    const-string v0, "--package | -p [package-name]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    const-string v0, "Dump blobs info associated with the given package"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1906
    const-string v0, "--uid | -u [uid]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    const-string v0, "Dump blobs info associated with the given uid"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1908
    const-string v0, "--user [user-id]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    const-string v0, "Dump blobs info in the given user"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1910
    const-string v0, "--blob | -b [session-id | blob-id]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    const-string v0, "Dump blob info corresponding to the given ID"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1912
    const-string v0, "--full | -f"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    const-string v0, "Dump full unredacted blobs data"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 1917
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1918
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public shouldDumpAllSections()Z
    .registers 2

    .line 1767
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public shouldDumpBlob(J)Z
    .registers 4

    .line 1804
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1805
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public shouldDumpBlobs()Z
    .registers 3

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1789
    :cond_8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDumpConfig()Z
    .registers 3

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1800
    :cond_8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDumpFull()Z
    .registers 1

    .line 1809
    iget-boolean p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    return p0
.end method

.method public shouldDumpHelp()Z
    .registers 1

    .line 1818
    iget-boolean p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    return p0
.end method

.method public shouldDumpSession(Ljava/lang/String;IJ)Z
    .registers 7

    .line 1751
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1752
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_12

    return v1

    .line 1755
    :cond_12
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1756
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_27

    return v1

    .line 1759
    :cond_27
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1760
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_3c

    return v1

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public shouldDumpSessions()Z
    .registers 3

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1778
    :cond_8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_e

    return v1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDumpUser(I)Z
    .registers 3

    .line 1813
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1814
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method
