.class public Landroid/security/FingerprintIdUtilsCompat;
.super Ljava/lang/Object;
.source "FingerprintIdUtilsCompat.java"


# static fields
.field private static blacklist mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getAllFingerprintIds(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Landroid/security/FingerprintIdUtilsCompat;->getService(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 39
    .local v0, "mFingerprintMgr":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_34

    .line 40
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, "fingers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 44
    .local v4, "finger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v4    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_1b

    .line 47
    :cond_33
    return-object v2

    .line 49
    .end local v1    # "fingers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSecondSpaceId(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getService(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    sget-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_e

    .line 26
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    .line 28
    :cond_e
    sget-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method public static blacklist getValidFingerPrintIds(Ljava/util/HashMap;Landroid/content/Context;)Ljava/util/HashMap;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 53
    .local p0, "fingerPrintsId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_49

    .line 57
    :cond_e
    invoke-static {p1}, Landroid/security/FingerprintIdUtilsCompat;->getAllFingerprintIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "allFingerprintIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_48

    .line 61
    :cond_1b
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 68
    invoke-static {p1}, Landroid/security/FingerprintIdUtilsCompat;->getSecondSpaceId(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1, v5, p0}, Landroid/security/FingerprintIdUtils;->writeFingerprintIdsToXml(Landroid/content/Context;ILjava/util/HashMap;)V

    .line 70
    .end local v3    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_45
    goto :goto_23

    .line 71
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_46
    move-object v0, p0

    .line 72
    return-object v0

    .line 59
    :cond_48
    :goto_48
    return-object v0

    .line 55
    .end local v1    # "allFingerprintIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_49
    :goto_49
    return-object v0
.end method
