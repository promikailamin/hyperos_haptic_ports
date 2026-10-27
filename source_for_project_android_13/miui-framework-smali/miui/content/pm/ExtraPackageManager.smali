.class public Lmiui/content/pm/ExtraPackageManager;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
    }
.end annotation


# static fields
.field private static final blacklist CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

.field public static final blacklist DEXOPT_INTERPRET_ONLY:I = 0x20000000

.field public static final blacklist INSTALL_FROM_BOOTING:I = 0x40000000

.field public static final blacklist INSTALL_IN_BG:I = -0x80000000

.field private static final blacklist SIGNATURE_HOLDER:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/content/pm/ExtraPackageManager$SignatureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TRUSTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 67
    const-string v0, "android.permission.ACCOUNT_MANAGER"

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    const-string v2, "android.permission.BIND_AUTOFILL_SERVICE"

    const-string v3, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    const-string v4, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    const-string v5, "android.permission.BIND_DREAM_SERVICE"

    const-string v6, "android.permission.BIND_INPUT_METHOD"

    const-string v7, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    const-string v8, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    const-string v9, "android.permission.BIND_PRINT_SERVICE"

    const-string v10, "android.permission.BIND_TEXT_SERVICE"

    const-string v11, "android.permission.BIND_VOICE_INTERACTION"

    const-string v12, "android.permission.BIND_VPN_SERVICE"

    const-string v13, "android.permission.BIND_VR_LISTENER_SERVICE"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

    .line 300
    new-instance v0, Lmiui/content/pm/ExtraPackageManager$1;

    invoke-direct {v0}, Lmiui/content/pm/ExtraPackageManager$1;-><init>()V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    .line 392
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.syncadapters.calendar"

    const-string v3, "com.google.android.syncadapters.contacts"

    const-string v4, "com.google.android.talk"

    const-string v5, "com.google.android.tts"

    const-string v6, "com.google.android.voicesearch"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 369
    if-nez p0, :cond_8

    .line 370
    if-nez p1, :cond_6

    .line 371
    const/4 v0, 0x1

    goto :goto_7

    .line 372
    :cond_6
    const/4 v0, -0x1

    .line 370
    :goto_7
    return v0

    .line 374
    :cond_8
    if-nez p1, :cond_c

    .line 375
    const/4 v0, -0x2

    return v0

    .line 377
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    .line 379
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 381
    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 382
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    .line 383
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 386
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 387
    return v2

    .line 389
    :cond_36
    const/4 v2, -0x3

    return v2
.end method

.method public static blacklist handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
    .registers 6
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "isNeedCancel":Z
    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 408
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 409
    .local v1, "resultAccount":Landroid/accounts/Account;
    if-eqz v1, :cond_32

    iget-object v2, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.xiaomi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 410
    const/4 v0, 0x1

    .line 411
    const-string v2, "response"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountAuthenticatorResponse;

    .line 412
    .local v2, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v2, :cond_32

    .line 413
    const/4 v3, 0x4

    const-string v4, "canceled"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 417
    .end local v1    # "resultAccount":Landroid/accounts/Account;
    .end local v2    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    :cond_32
    return v0
.end method

.method public static blacklist isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .registers 14
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .line 331
    const/4 v0, 0x1

    const/16 v1, 0x3e9

    if-eq p3, v1, :cond_6e

    const/16 v1, 0x17d4

    if-ne p3, v1, :cond_a

    goto :goto_6e

    .line 335
    :cond_a
    const-string v1, "com.xiaomi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_65

    .line 336
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "callerPkg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 339
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_1a
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_1e} :catch_20

    move-object v3, v4

    .line 342
    goto :goto_21

    .line 340
    :catch_20
    move-exception v4

    .line 344
    :goto_21
    if-eqz v3, :cond_65

    .line 347
    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v5, v5, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-nez v5, :cond_36

    .line 349
    return v0

    .line 353
    :cond_36
    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v4, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;

    array-length v5, v4

    move v6, v2

    :goto_40
    if-ge v6, v5, :cond_5a

    aget-object v7, v4, v6

    .line 354
    .local v7, "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    iget-object v8, v7, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    iget-object v8, v7, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v9}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v8

    if-nez v8, :cond_57

    .line 355
    return v0

    .line 353
    .end local v7    # "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 359
    :cond_5a
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {p0, v5, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_65

    .line 360
    return v0

    .line 365
    .end local v1    # "callerPkg":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_65
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v2

    :goto_6d
    return v0

    .line 332
    :cond_6e
    :goto_6e
    return v0
.end method

.method public static blacklist isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .registers 4
    .param p0, "je"    # Ljava/util/jar/JarEntry;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static blacklist isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .registers 2
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .line 308
    const-string v0, ""

    invoke-static {p0, v0}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 8
    .param p0, "signature"    # [Landroid/content/pm/Signature;
    .param p1, "permName"    # Ljava/lang/String;

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_10

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 317
    return v1

    .line 319
    :cond_10
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v0, v0, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v2, v0

    move v3, v1

    :goto_1c
    if-ge v3, v2, :cond_2b

    aget-object v4, v0, v3

    .line 320
    .local v4, "sig":[Landroid/content/pm/Signature;
    invoke-static {v4, p0}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-nez v5, :cond_28

    .line 322
    const/4 v0, 0x1

    return v0

    .line 319
    .end local v4    # "sig":[Landroid/content/pm/Signature;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 325
    :cond_2b
    return v1
.end method
