.class public Landroid/app/backup/BackupAgent$IncludeExcludeRules;
.super Ljava/lang/Object;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncludeExcludeRules"
.end annotation


# instance fields
.field private final blacklist mManifestExcludeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mManifestIncludeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetExcludeSet(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->getExcludeSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIncludeMap(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->getIncludeMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;)V"
        }
    .end annotation

    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    iput-object p1, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    .line 1667
    iput-object p2, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    .line 1668
    return-void
.end method

.method public static blacklist emptyRules()Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .registers 3

    .line 1673
    new-instance v0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v0
.end method

.method private blacklist getExcludeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .line 1681
    iget-object v0, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    return-object v0
.end method

.method private blacklist getIncludeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1693
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1694
    return v0

    .line 1696
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 1699
    :cond_12
    check-cast p1, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    .line 1700
    iget-object v2, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    iget-object v3, p1, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    .line 1701
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 1700
    :goto_2a
    return v0

    .line 1697
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1687
    iget-object v0, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
