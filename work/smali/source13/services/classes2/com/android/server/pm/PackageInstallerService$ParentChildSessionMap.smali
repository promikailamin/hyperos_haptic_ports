.class Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParentChildSessionMap"
.end annotation


# instance fields
.field private final mSessionCreationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda0;-><init>()V

    .line 1855
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;-><init>()V

    .line 1857
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionCreationComparator:Ljava/util/Comparator;

    .line 1860
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    .line 1861
    return-void
.end method

.method private addChildSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "parentSession"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1875
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addParentSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1876
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1877
    return-void
.end method

.method private addParentSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1868
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1869
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionCreationComparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    :cond_14
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/pm/PackageInstallerSession;)J
    .registers 3
    .param p0, "sess"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1856
    if-eqz p0, :cond_5

    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, -0x1

    :goto_7
    return-wide v0
.end method

.method static synthetic lambda$new$1(Lcom/android/server/pm/PackageInstallerSession;)I
    .registers 2
    .param p0, "sess"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1857
    if-eqz p0, :cond_5

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    :goto_6
    return v0
.end method


# virtual methods
.method addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "parentSession"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1881
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1882
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addChildSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_d

    .line 1884
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addParentSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1886
    :goto_d
    return-void
.end method

.method containsSession()Z
    .registers 2

    .line 1864
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " install sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1893
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1894
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/PackageInstallerSession;Ljava/util/TreeSet<Lcom/android/server/pm/PackageInstallerSession;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 1895
    .local v2, "parentSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v2, :cond_56

    .line 1896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1898
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1899
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1902
    :cond_56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1903
    .local v4, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v4, p2}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1905
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1906
    .end local v4    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_60

    .line 1908
    :cond_89
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1909
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/PackageInstallerSession;Ljava/util/TreeSet<Lcom/android/server/pm/PackageInstallerSession;>;>;"
    .end local v2    # "parentSession":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_23

    .line 1911
    :cond_8d
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1912
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1913
    return-void
.end method
