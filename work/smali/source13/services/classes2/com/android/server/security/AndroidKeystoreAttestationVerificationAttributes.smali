.class Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.super Ljava/lang/Object;
.source "AndroidKeystoreAttestationVerificationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;,
        Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYMASTER_KEY_DESCRIPTION_EXTENSION_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field private static final ATTESTATION_CHALLENGE_INDEX:I = 0x4

.field private static final ATTESTATION_SECURITY_LEVEL_INDEX:I = 0x1

.field private static final ATTESTATION_VERSION_INDEX:I = 0x0

.field private static final HW_AUTH_NONE:I = 0x0

.field private static final HW_ENFORCED_INDEX:I = 0x7

.field private static final KEYMASTER_SECURITY_LEVEL_INDEX:I = 0x3

.field private static final KEYMASTER_UNIQUE_ID_INDEX:I = 0x5

.field private static final KEYMASTER_VERSION_INDEX:I = 0x2

.field private static final KM_SECURITY_LEVEL_SOFTWARE:I = 0x0

.field private static final KM_SECURITY_LEVEL_STRONG_BOX:I = 0x2

.field private static final KM_SECURITY_LEVEL_TRUSTED_ENVIRONMENT:I = 0x1

.field private static final KM_TAG_ALL_APPLICATIONS:I = 0x258

.field private static final KM_TAG_ATTESTATION_APPLICATION_ID:I = 0x2c5

.field private static final KM_TAG_ATTESTATION_ID_BRAND:I = 0x2c6

.field private static final KM_TAG_ATTESTATION_ID_DEVICE:I = 0x2c7

.field private static final KM_TAG_ATTESTATION_ID_PRODUCT:I = 0x2c8

.field private static final KM_TAG_BOOT_PATCHLEVEL:I = 0x2cf

.field private static final KM_TAG_NO_AUTH_REQUIRED:I = 0x1f7

.field private static final KM_TAG_OS_PATCHLEVEL:I = 0x2c2

.field private static final KM_TAG_OS_VERSION:I = 0x2c1

.field private static final KM_TAG_ROOT_OF_TRUST:I = 0x2c0

.field private static final KM_TAG_UNLOCKED_DEVICE_REQUIRED:I = 0x1fd

.field private static final KM_TAG_VENDOR_PATCHLEVEL:I = 0x2ce

.field private static final KM_VERIFIED_BOOT_STATE_FAILED:I = 0x3

.field private static final KM_VERIFIED_BOOT_STATE_SELF_SIGNED:I = 0x1

.field private static final KM_VERIFIED_BOOT_STATE_UNVERIFIED:I = 0x2

.field private static final KM_VERIFIED_BOOT_STATE_VERIFIED:I = 0x0

.field private static final PACKAGE_INFO_NAME_INDEX:I = 0x0

.field private static final PACKAGE_INFO_SET_INDEX:I = 0x0

.field private static final PACKAGE_INFO_VERSION_INDEX:I = 0x1

.field private static final PACKAGE_SIGNATURE_SET_INDEX:I = 0x1

.field private static final SW_ENFORCED_INDEX:I = 0x6

.field private static final VERIFIED_BOOT_HASH_INDEX:I = 0x3

.field private static final VERIFIED_BOOT_KEY_INDEX:I = 0x0

.field private static final VERIFIED_BOOT_LOCKED_INDEX:I = 0x1

.field private static final VERIFIED_BOOT_STATE_INDEX:I = 0x2


# instance fields
.field private mApplicationCertificateDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationPackageNameVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

.field private mAttestationHardwareBacked:Z

.field private mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field private mAttestationVersion:Ljava/lang/Integer;

.field private mDeviceBrand:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceProductName:Ljava/lang/String;

.field private mKeyAllowedForAllApplications:Z

.field private mKeyAuthenticatorType:Ljava/lang/Integer;

.field private mKeyBootPatchLevel:Ljava/lang/Integer;

.field private mKeyOsPatchLevel:Ljava/lang/Integer;

.field private mKeyOsVersion:Ljava/lang/Integer;

.field private mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

.field private mKeyVendorPatchLevel:Ljava/lang/Integer;

.field private mKeymasterHardwareBacked:Z

.field private mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field private mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

.field private mKeymasterVersion:Ljava/lang/Integer;

.field private mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

.field private mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

.field private mVerifiedBootLocked:Ljava/lang/Boolean;

.field private mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method private constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 16
    .param p1, "x509Certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 105
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 107
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 108
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 109
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 110
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 111
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    .line 112
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    .line 116
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    .line 117
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 118
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 119
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 120
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 121
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    .line 122
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    .line 123
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    .line 124
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 125
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 126
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 127
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    .line 285
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 286
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 287
    .local v0, "certificate":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 290
    .local v2, "keyAttributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v2, :cond_1be

    .line 294
    nop

    .line 295
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 294
    invoke-direct {p0, v3}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 296
    nop

    .line 297
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 296
    invoke-direct {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 298
    sget-object v5, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    if-ne v4, v5, :cond_7e

    move v4, v3

    goto :goto_7f

    :cond_7e
    move v4, v1

    :goto_7f
    iput-boolean v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 300
    const/4 v4, 0x4

    .line 301
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 300
    invoke-direct {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 302
    nop

    .line 303
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 302
    invoke-direct {p0, v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 304
    const/4 v5, 0x5

    .line 305
    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 304
    invoke-direct {p0, v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    .line 306
    nop

    .line 307
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 306
    invoke-direct {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 308
    sget-object v7, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    if-ne v6, v7, :cond_b9

    move v6, v3

    goto :goto_ba

    :cond_b9
    move v6, v1

    :goto_ba
    iput-boolean v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 311
    const/4 v6, 0x6

    .line 312
    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 313
    .local v6, "softwareEnforced":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    array-length v7, v6

    move v8, v1

    :goto_c9
    if-ge v8, v7, :cond_f7

    aget-object v9, v6, v8

    .line 314
    .local v9, "entry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move-object v10, v9

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 315
    .local v10, "taggedEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v11

    sparse-switch v11, :sswitch_data_1c6

    goto :goto_f4

    .line 317
    :sswitch_d8
    nop

    .line 318
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v11

    .line 317
    invoke-direct {p0, v11}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->parseAttestationApplicationId([B)V

    .line 319
    goto :goto_f4

    .line 321
    :sswitch_e9
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    .line 322
    nop

    .line 313
    .end local v9    # "entry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v10    # "taggedEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    goto :goto_c9

    .line 328
    :cond_f7
    const/4 v7, 0x7

    .line 329
    invoke-virtual {v2, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 330
    .local v7, "hardwareEnforced":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    array-length v8, v7

    move v9, v1

    :goto_104
    if-ge v9, v8, :cond_1bd

    aget-object v10, v7, v9

    .line 331
    .local v10, "entry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move-object v11, v10

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 332
    .local v11, "taggedEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v12

    sparse-switch v12, :sswitch_data_1d0

    goto/16 :goto_1b9

    .line 374
    :sswitch_114
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 375
    goto/16 :goto_1b9

    .line 371
    :sswitch_124
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 372
    goto/16 :goto_1b9

    .line 368
    :sswitch_134
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    .line 369
    goto/16 :goto_1b9

    .line 365
    :sswitch_140
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    .line 366
    goto :goto_1b9

    .line 362
    :sswitch_14b
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    .line 363
    goto :goto_1b9

    .line 359
    :sswitch_156
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 360
    goto :goto_1b9

    .line 356
    :sswitch_165
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 357
    goto :goto_1b9

    .line 340
    :sswitch_174
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 341
    .local v12, "rootOfTrust":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 342
    invoke-virtual {v12, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v13

    iput-object v13, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    .line 343
    nop

    .line 344
    invoke-virtual {v12, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 345
    nop

    .line 347
    invoke-virtual {v12, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    .line 346
    invoke-direct {p0, v13}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootStateEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v13

    iput-object v13, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 349
    iget-object v13, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v5, :cond_1b9

    .line 350
    nop

    .line 352
    invoke-virtual {v12, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    .line 351
    invoke-direct {p0, v13}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v13

    iput-object v13, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    goto :goto_1b9

    .line 337
    .end local v12    # "rootOfTrust":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :sswitch_1af
    iput-boolean v3, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    .line 338
    goto :goto_1b9

    .line 334
    :sswitch_1b2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    .line 335
    nop

    .line 330
    .end local v10    # "entry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v11    # "taggedEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1b9
    :goto_1b9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_104

    .line 380
    :cond_1bd
    return-void

    .line 291
    .end local v6    # "softwareEnforced":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v7    # "hardwareEnforced":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1be
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "No attestation extension found in certificate."

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_1c6
    .sparse-switch
        0x1fd -> :sswitch_e9
        0x2c5 -> :sswitch_d8
    .end sparse-switch

    :sswitch_data_1d0
    .sparse-switch
        0x1f7 -> :sswitch_1b2
        0x258 -> :sswitch_1af
        0x2c0 -> :sswitch_174
        0x2c1 -> :sswitch_165
        0x2c2 -> :sswitch_156
        0x2c6 -> :sswitch_14b
        0x2c7 -> :sswitch_140
        0x2c8 -> :sswitch_134
        0x2ce -> :sswitch_124
        0x2cf -> :sswitch_114
    .end sparse-switch
.end method

.method static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .registers 2
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    invoke-direct {v0, p0}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;-><init>(Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method private getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 463
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_10

    .line 464
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 466
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 3
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 458
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValueExact()I

    move-result v0

    return v0
.end method

.method private getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 3
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 448
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValueExact()I

    move-result v0

    return v0
.end method

.method private getLongFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)J
    .registers 4
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 453
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method private getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;
    .registers 3
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 438
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .registers 5
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    .line 424
    .local v0, "securityLevel":I
    packed-switch v0, :pswitch_data_18

    .line 432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid security level."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :pswitch_f
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object v1

    .line 428
    :pswitch_12
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object v1

    .line 426
    :pswitch_15
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object v1

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method private getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 5
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 443
    new-instance v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private getVerifiedBootStateEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .registers 5
    .param p1, "asn1"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    .line 408
    .local v0, "verifiedBoot":I
    packed-switch v0, :pswitch_data_1c

    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid verified boot state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :pswitch_f
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v1

    .line 414
    :pswitch_12
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v1

    .line 412
    :pswitch_15
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v1

    .line 410
    :pswitch_18
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v1

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method private parseAttestationApplicationId([B)V
    .registers 15
    .param p1, "attestationApplicationId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 385
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 384
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 386
    .local v0, "outerSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 387
    .local v1, "packageNameVersion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 388
    .local v3, "packageInfoSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1f
    const/4 v7, 0x1

    if-ge v6, v5, :cond_42

    aget-object v8, v4, v6

    .line 389
    .local v8, "packageInfoEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move-object v9, v8

    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 390
    .local v9, "packageInfoSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 392
    invoke-virtual {v9, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    .line 391
    invoke-direct {p0, v10}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v10

    .line 393
    invoke-virtual {v9, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getLongFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 390
    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v8    # "packageInfoEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v9    # "packageInfoSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 395
    :cond_42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v4, "certificateDigests":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/ByteString;>;"
    nop

    .line 397
    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 398
    .local v5, "certificateDigestSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    array-length v7, v6

    :goto_53
    if-ge v2, v7, :cond_61

    aget-object v8, v6, v2

    .line 399
    .local v8, "certificateDigestEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v8}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v8    # "certificateDigestEntry":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 401
    :cond_61
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 402
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    .line 404
    return-void
.end method


# virtual methods
.method getApplicationCertificateDigests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getApplicationPackageNameVersion()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method getAttestationSecurityLevel()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object v0
.end method

.method getAttestationVersion()I
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getDeviceBrand()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceName()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceProductName()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    return-object v0
.end method

.method getKeyAuthenticatorType()I
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 211
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyAuthenticatorType is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyBootPatchLevel()I
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 218
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyBootPatchLevel is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyOsPatchLevel()I
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 225
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyOsPatchLevel is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyOsVersion()I
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 241
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 239
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyOsVersion is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyVendorPatchLevel()I
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 232
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyVendorPatchLevel is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeymasterSecurityLevel()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object v0
.end method

.method getKeymasterUniqueId()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method getKeymasterVersion()I
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getVerifiedBootHash()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method getVerifiedBootKey()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v0
.end method

.method isAttestationHardwareBacked()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    return v0
.end method

.method isKeyAllowedForAllApplications()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    return v0
.end method

.method isKeyRequiresUnlockedDevice()Z
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 248
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 246
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyRequiresUnlockedDevice is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isKeymasterHardwareBacked()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    return v0
.end method

.method isVerifiedBootLocked()Z
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 265
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 263
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VerifiedBootLocked is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
