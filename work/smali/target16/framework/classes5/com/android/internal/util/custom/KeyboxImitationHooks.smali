.class public Lcom/android/internal/util/custom/KeyboxImitationHooks;
.super Ljava/lang/Object;
.source "KeyboxImitationHooks.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboxImitationHooks"

.field private static blacklist mSuccess:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    const-string v0, "KeyboxImitationHooks"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/custom/KeyboxImitationHooks;->DEBUG:Z

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/custom/KeyboxImitationHooks;->mSuccess:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildResponse(Landroid/system/keystore2/IKeystoreSecurityLevel;Ljava/util/List;Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/IKeystoreSecurityLevel;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;",
            "Landroid/system/keystore2/KeyDescriptor;",
            ")",
            "Landroid/system/keystore2/KeyEntryResponse;"
        }
    .end annotation

    .line 97
    :try_start_0
    new-instance v0, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v0}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    .line 98
    new-instance v1, Landroid/system/keystore2/KeyMetadata;

    invoke-direct {v1}, Landroid/system/keystore2/KeyMetadata;-><init>()V

    .line 99
    iget v2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput v2, v1, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;

    invoke-static {v1, p1}, Lcom/android/internal/util/custom/KeyboxUtils;->putCertificateChain(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)V

    .line 103
    new-instance p1, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p1}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 104
    iget v2, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput v2, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 105
    iget-wide v2, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v2, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 106
    iput-object p1, v1, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object p3, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_37
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 112
    new-instance v3, Landroid/system/keystore2/Authorization;

    invoke-direct {v3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 113
    new-instance v4, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v4}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 114
    iget-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x20000001

    iput v5, v4, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 115
    iget-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, v4, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 116
    iget v2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput v2, v3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 117
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_37

    .line 120
    :cond_6a
    iget-object p3, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->digest:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_70
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 121
    new-instance v3, Landroid/system/keystore2/Authorization;

    invoke-direct {v3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 122
    new-instance v4, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v4}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 123
    iget-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x20000005

    iput v5, v4, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 124
    iget-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, v4, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 125
    iget v2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput v2, v3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 126
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_70

    .line 129
    :cond_a3
    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 130
    new-instance v2, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v2}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 131
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v3, 0x10000002

    iput v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 132
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v3, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 133
    iget v2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 134
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 137
    new-instance v2, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v2}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 138
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v3, 0x30000003

    iput v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 139
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v3, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->keySize:I

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 140
    iget v2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 141
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 144
    new-instance v2, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v2}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 145
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v3, 0x1000000a

    iput v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 146
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v3, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->ecCurve:I

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 147
    iget v2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 148
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 151
    new-instance v2, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v2}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 152
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v3, 0x700001f7

    iput v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 153
    iget-object v2, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 154
    iget p2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    iput p2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 155
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 p2, 0x0

    new-array p2, p2, [Landroid/system/keystore2/Authorization;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/system/keystore2/Authorization;

    iput-object p1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    .line 161
    iput-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    .line 162
    iput-object p0, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_141} :catch_142

    .line 163
    return-object v0

    .line 164
    :catch_142
    move-exception p0

    .line 165
    const-string p1, "KeyboxImitationHooks"

    const-string p2, "Failed to build key entry response"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist dlog(Ljava/lang/String;)V
    .registers 2

    .line 175
    sget-boolean v0, Lcom/android/internal/util/custom/KeyboxImitationHooks;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "KeyboxImitationHooks"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_9
    return-void
.end method

.method public static blacklist generateKey(Landroid/system/keystore2/IKeystoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/system/keystore2/KeyMetadata;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/IKeystoreSecurityLevel;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->isKeyboxAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 57
    return-object v1

    .line 60
    :cond_8
    new-instance v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0, p2}, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 62
    iget-object p2, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->attestationChallenge:[B

    if-nez p2, :cond_1e

    .line 63
    return-object v1

    .line 66
    :cond_1e
    iget p2, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    const/4 v2, 0x3

    const-string v3, "KeyboxImitationHooks"

    const/4 v4, 0x1

    if-eq p2, v2, :cond_43

    iget p2, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    if-eq p2, v4, :cond_43

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported algorithm: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v1

    .line 71
    :cond_43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 73
    :try_start_47
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->generateCertChain(ILandroid/system/keystore2/KeyDescriptor;Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Ljava/util/List;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_65

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_65

    .line 77
    :cond_54
    invoke-static {p0, v2, v0, p1}, Lcom/android/internal/util/custom/KeyboxImitationHooks;->buildResponse(Landroid/system/keystore2/IKeystoreSecurityLevel;Ljava/util/List;Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0

    .line 78
    if-nez p0, :cond_5b

    .line 79
    return-object v1

    .line 81
    :cond_5b
    iget-object p1, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/android/internal/util/custom/KeyboxUtils;->append(ILjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V

    .line 82
    sput-boolean v4, Lcom/android/internal/util/custom/KeyboxImitationHooks;->mSuccess:Z

    .line 83
    iget-object p0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_64} :catch_66

    return-object p0

    .line 75
    :cond_65
    :goto_65
    return-object v1

    .line 84
    :catch_66
    move-exception p0

    .line 85
    const-string p1, "Failed to generate key"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    return-object v1
.end method

.method public static blacklist onGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 3

    .line 38
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->isKeyboxAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 39
    return-object v1

    .line 42
    :cond_8
    sget-boolean v0, Lcom/android/internal/util/custom/KeyboxImitationHooks;->mSuccess:Z

    if-nez v0, :cond_d

    .line 43
    return-object v1

    .line 46
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/custom/KeyboxUtils;->retrieve(ILjava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0

    .line 47
    if-eqz p0, :cond_1f

    .line 48
    const-string v0, "Key entry spoofed"

    invoke-static {v0}, Lcom/android/internal/util/custom/KeyboxImitationHooks;->dlog(Ljava/lang/String;)V

    .line 49
    return-object p0

    .line 52
    :cond_1f
    return-object v1
.end method

.method public static blacklist setSuccessFlag(Z)V
    .registers 1

    .line 171
    sput-boolean p0, Lcom/android/internal/util/custom/KeyboxImitationHooks;->mSuccess:Z

    .line 172
    return-void
.end method
