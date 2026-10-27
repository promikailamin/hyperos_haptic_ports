.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotDeserializer.java"


# direct methods
.method public static deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 82
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Malformed KeyChainSnapshot XML"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 14

    .line 88
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 91
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "keyChainSnapshot"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 94
    :goto_14
    :pswitch_14
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_100

    .line 95
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_22

    goto :goto_14

    .line 99
    :cond_22
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "serverParams"

    const-string v7, "counterId"

    const-string/jumbo v8, "snapshotVersion"

    const-string/jumbo v9, "thmCertPath"

    const-string/jumbo v10, "recoveryKeyMaterial"

    const-string/jumbo v11, "maxAttempts"

    const/4 v12, -0x1

    sparse-switch v5, :sswitch_data_114

    :goto_42
    move v4, v12

    goto/16 :goto_9a

    :sswitch_45
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_42

    :cond_4c
    const/16 v4, 0x8

    goto :goto_9a

    :sswitch_4f
    const-string v4, "keyChainProtectionParamsList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_42

    :cond_58
    const/4 v4, 0x7

    goto :goto_9a

    :sswitch_5a
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto :goto_42

    :cond_61
    const/4 v4, 0x6

    goto :goto_9a

    :sswitch_63
    const-string v4, "applicationKeysList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_42

    :cond_6c
    const/4 v4, 0x5

    goto :goto_9a

    :sswitch_6e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    goto :goto_42

    :cond_75
    const/4 v4, 0x4

    goto :goto_9a

    :sswitch_77
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    goto :goto_42

    :sswitch_7e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    goto :goto_42

    :cond_85
    move v4, v1

    goto :goto_9a

    :sswitch_87
    const-string v4, "backendPublicKey"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    goto :goto_42

    :cond_90
    const/4 v4, 0x1

    goto :goto_9a

    :sswitch_92
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    goto :goto_42

    :cond_99
    const/4 v4, 0x0

    :cond_9a
    :goto_9a
    packed-switch v4, :pswitch_data_13a

    .line 146
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in keyChainSnapshot"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :pswitch_af
    invoke-static {p0, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 138
    :pswitch_b8
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParamsList(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 112
    :pswitch_c1
    invoke-static {p0, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readLongTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 142
    :pswitch_ca
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKeys(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 103
    :pswitch_d3
    invoke-static {p0, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 126
    :pswitch_dc
    :try_start_dc
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readCertPathTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v3

    .line 125
    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_e3
    .catch Ljava/security/cert/CertificateException; {:try_start_dc .. :try_end_e3} :catch_e5

    goto/16 :goto_14

    :catch_e5
    move-exception p0

    .line 128
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Could not set trustedHardwareCertPath"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :pswitch_ee
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 120
    :pswitch_f7
    invoke-static {p0, v11}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_14

    .line 151
    :cond_100
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    :try_start_105
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0
    :try_end_109
    .catch Ljava/lang/NullPointerException; {:try_start_105 .. :try_end_109} :catch_10a

    return-object p0

    :catch_10a
    move-exception p0

    .line 155
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build KeyChainSnapshot"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_114
    .sparse-switch
        -0x66841336 -> :sswitch_92
        -0x52c1d0fe -> :sswitch_87
        -0x51ae5e2f -> :sswitch_7e
        -0x5190b3fe -> :sswitch_77
        0x1caf9a74 -> :sswitch_6e
        0x46f25222 -> :sswitch_63
        0x5099d037 -> :sswitch_5a
        0x5f2e61bf -> :sswitch_4f
        0x6bb456a9 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_14
        :pswitch_ee
        :pswitch_dc
        :pswitch_d3
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_af
    .end packed-switch
.end method

.method public static readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B
    .registers 6

    .line 372
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 374
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 377
    :try_start_f
    invoke-static {v1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 379
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s expected base64 encoded bytes but got \'%s\'"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 380
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readCertPathTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 5

    .line 389
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object p0

    .line 391
    :try_start_4
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 394
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse CertPath in tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 6

    .line 336
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 338
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    .line 342
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s expected int but got \'%s\'"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 343
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readKeyChainProtectionParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .registers 9

    .line 230
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "keyChainProtectionParams"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 233
    :goto_d
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_79

    .line 234
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    goto :goto_d

    .line 238
    :cond_1b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string/jumbo v5, "userSecretType"

    const-string v6, "lockScreenUiType"

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_8c

    goto :goto_4c

    :sswitch_30
    const-string v4, "keyDerivationParams"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_4c

    :cond_39
    move v7, v1

    goto :goto_4c

    :sswitch_3b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_4c

    :cond_42
    const/4 v7, 0x1

    goto :goto_4c

    :sswitch_44
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v7, 0x0

    :goto_4c
    packed-switch v7, :pswitch_data_9a

    .line 254
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in keyChainProtectionParams"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :pswitch_61
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyDerivationParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_d

    .line 246
    :pswitch_69
    invoke-static {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_d

    .line 242
    :pswitch_71
    invoke-static {p0, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_d

    .line 262
    :cond_79
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_7e
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object p0
    :try_end_82
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_82} :catch_83

    return-object p0

    :catch_83
    move-exception p0

    .line 267
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build KeyChainProtectionParams"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_8c
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_44
        -0x298abfcb -> :sswitch_3b
        0x3662dd9c -> :sswitch_30
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_71
        :pswitch_69
        :pswitch_61
    .end packed-switch
.end method

.method public static readKeyChainProtectionParamsList(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 6

    .line 214
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "keyChainProtectionParamsList"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :goto_d
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_23

    .line 218
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    goto :goto_d

    .line 221
    :cond_1b
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 224
    :cond_23
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readKeyDerivationParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 13

    .line 274
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "keyDerivationParams"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v3, 0x0

    move v4, v0

    move v5, v4

    .line 280
    :goto_c
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_6f

    .line 281
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v1, :cond_1b

    goto :goto_c

    .line 285
    :cond_1b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "algorithm"

    const-string/jumbo v10, "salt"

    const-string/jumbo v11, "memoryDifficulty"

    sparse-switch v8, :sswitch_data_96

    :goto_31
    move v7, v0

    goto :goto_4b

    :sswitch_33
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    goto :goto_31

    :cond_3a
    move v7, v1

    goto :goto_4b

    :sswitch_3c
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    goto :goto_31

    :sswitch_43
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    goto :goto_31

    :cond_4a
    const/4 v7, 0x0

    :cond_4b
    :goto_4b
    packed-switch v7, :pswitch_data_a4

    .line 301
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in keyDerivationParams"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 302
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :pswitch_60
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v4

    goto :goto_c

    .line 297
    :pswitch_65
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_c

    .line 289
    :pswitch_6a
    invoke-static {p0, v11}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v5

    goto :goto_c

    :cond_6f
    if-eqz v3, :cond_8c

    if-eq v4, v7, :cond_82

    if-ne v4, v1, :cond_7a

    .line 321
    invoke-static {v3, v5}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    goto :goto_86

    .line 326
    :cond_7a
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v0, "Unknown algorithm in keyDerivationParams"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_82
    invoke-static {v3}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    .line 330
    :goto_86
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v8, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 310
    :cond_8c
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v0, "salt was not set in keyDerivationParams"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_96
    .sparse-switch
        -0x3a02fc64 -> :sswitch_43
        0x35c056 -> :sswitch_3c
        0xd70b46f -> :sswitch_33
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method public static readLongTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J
    .registers 6

    .line 350
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 352
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    :try_start_e
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    return-wide p0

    :catch_17
    move-exception p0

    .line 356
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s expected long but got \'%s\'"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 357
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readStringTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 364
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 366
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;
    .registers 3

    .line 402
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 403
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    return-object v0

    .line 406
    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method public static readWrappedApplicationKey(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;
    .registers 10

    .line 175
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKey"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 177
    :goto_d
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_78

    .line 178
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    goto :goto_d

    .line 182
    :cond_1b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "alias"

    const-string v6, "keyMaterial"

    const-string v7, "keyMetadata"

    const/4 v8, -0x1

    sparse-switch v4, :sswitch_data_8c

    goto :goto_4b

    :sswitch_31
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_4b

    :cond_38
    move v8, v1

    goto :goto_4b

    :sswitch_3a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_4b

    :cond_41
    const/4 v8, 0x1

    goto :goto_4b

    :sswitch_43
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v8, 0x0

    :goto_4b
    packed-switch v8, :pswitch_data_9a

    .line 198
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in wrappedApplicationKey"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :pswitch_60
    invoke-static {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readStringTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_d

    .line 190
    :pswitch_68
    invoke-static {p0, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_d

    .line 194
    :pswitch_70
    invoke-static {p0, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_d

    .line 202
    :cond_78
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_7d
    invoke-virtual {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object p0
    :try_end_81
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_81} :catch_82

    return-object p0

    :catch_82
    move-exception p0

    .line 207
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build WrappedApplicationKey"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x660f5152 -> :sswitch_43
        -0x3969675a -> :sswitch_3a
        0x5899650 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_70
        :pswitch_68
        :pswitch_60
    .end packed-switch
.end method

.method public static readWrappedApplicationKeys(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 6

    .line 161
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKeysList"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :goto_d
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_23

    .line 164
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1b

    goto :goto_d

    .line 167
    :cond_1b
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKey(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 169
    :cond_23
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
