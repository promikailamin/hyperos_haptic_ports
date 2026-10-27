.class public Lmiui/os/CustVerifier;
.super Ljava/lang/Object;
.source "CustVerifier.java"


# static fields
.field private static final blacklist CUST_PATH:Ljava/lang/String;

.field private static final blacklist CUST_SIGNATURE_FILE:Ljava/lang/String;

.field private static final blacklist DEBUG:Z

.field private static final blacklist INT_SIZE:I = 0x4

.field public static final blacklist MODE_DELETE:I = 0x1

.field public static final blacklist MODE_NORMAL:I = 0x0

.field private static final blacklist RSANUMBYTES:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "CustVerifier"

.field private static final blacklist VERIFY_KEY_FILE:Ljava/lang/String; = "/verity_key"

.field private static blacklist sInstance:Lmiui/os/CustVerifier;


# instance fields
.field private blacklist mPubKey:Ljava/security/PublicKey;

.field private blacklist mSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lmiui/os/CustVerifier;->DEBUG:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sign_customized_applist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private blacklist a2b(B)B
    .registers 3
    .param p1, "a"    # B

    .line 433
    const/16 v0, 0x30

    if-lt p1, v0, :cond_c

    const/16 v0, 0x39

    if-gt p1, v0, :cond_c

    .line 434
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    return v0

    .line 435
    :cond_c
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1a

    .line 436
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    .line 437
    :cond_1a
    const/16 v0, 0x41

    if-lt p1, v0, :cond_28

    const/16 v0, 0x46

    if-gt p1, v0, :cond_28

    .line 438
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    .line 441
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist b2a(I)B
    .registers 3
    .param p1, "b"    # I

    .line 445
    const/16 v0, 0xa

    if-ge p1, v0, :cond_8

    .line 446
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    return v0

    .line 448
    :cond_8
    add-int/lit8 v0, p1, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    return v0
.end method

.method private blacklist bytesToHexString([B)Ljava/lang/String;
    .registers 7
    .param p1, "data"    # [B

    .line 468
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 469
    .local v0, "res":[B
    const/4 v1, 0x0

    .line 470
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_27

    .line 471
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget-byte v4, p1, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v0, v1

    .line 472
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .restart local v1    # "j":I
    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v0, v3

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 474
    .end local v2    # "i":I
    :cond_27
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private blacklist checkCustSignature()V
    .registers 13

    .line 398
    const-string v0, "CustVerifier"

    const-string v1, "/verity_key"

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 400
    .local v1, "pubKey":Ljava/security/PublicKey;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 401
    .local v2, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v3, Ljava/io/File;

    sget-object v4, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v3, "root":Ljava/io/File;
    :try_start_14
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    :goto_17
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_74

    .line 406
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 407
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "files":[Ljava/lang/String;
    sget-boolean v6, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v6, :cond_32

    .line 410
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_32
    array-length v6, v5

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v6, :cond_73

    aget-object v8, v5, v7

    .line 414
    .local v8, "fn":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    .local v9, "f":Ljava/io/File;
    sget-boolean v10, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v10, :cond_5b

    .line 417
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_5b
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 421
    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 422
    :cond_65
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_70

    const-string v10, ".apk"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_70} :catch_75

    .line 413
    .end local v8    # "fn":Ljava/lang/String;
    .end local v9    # "f":Ljava/io/File;
    :cond_70
    :goto_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 426
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "files":[Ljava/lang/String;
    :cond_73
    goto :goto_17

    .line 429
    :cond_74
    goto :goto_90

    .line 427
    :catch_75
    move-exception v4

    .line 428
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCustSignature occurs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_90
    return-void
.end method

.method private blacklist getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 19
    .param p1, "sigFn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    move-object/from16 v1, p0

    const-string v2, "CustVerifier"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 338
    .local v3, "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 340
    .local v4, "failedMsg":Ljava/lang/String;
    :try_start_b
    new-instance v0, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 341
    .local v6, "signFile":Ljava/io/File;
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_18} :catch_109
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_d5
    .catchall {:try_start_b .. :try_end_18} :catchall_d3

    move-object v7, v0

    .line 343
    .local v7, "scanner":Ljava/util/Scanner;
    :goto_19
    :try_start_19
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 344
    invoke-virtual {v7}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "line":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "tokens":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v9, v10, :cond_37

    .line 348
    aget-object v9, v8, v11

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .end local v0    # "line":Ljava/lang/String;
    .end local v8    # "tokens":[Ljava/lang/String;
    goto :goto_19

    .line 351
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v8    # "tokens":[Ljava/lang/String;
    :cond_37
    aget-object v9, v8, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 352
    .local v9, "signLen":I
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v10, v12

    .line 353
    .local v10, "fileSize":I
    aget-object v12, v8, v11

    invoke-direct {v1, v12}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 354
    .local v12, "sign":[B
    sub-int v13, v10, v9

    invoke-direct {v1, v6, v13, v12}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v13

    .line 356
    .local v13, "valid":Z
    if-nez v13, :cond_54

    .line 357
    const-string v11, "cust signature file is cracked"

    move-object v4, v11

    .line 358
    goto :goto_bf

    .line 360
    :cond_54
    sget-boolean v14, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v14, :cond_b1

    .line 361
    const-string v14, "cust apk and signatures:"

    invoke-static {v2, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_65
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ae

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 363
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "line":Ljava/lang/String;
    .local v16, "line":Ljava/lang/String;
    const-string v0, "\t"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v1, 0x14

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_19 .. :try_end_a6} :catchall_cd

    .line 364
    move-object/from16 v1, p0

    move v11, v5

    move-object/from16 v0, v16

    move-object/from16 v5, p1

    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_65

    .line 362
    .end local v16    # "line":Ljava/lang/String;
    .restart local v0    # "line":Ljava/lang/String;
    :cond_ae
    move-object/from16 v16, v0

    .end local v0    # "line":Ljava/lang/String;
    .restart local v16    # "line":Ljava/lang/String;
    goto :goto_b3

    .line 360
    .end local v16    # "line":Ljava/lang/String;
    .restart local v0    # "line":Ljava/lang/String;
    :cond_b1
    move-object/from16 v16, v0

    .line 366
    .end local v0    # "line":Ljava/lang/String;
    .restart local v16    # "line":Ljava/lang/String;
    :goto_b3
    nop

    .line 371
    :try_start_b4
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V
    :try_end_b7
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_b7} :catch_109
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_d5
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_d3

    .line 386
    if-nez v4, :cond_bb

    .line 387
    const-string v4, "Cust signature read finish."

    .line 389
    :cond_bb
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v3

    .line 371
    .end local v8    # "tokens":[Ljava/lang/String;
    .end local v9    # "signLen":I
    .end local v10    # "fileSize":I
    .end local v12    # "sign":[B
    .end local v13    # "valid":Z
    .end local v16    # "line":Ljava/lang/String;
    :cond_bf
    :goto_bf
    :try_start_bf
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 372
    nop

    .line 373
    if-nez v4, :cond_c8

    .line 374
    const-string v0, "cust signature file is not signed"
    :try_end_c7
    .catch Ljava/lang/NullPointerException; {:try_start_bf .. :try_end_c7} :catch_109
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c7} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c7} :catch_d5
    .catchall {:try_start_bf .. :try_end_c7} :catchall_d3

    move-object v4, v0

    .line 386
    .end local v6    # "signFile":Ljava/io/File;
    .end local v7    # "scanner":Ljava/util/Scanner;
    :cond_c8
    if-nez v4, :cond_115

    .line 387
    const-string v4, "Cust signature read finish."

    goto :goto_115

    .line 371
    .restart local v6    # "signFile":Ljava/io/File;
    .restart local v7    # "scanner":Ljava/util/Scanner;
    :catchall_cd
    move-exception v0

    :try_start_ce
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 372
    nop

    .end local v3    # "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "failedMsg":Ljava/lang/String;
    .end local p0    # "this":Lmiui/os/CustVerifier;
    .end local p1    # "sigFn":Ljava/lang/String;
    throw v0
    :try_end_d3
    .catch Ljava/lang/NullPointerException; {:try_start_ce .. :try_end_d3} :catch_109
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d3} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d3} :catch_d5
    .catchall {:try_start_ce .. :try_end_d3} :catchall_d3

    .line 386
    .end local v6    # "signFile":Ljava/io/File;
    .end local v7    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "failedMsg":Ljava/lang/String;
    .restart local p0    # "this":Lmiui/os/CustVerifier;
    .restart local p1    # "sigFn":Ljava/lang/String;
    :catchall_d3
    move-exception v0

    goto :goto_11b

    .line 382
    :catch_d5
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read cust signature file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_f4
    .catchall {:try_start_d6 .. :try_end_f4} :catchall_d3

    move-object v0, v1

    .line 386
    .end local v4    # "failedMsg":Ljava/lang/String;
    .local v0, "failedMsg":Ljava/lang/String;
    if-nez v0, :cond_fb

    .line 387
    const-string v0, "Cust signature read finish."

    move-object v4, v0

    goto :goto_115

    .line 386
    :cond_fb
    move-object v4, v0

    goto :goto_115

    .line 379
    .end local v0    # "failedMsg":Ljava/lang/String;
    .restart local v4    # "failedMsg":Ljava/lang/String;
    :catch_fd
    move-exception v0

    .line 380
    .local v0, "ie":Ljava/io/IOException;
    :try_start_fe
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v1, "failed to read cust signature file: IOException"

    move-object v4, v1

    .line 386
    .end local v0    # "ie":Ljava/io/IOException;
    goto :goto_115

    .line 376
    :catch_109
    move-exception v0

    .line 377
    .local v0, "ne":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v1, "cust signature file not found"
    :try_end_113
    .catchall {:try_start_fe .. :try_end_113} :catchall_d3

    move-object v4, v1

    .line 386
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    nop

    .line 389
    :cond_115
    :goto_115
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    nop

    .line 391
    const/4 v0, 0x0

    return-object v0

    .line 386
    :goto_11b
    if-nez v4, :cond_11f

    .line 387
    const-string v4, "Cust signature read finish."

    .line 389
    :cond_11f
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    throw v0
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/os/CustVerifier;
    .registers 3

    const-class v0, Lmiui/os/CustVerifier;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    if-nez v1, :cond_14

    .line 59
    new-instance v1, Lmiui/os/CustVerifier;

    invoke-direct {v1}, Lmiui/os/CustVerifier;-><init>()V

    .line 60
    .local v1, "instance":Lmiui/os/CustVerifier;
    invoke-direct {v1}, Lmiui/os/CustVerifier;->init()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 61
    sput-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    .line 64
    .end local v1    # "instance":Lmiui/os/CustVerifier;
    :cond_14
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getSignPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 71
    const-string v0, "\\/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "pathSplite":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    const-string v4, ".sig"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist hexStringToBytes(Ljava/lang/String;)[B
    .registers 11
    .param p1, "hex"    # Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 453
    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 457
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 458
    .local v2, "str":[B
    const/4 v3, 0x0

    .line 459
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v2

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_37

    .line 460
    aget-byte v5, v2, v4

    .line 461
    .local v5, "high":B
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v2, v6

    .line 462
    .local v6, "low":B
    invoke-direct {p0, v5}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    invoke-direct {p0, v6}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 463
    .local v7, "b":B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "j":I
    .local v8, "j":I
    aput-byte v7, v0, v3

    .line 459
    .end local v5    # "high":B
    .end local v6    # "low":B
    .end local v7    # "b":B
    add-int/lit8 v4, v4, 0x2

    move v3, v8

    goto :goto_19

    .line 465
    .end local v4    # "i":I
    .end local v8    # "j":I
    .restart local v3    # "j":I
    :cond_37
    return-object v0
.end method

.method private blacklist init()Z
    .registers 4

    .line 128
    const-string v0, "/verity_key"

    invoke-direct {p0, v0}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    .line 129
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 130
    const-string v0, "CustVerifier"

    const-string v2, "failed to load verify key"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 133
    :cond_13
    sget-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/os/CustVerifier;->getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    .line 134
    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method private blacklist loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p1, "sigFile"    # Ljava/io/File;

    .line 151
    const/16 v0, 0x200

    :try_start_2
    new-array v0, v0, [B

    .line 152
    .local v0, "buf":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_29

    .line 154
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 155
    .local v2, "total":I
    const/4 v3, 0x0

    .line 156
    .local v3, "count":I
    :cond_b
    :try_start_b
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    .line 157
    add-int/2addr v2, v3

    .line 158
    array-length v4, v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_23

    if-lt v2, v4, :cond_b

    .line 163
    .end local v2    # "total":I
    .end local v3    # "count":I
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 164
    nop

    .line 165
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 163
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 164
    nop

    .end local p0    # "this":Lmiui/os/CustVerifier;
    .end local p1    # "sigFile":Ljava/io/File;
    throw v2
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_29} :catch_29

    .line 166
    .end local v0    # "buf":[B
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lmiui/os/CustVerifier;
    .restart local p1    # "sigFile":Ljava/io/File;
    :catch_29
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustVerifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 19
    .param p1, "keyPath"    # Ljava/lang/String;

    .line 188
    const-string v1, "CustVerifier"

    const/4 v2, 0x0

    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_10c

    move-object/from16 v4, p1

    :try_start_9
    invoke-direct {v0, v4, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_10a

    move-object v3, v0

    .line 191
    .local v3, "keyFile":Ljava/io/RandomAccessFile;
    const/4 v0, 0x4

    :try_start_e
    new-array v5, v0, [B

    .line 192
    .local v5, "buf":[B
    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    array-length v7, v5

    if-eq v6, v7, :cond_21

    .line 193
    const-string v0, "EOF when read len bytes"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_104

    .line 194
    nop

    .line 252
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_10a

    .line 194
    return-object v2

    .line 196
    :cond_21
    const/4 v6, 0x0

    :try_start_22
    aget-byte v7, v5, v6

    const/4 v8, 0x1

    aget-byte v9, v5, v8

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    const/4 v9, 0x2

    aget-byte v10, v5, v9

    const/16 v11, 0x10

    shl-int/2addr v10, v11

    or-int/2addr v7, v10

    const/4 v10, 0x3

    aget-byte v12, v5, v10

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v7, v12

    .line 197
    .local v7, "len":I
    mul-int/2addr v7, v0

    .line 198
    if-lez v7, :cond_f9

    const/16 v12, 0x100

    if-le v7, v12, :cond_40

    goto/16 :goto_f9

    .line 204
    :cond_40
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v13

    if-eq v13, v0, :cond_50

    .line 205
    const-string v0, "can\'t skip n0inv bytes"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_104

    .line 206
    nop

    .line 252
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_10a

    .line 206
    return-object v2

    .line 210
    :cond_50
    :try_start_50
    new-array v0, v7, [B

    .line 211
    .local v0, "modBytes":[B
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v13

    array-length v14, v0

    if-eq v13, v14, :cond_63

    .line 212
    const-string v6, "EOF when read mod bytes"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_104

    .line 213
    nop

    .line 252
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_10a

    .line 213
    return-object v2

    .line 216
    :cond_63
    const/4 v13, 0x0

    .local v13, "i":I
    add-int/lit8 v14, v7, -0x1

    .local v14, "j":I
    :goto_66
    if-ge v13, v14, :cond_75

    .line 217
    :try_start_68
    aget-byte v15, v0, v13

    .line 218
    .local v15, "b":B
    aget-byte v16, v0, v14

    aput-byte v16, v0, v13

    .line 219
    aput-byte v15, v0, v14

    .line 216
    .end local v15    # "b":B
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_66

    .line 221
    .end local v13    # "i":I
    .end local v14    # "j":I
    :cond_75
    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v8, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 224
    .local v13, "mod":Ljava/math/BigInteger;
    rsub-int v14, v7, 0x100

    add-int/2addr v14, v12

    .line 225
    .local v14, "skipNum":I
    invoke-virtual {v3, v14}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v12

    if-eq v12, v14, :cond_8d

    .line 226
    const-string v6, "can\'t skip rr bytes"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_104

    .line 227
    nop

    .line 252
    :try_start_89
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_10a

    .line 227
    return-object v2

    .line 231
    :cond_8d
    :try_start_8d
    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v12

    array-length v15, v5

    if-eq v12, v15, :cond_9e

    .line 232
    const-string v6, "EOF when read exp bytes"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_104

    .line 233
    nop

    .line 252
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_10a

    .line 233
    return-object v2

    .line 235
    :cond_9e
    :try_start_9e
    aget-byte v6, v5, v6

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    aget-byte v8, v5, v9

    shl-int/2addr v8, v11

    or-int/2addr v6, v8

    aget-byte v8, v5, v10

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v6, v8

    .line 236
    .local v6, "expInt":I
    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 239
    .local v8, "exp":Ljava/math/BigInteger;
    new-instance v9, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v9, v13, v8}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 240
    .local v9, "rpks":Ljava/security/spec/RSAPublicKeySpec;
    const-string v10, "RSA"

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    .line 241
    .local v10, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v10, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v12

    .line 244
    .local v12, "pk":Ljava/security/PublicKey;
    sget-boolean v15, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v15, :cond_f4

    .line 245
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVerifyKey: \n\tlen: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "\n\tmodulus: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "\n\tpublic exponent: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_9e .. :try_end_f4} :catchall_104

    .line 250
    :cond_f4
    nop

    .line 252
    :try_start_f5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_10a

    .line 250
    return-object v12

    .line 199
    .end local v0    # "modBytes":[B
    .end local v6    # "expInt":I
    .end local v8    # "exp":Ljava/math/BigInteger;
    .end local v9    # "rpks":Ljava/security/spec/RSAPublicKeySpec;
    .end local v10    # "kf":Ljava/security/KeyFactory;
    .end local v12    # "pk":Ljava/security/PublicKey;
    .end local v13    # "mod":Ljava/math/BigInteger;
    .end local v14    # "skipNum":I
    :cond_f9
    :goto_f9
    :try_start_f9
    const-string v0, "invalid len bytes"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_104

    .line 200
    nop

    .line 252
    :try_start_ff
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 200
    const/4 v1, 0x0

    return-object v1

    .line 252
    .end local v5    # "buf":[B
    .end local v7    # "len":I
    :catchall_104
    move-exception v0

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 253
    nop

    .end local p0    # "this":Lmiui/os/CustVerifier;
    .end local p1    # "keyPath":Ljava/lang/String;
    throw v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10a} :catch_10a

    .line 254
    .end local v3    # "keyFile":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lmiui/os/CustVerifier;
    .restart local p1    # "keyPath":Ljava/lang/String;
    :catch_10a
    move-exception v0

    goto :goto_10f

    :catch_10c
    move-exception v0

    move-object/from16 v4, p1

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    :goto_10f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occur when load verify key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist verifyFileBlockSignature(Ljava/io/File;I[B)Z
    .registers 15
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # I
    .param p3, "signature"    # [B

    .line 285
    const-string v0, " "

    const/4 v1, 0x0

    const-string v2, "CustVerifier"

    if-nez p2, :cond_d

    .line 286
    const-string v0, "verifyFileBlockSignature get 0-sized block"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v1

    .line 291
    :cond_d
    :try_start_d
    const-string v3, "SHA256withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 292
    .local v3, "sig":Ljava/security/Signature;
    iget-object v4, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v3, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 293
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 294
    .local v4, "buf":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_89

    .line 297
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 298
    .local v6, "total":I
    :cond_22
    :try_start_22
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4c

    .line 299
    add-int v7, v8, v6

    if-le v7, p2, :cond_30

    .line 300
    sub-int v8, p2, v6

    .line 302
    :cond_30
    invoke-virtual {v3, v4, v1, v8}, Ljava/security/Signature;->update([BII)V

    .line 303
    add-int/2addr v6, v8

    .line 304
    if-ne v6, p2, :cond_22

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "total: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_4c
    invoke-virtual {v3, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    .line 310
    .local v7, "result":Z
    sget-boolean v9, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v9, :cond_7e

    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verify "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_22 .. :try_end_7e} :catchall_83

    .line 313
    :cond_7e
    nop

    .line 315
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 313
    return v7

    .line 315
    .end local v6    # "total":I
    .end local v7    # "result":Z
    .end local v8    # "count":I
    :catchall_83
    move-exception v0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 316
    nop

    .end local p0    # "this":Lmiui/os/CustVerifier;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "size":I
    .end local p3    # "signature":[B
    throw v0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_89

    .line 317
    .end local v3    # "sig":Ljava/security/Signature;
    .end local v4    # "buf":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lmiui/os/CustVerifier;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "size":I
    .restart local p3    # "signature":[B
    :catch_89
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurs when verify file block: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private blacklist verifyFileSignature(Ljava/lang/String;[B)Z
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "signature"    # [B

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 268
    const-string v0, "CustVerifier"

    const-string v1, "verifyFileSignature get null file"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 274
    .local v1, "size":I
    invoke-direct {p0, v0, v1, p2}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v2

    return v2
.end method

.method private blacklist verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 139
    :try_start_0
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 140
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 142
    invoke-direct {p0, p2}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return v1

    .line 143
    .end local v0    # "sig":Ljava/security/Signature;
    :catch_1b
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustVerifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist verifyApkSignatue(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 91
    invoke-direct {p0, p1}, Lmiui/os/CustVerifier;->getSignPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "sigPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Sig path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustVerifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "sigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    .line 96
    .local v3, "hasSigFile":Z
    const/4 v4, 0x0

    if-nez p2, :cond_87

    .line 97
    const/4 v5, 0x0

    .line 98
    .local v5, "signature":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 99
    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has sig File1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 102
    :cond_46
    iget-object v6, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has sig File2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_65
    if-nez v5, :cond_7e

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no signature found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v4

    .line 109
    :cond_7e
    invoke-direct {p0, v5}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lmiui/os/CustVerifier;->verifyFileSignature(Ljava/lang/String;[B)Z

    move-result v2

    return v2

    .line 110
    .end local v5    # "signature":Ljava/lang/String;
    :cond_87
    const/4 v2, 0x1

    if-ne p2, v2, :cond_96

    .line 111
    if-eqz v3, :cond_95

    .line 112
    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "signature":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lmiui/os/CustVerifier;->verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 116
    .end local v2    # "signature":Ljava/lang/String;
    :cond_95
    return v4

    .line 119
    :cond_96
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "not supported mode"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
