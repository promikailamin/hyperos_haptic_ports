.class final Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpArgs"
.end annotation


# static fields
.field private static final FLAG_DUMP_BLOBS:I = 0x2

.field private static final FLAG_DUMP_CONFIG:I = 0x4

.field private static final FLAG_DUMP_SESSIONS:I = 0x1


# instance fields
.field private mDumpAll:Z

.field private final mDumpBlobIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpHelp:Z

.field private final mDumpPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDumpUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpUnredacted:Z

.field private final mDumpUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSectionFlags:I


# direct methods
.method static bridge synthetic -$$Nest$mdumpArgsUsage(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->dumpArgsUsage(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1816
    return-void
.end method

.method private dumpArgsUsage(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1891
    const-string v0, "--help | -h"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    const-string v0, "Dump this help text"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1893
    const-string v0, "--sessions"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    const-string v0, "Dump only the sessions info"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1895
    const-string v0, "--blobs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1896
    const-string v0, "Dump only the committed blobs info"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1897
    const-string v0, "--config"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    const-string v0, "Dump only the config values"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1899
    const-string v0, "--package | -p [package-name]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1900
    const-string v0, "Dump blobs info associated with the given package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1901
    const-string v0, "--uid | -u [uid]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    const-string v0, "Dump blobs info associated with the given uid"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1903
    const-string v0, "--user [user-id]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    const-string v0, "Dump blobs info in the given user"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1905
    const-string v0, "--blob | -b [session-id | blob-id]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    const-string v0, "Dump blob info corresponding to the given ID"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1907
    const-string v0, "--full | -f"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    const-string v0, "Dump full unredacted blobs data"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1909
    return-void
.end method

.method private static getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1865
    array-length v0, p0

    if-ge p1, v0, :cond_31

    .line 1870
    :try_start_3
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_b

    .line 1873
    .local v0, "value":I
    nop

    .line 1874
    return v0

    .line 1871
    .end local v0    # "value":I
    :catch_b
    move-exception v0

    .line 1872
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1866
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1878
    array-length v0, p0

    if-ge p1, v0, :cond_31

    .line 1883
    :try_start_3
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_b

    .line 1886
    .local v0, "value":J
    nop

    .line 1887
    return-wide v0

    .line 1884
    .end local v0    # "value":J
    :catch_b
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1879
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1858
    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 1861
    aget-object v0, p0, p1

    return-object v0

    .line 1859
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;

    .line 1819
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;-><init>()V

    .line 1820
    .local v0, "dumpArgs":Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    if-nez p0, :cond_8

    .line 1821
    return-object v0

    .line 1824
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_109

    .line 1825
    aget-object v2, p0, v1

    .line 1826
    .local v2, "opt":Ljava/lang/String;
    const-string v3, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_104

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto/16 :goto_104

    .line 1828
    :cond_21
    const-string v3, "--unredacted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    const-string v3, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto/16 :goto_f7

    .line 1833
    :cond_33
    const-string v3, "--sessions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1834
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpSessions()V

    goto/16 :goto_106

    .line 1835
    :cond_40
    const-string v3, "--blobs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1836
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpBlobs()V

    goto/16 :goto_106

    .line 1837
    :cond_4d
    const-string v3, "--config"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1838
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpConfig()V

    goto/16 :goto_106

    .line 1839
    :cond_5a
    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e8

    const-string v3, "-p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto/16 :goto_e8

    .line 1841
    :cond_6c
    const-string v3, "--uid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1842
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v5, "uid"

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_106

    .line 1843
    :cond_88
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1844
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v5, "userId"

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1845
    :cond_a3
    const-string v3, "--blob"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "blobId"

    if-nez v3, :cond_d8

    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    goto :goto_d8

    .line 1847
    :cond_b6
    const-string v3, "--help"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    goto :goto_d5

    .line 1851
    :cond_c7
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1848
    :cond_d5
    :goto_d5
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    goto :goto_106

    .line 1846
    :cond_d8
    :goto_d8
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1840
    :cond_e8
    :goto_e8
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v5, "packageName"

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1829
    :cond_f7
    :goto_f7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1830
    .local v3, "callingUid":I
    const/16 v5, 0x7d0

    if-eq v3, v5, :cond_101

    if-nez v3, :cond_103

    .line 1831
    :cond_101
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    .line 1833
    .end local v3    # "callingUid":I
    :cond_103
    goto :goto_106

    .line 1827
    :cond_104
    :goto_104
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    .line 1824
    .end local v2    # "opt":Ljava/lang/String;
    :goto_106
    add-int/2addr v1, v4

    goto/16 :goto_9

    .line 1854
    .end local v1    # "i":I
    :cond_109
    return-object v0
.end method

.method private printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "str"    # Ljava/lang/String;

    .line 1912
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1913
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1915
    return-void
.end method


# virtual methods
.method public allowDumpBlobs()V
    .registers 2

    .line 1777
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 1778
    return-void
.end method

.method public allowDumpConfig()V
    .registers 2

    .line 1788
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 1789
    return-void
.end method

.method public allowDumpSessions()V
    .registers 2

    .line 1766
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 1767
    return-void
.end method

.method public shouldDumpAllSections()Z
    .registers 2

    .line 1762
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public shouldDumpBlob(J)Z
    .registers 5
    .param p1, "blobId"    # J

    .line 1799
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1800
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1799
    :goto_18
    return v0
.end method

.method public shouldDumpBlobs()Z
    .registers 3

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1782
    return v1

    .line 1784
    :cond_8
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public shouldDumpConfig()Z
    .registers 3

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1793
    return v1

    .line 1795
    :cond_8
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public shouldDumpFull()Z
    .registers 2

    .line 1804
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    return v0
.end method

.method public shouldDumpHelp()Z
    .registers 2

    .line 1813
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    return v0
.end method

.method public shouldDumpSession(Ljava/lang/String;IJ)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "blobId"    # J

    .line 1746
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1747
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_12

    .line 1748
    return v1

    .line 1750
    :cond_12
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1751
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_27

    .line 1752
    return v1

    .line 1754
    :cond_27
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1755
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3c

    .line 1756
    return v1

    .line 1758
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDumpSessions()Z
    .registers 3

    .line 1770
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1771
    return v1

    .line 1773
    :cond_8
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public shouldDumpUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1808
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1808
    :goto_18
    return v0
.end method
