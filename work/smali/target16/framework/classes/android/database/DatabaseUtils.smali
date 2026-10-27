.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;,
        Landroid/database/DatabaseUtils$SqlStatementExtendedType;,
        Landroid/database/DatabaseUtils$SqlStatementType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DIGITS:[C

.field public static final whitelist STATEMENT_ABORT:I = 0x6

.field public static final whitelist STATEMENT_ATTACH:I = 0x3

.field public static final whitelist STATEMENT_BEGIN:I = 0x4

.field public static final blacklist STATEMENT_COMMENT:I = 0x66

.field public static final whitelist STATEMENT_COMMIT:I = 0x5

.field public static final blacklist STATEMENT_CREATE:I = 0x65

.field public static final whitelist STATEMENT_DDL:I = 0x8

.field public static final whitelist STATEMENT_OTHER:I = 0x63

.field public static final whitelist STATEMENT_PRAGMA:I = 0x7

.field public static final whitelist STATEMENT_SELECT:I = 0x1

.field public static final whitelist STATEMENT_UNPREPARED:I = 0x9

.field public static final whitelist STATEMENT_UPDATE:I = 0x2

.field public static final blacklist STATEMENT_WITH:I = 0x64

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static greylist-max-o mColl:Ljava/text/Collator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 649
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Landroid/database/DatabaseUtils;->DIGITS:[C

    .line 684
    const/4 v0, 0x0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void

    nop

    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8

    .line 548
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 550
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_44

    .line 551
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 552
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 553
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1b

    .line 554
    goto :goto_41

    .line 556
    :cond_1b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 558
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    goto :goto_41

    .line 566
    :cond_32
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 567
    goto :goto_41

    .line 569
    :cond_39
    if-ne v3, v0, :cond_3e

    .line 570
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_3e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 574
    :cond_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    return-void
.end method

.method public static whitelist appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1746
    if-eqz p0, :cond_16

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_16

    .line 1749
    :cond_6
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1750
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1751
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1752
    return-object v0

    .line 1747
    :cond_16
    :goto_16
    return-object p1
.end method

.method public static final whitelist appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 3

    .line 592
    if-nez p1, :cond_8

    .line 593
    const-string p1, "NULL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 594
    :cond_8
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    .line 595
    check-cast p1, Ljava/lang/Boolean;

    .line 596
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 597
    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 599
    :cond_1a
    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    :goto_1f
    goto :goto_27

    .line 602
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 604
    :goto_27
    return-void
.end method

.method private static blacklist bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V
    .registers 7

    .line 249
    if-nez p1, :cond_3

    return-void

    .line 251
    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_59

    .line 252
    aget-object v1, p1, v0

    .line 253
    invoke-static {v1}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_5a

    .line 268
    :pswitch_10
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4d

    .line 272
    add-int/lit8 v2, v0, 0x1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_47

    const-wide/16 v3, 0x1

    goto :goto_49

    .line 264
    :pswitch_21
    add-int/lit8 v2, v0, 0x1

    check-cast v1, [B

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 265
    goto :goto_56

    .line 261
    :pswitch_29
    add-int/lit8 v2, v0, 0x1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 262
    goto :goto_56

    .line 258
    :pswitch_35
    add-int/lit8 v2, v0, 0x1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 259
    goto :goto_56

    .line 255
    :pswitch_41
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 256
    goto :goto_56

    .line 272
    :cond_47
    const-wide/16 v3, 0x0

    :goto_49
    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_56

    .line 274
    :cond_4d
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 251
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 279
    :cond_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_10
        :pswitch_21
    .end packed-switch
.end method

.method public static whitelist bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .registers 5

    .line 292
    if-nez p2, :cond_6

    .line 293
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_50

    .line 294
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_47

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_f

    goto :goto_47

    .line 296
    :cond_f
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1d

    .line 297
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_50

    .line 298
    :cond_1d
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    .line 300
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 301
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_34

    .line 303
    :cond_2f
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 305
    :goto_34
    goto :goto_50

    :cond_35
    instance-of v0, p2, [B

    if-eqz v0, :cond_3f

    .line 306
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_50

    .line 308
    :cond_3f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_50

    .line 295
    :cond_47
    :goto_47
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 310
    :goto_50
    return-void
.end method

.method public static varargs blacklist bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 13

    .line 325
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 327
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 329
    :cond_b
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    return-object p0

    .line 333
    :cond_15
    nop

    .line 334
    nop

    .line 336
    nop

    .line 337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    const/4 v3, 0x0

    const/16 v4, 0x20

    move v5, v3

    move v6, v4

    :goto_26
    if-ge v3, v1, :cond_b5

    .line 340
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 341
    if-ne v3, v0, :cond_ae

    .line 344
    nop

    .line 348
    move v3, v7

    .line 349
    :goto_32
    if-ge v3, v1, :cond_46

    .line 350
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 351
    const/16 v9, 0x30

    if-lt v8, v9, :cond_44

    const/16 v9, 0x39

    if-le v8, v9, :cond_41

    goto :goto_44

    .line 349
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 352
    :cond_44
    :goto_44
    nop

    .line 353
    goto :goto_47

    .line 349
    :cond_46
    move v8, v4

    .line 356
    :goto_47
    if-eq v7, v3, :cond_53

    .line 357
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 362
    :cond_53
    add-int/lit8 v7, v5, 0x1

    aget-object v5, p1, v5

    .line 363
    if-eq v6, v4, :cond_60

    const/16 v9, 0x3d

    if-eq v6, v9, :cond_60

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_60
    invoke-static {v5}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v9

    packed-switch v9, :pswitch_data_ba

    .line 378
    :pswitch_67
    instance-of v9, v5, Ljava/lang/Boolean;

    if-eqz v9, :cond_98

    .line 381
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_94

    .line 375
    :pswitch_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blobs not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :pswitch_7a
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 373
    goto :goto_a7

    .line 369
    :pswitch_84
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    goto :goto_a7

    .line 366
    :pswitch_8e
    const-string v5, "NULL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    goto :goto_a7

    .line 381
    :goto_94
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 383
    :cond_98
    const/16 v9, 0x27

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    :goto_a7
    if-eq v8, v4, :cond_ac

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_ac
    move v5, v7

    goto :goto_b3

    .line 391
    :cond_ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    move v6, v3

    move v3, v7

    .line 394
    :goto_b3
    goto/16 :goto_26

    .line 395
    :cond_b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_84
        :pswitch_7a
        :pswitch_67
        :pswitch_72
    .end packed-switch
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 1099
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 1101
    :try_start_4
    invoke-static {p0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1103
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1101
    return-object p1

    .line 1103
    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1104
    throw p1
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 1115
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist categorizeStatement(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 1662
    const/16 v0, 0x63

    if-nez p0, :cond_5

    return v0

    .line 1664
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v1, :sswitch_data_10a

    :cond_17
    goto/16 :goto_d2

    :sswitch_19
    const-string v1, "WIT"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x10

    goto/16 :goto_d3

    :sswitch_25
    const-string v1, "UPD"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v9

    goto/16 :goto_d3

    :sswitch_30
    const-string v1, "SEL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto/16 :goto_d3

    :sswitch_3b
    const-string v1, "ROL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v4

    goto/16 :goto_d3

    :sswitch_46
    const-string v1, "REP"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v8

    goto/16 :goto_d3

    :sswitch_51
    const-string v1, "PRA"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xa

    goto/16 :goto_d3

    :sswitch_5d
    const-string v1, "INS"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v10

    goto/16 :goto_d3

    :sswitch_68
    const-string v1, "END"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v5

    goto/16 :goto_d3

    :sswitch_73
    const-string v1, "DRO"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xc

    goto :goto_d3

    :sswitch_7e
    const-string v1, "DET"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xf

    goto :goto_d3

    :sswitch_89
    const-string v1, "DEL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v6

    goto :goto_d3

    :sswitch_93
    const-string v1, "CRE"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xb

    goto :goto_d3

    :sswitch_9e
    const-string v1, "COM"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_d3

    :sswitch_a8
    const-string v1, "BEG"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_d3

    :sswitch_b2
    const-string v1, "ATT"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v7

    goto :goto_d3

    :sswitch_bc
    const-string v1, "ANA"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xe

    goto :goto_d3

    :sswitch_c7
    const-string v1, "ALT"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xd

    goto :goto_d3

    :goto_d2
    const/4 v1, -0x1

    :goto_d3
    packed-switch v1, :pswitch_data_150

    .line 1688
    const-string p1, "--"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_106

    const-string p1, "/*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_105

    goto :goto_106

    .line 1686
    :pswitch_e7
    const/16 p0, 0x64

    return p0

    .line 1685
    :pswitch_ea
    return v3

    .line 1683
    :pswitch_eb
    return v4

    .line 1681
    :pswitch_ec
    const/16 p0, 0x65

    return p0

    .line 1680
    :pswitch_ef
    return v5

    .line 1679
    :pswitch_f0
    return v6

    .line 1674
    :pswitch_f1
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " TO "

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_100

    .line 1676
    return v0

    .line 1678
    :cond_100
    return v2

    .line 1672
    :pswitch_101
    return v7

    .line 1670
    :pswitch_102
    return v8

    .line 1669
    :pswitch_103
    return v9

    .line 1665
    :pswitch_104
    return v10

    .line 1691
    :cond_105
    return v0

    .line 1689
    :cond_106
    :goto_106
    const/16 p0, 0x66

    return p0

    nop

    :sswitch_data_10a
    .sparse-switch
        0xfd89 -> :sswitch_c7
        0xfdb4 -> :sswitch_bc
        0xfe81 -> :sswitch_b2
        0x10064 -> :sswitch_a8
        0x10561 -> :sswitch_9e
        0x105b6 -> :sswitch_93
        0x107eb -> :sswitch_89
        0x107f3 -> :sswitch_7e
        0x10981 -> :sswitch_73
        0x10cbb -> :sswitch_68
        0x11bce -> :sswitch_5d
        0x1367f -> :sswitch_51
        0x13c7d -> :sswitch_46
        0x13daf -> :sswitch_3b
        0x1403a -> :sswitch_30
        0x14909 -> :sswitch_25
        0x14fc2 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_104
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_101
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ec
        :pswitch_eb
        :pswitch_eb
        :pswitch_ea
        :pswitch_ea
        :pswitch_e7
    .end packed-switch
.end method

.method public static whitelist concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 610
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    return-object p1

    .line 613
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 614
    return-object p0

    .line 617
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") AND ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 1588
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1592
    const-string p1, ";\n"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1593
    array-length p3, p1

    :goto_d
    if-ge v1, p3, :cond_1e

    aget-object v0, p1, v1

    .line 1594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_1b

    .line 1595
    :cond_18
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1593
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1597
    :cond_1e
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1598
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1599
    return-void
.end method

.method public static whitelist cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 939
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 940
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 941
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1d

    .line 943
    :cond_16
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 945
    :goto_1d
    return-void
.end method

.method public static whitelist cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 1209
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1210
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1211
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1213
    :cond_18
    return-void
.end method

.method public static whitelist cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    .line 926
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method public static greylist-max-o cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V
    .registers 8

    .line 473
    if-ltz p1, :cond_7e

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    goto/16 :goto_7e

    .line 476
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 477
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 478
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 479
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 480
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 481
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 483
    :cond_21
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v2

    if-nez v2, :cond_28

    .line 484
    goto :goto_7a

    .line 486
    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_72

    .line 487
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    .line 489
    packed-switch v3, :pswitch_data_80

    .line 511
    :pswitch_32
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    if-eqz v3, :cond_64

    invoke-virtual {p2, v3, p1, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    goto :goto_68

    .line 503
    :pswitch_3d
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 504
    if-eqz v3, :cond_48

    invoke-virtual {p2, v3, p1, v2}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v3

    goto :goto_4c

    .line 505
    :cond_48
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    .line 506
    :goto_4c
    goto :goto_69

    .line 499
    :pswitch_4d
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {p2, v3, v4, p1, v2}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v3

    .line 500
    goto :goto_69

    .line 495
    :pswitch_56
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4, p1, v2}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v3

    .line 496
    goto :goto_69

    .line 491
    :pswitch_5f
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    .line 492
    goto :goto_69

    .line 513
    :cond_64
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    .line 514
    :goto_68
    nop

    .line 517
    :goto_69
    if-nez v3, :cond_6f

    .line 518
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 519
    goto :goto_7a

    .line 486
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 522
    :cond_72
    add-int/lit8 p1, p1, 0x1

    .line 523
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 525
    :cond_7a
    :goto_7a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 526
    return-void

    .line 474
    :cond_7e
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_56
        :pswitch_4d
        :pswitch_32
        :pswitch_3d
    .end packed-switch
.end method

.method public static whitelist cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 1193
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1194
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1195
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1197
    :cond_18
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    .line 865
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 878
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 879
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 880
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d

    .line 882
    :cond_16
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    :goto_1d
    return-void
.end method

.method public static whitelist cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 1177
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1178
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1179
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1181
    :cond_18
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    .line 895
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 908
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 909
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 910
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 911
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 912
    goto :goto_1d

    .line 913
    :cond_16
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    :goto_1d
    return-void
.end method

.method public static whitelist cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 1145
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1146
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1147
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1149
    :cond_18
    return-void
.end method

.method public static greylist cursorPickFillWindowStartPosition(II)I
    .registers 2

    .line 989
    div-int/lit8 p1, p1, 0x3

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static whitelist cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 7

    .line 954
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 955
    array-length v1, v0

    .line 956
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_25

    .line 957
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_19

    .line 958
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_22

    .line 960
    :cond_19
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 963
    :cond_25
    return-void
.end method

.method public static whitelist cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 1161
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1162
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1163
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 1165
    :cond_18
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    .line 828
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 4

    .line 854
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method public static whitelist cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .line 1129
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1130
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1131
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_14
    return-void
.end method

.method public static whitelist cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .registers 4

    .line 841
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 842
    return-void
.end method

.method public static blacklist deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 405
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 407
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 408
    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_32

    .line 409
    aget-object v2, p0, v1

    .line 411
    if-eqz v2, :cond_2d

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_2d

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_18

    goto :goto_2d

    .line 414
    :cond_18
    instance-of v3, v2, [B

    if-eqz v3, :cond_26

    .line 416
    check-cast v2, [B

    .line 417
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 418
    goto :goto_2f

    .line 420
    :cond_26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_2f

    .line 413
    :cond_2d
    :goto_2d
    aput-object v2, v0, v1

    .line 408
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 423
    :cond_32
    return-object v0
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;)V
    .registers 2

    .line 756
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 757
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 8

    .line 766
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 768
    array-length v1, v0

    .line 769
    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_55

    .line 772
    :try_start_28
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2c} :catch_2d

    .line 777
    goto :goto_30

    .line 773
    :catch_2d
    move-exception v3

    .line 776
    const-string v3, "<unprintable>"

    .line 778
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 780
    :cond_55
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 790
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    array-length v1, v0

    .line 793
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3b

    .line 796
    :try_start_15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_19} :catch_1a

    .line 801
    goto :goto_1d

    .line 797
    :catch_1a
    move-exception v3

    .line 800
    const-string v3, "<unprintable>"

    .line 802
    :goto_1d
    const-string v4, "   "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 793
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 804
    :cond_3b
    const-string/jumbo p0, "}\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    return-void
.end method

.method public static whitelist dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 816
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;)V
    .registers 2

    .line 692
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 693
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 4

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> Dumping cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 704
    if-eqz p0, :cond_2d

    .line 705
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 707
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 708
    :goto_20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 709
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_20

    .line 711
    :cond_2a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 713
    :cond_2d
    const-string p0, "<<<<<"

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 724
    const-string v0, ">>>>> Dumping cursor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    if-eqz p0, :cond_26

    .line 726
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 728
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 729
    :goto_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 730
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_19

    .line 732
    :cond_23
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 734
    :cond_26
    const-string p0, "<<<<<\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    return-void
.end method

.method public static whitelist dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o encodeHex([B)[C
    .registers 8

    .line 655
    array-length v0, p0

    .line 656
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 659
    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_26

    .line 660
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 661
    add-int/lit8 v3, v4, 0x1

    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 664
    :cond_26
    return-object v1
.end method

.method public static blacklist escapeForLike(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1776
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1777
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1778
    const/16 v3, 0x5c

    sparse-switch v2, :sswitch_data_2a

    goto :goto_1e

    .line 1781
    :sswitch_16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1779
    :sswitch_1a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1780
    nop

    .line 1784
    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1776
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1786
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x25 -> :sswitch_1a
        0x5f -> :sswitch_16
    .end sparse-switch
.end method

.method public static blacklist executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 233
    :try_start_4
    invoke-static {p0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide p1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 235
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 234
    :cond_10
    return-wide p1

    .line 232
    :catchall_11
    move-exception p1

    if-eqz p0, :cond_1c

    :try_start_14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw p1
.end method

.method public static blacklist executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 242
    :try_start_4
    invoke-static {p0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 244
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 243
    :cond_10
    return p1

    .line 241
    :catchall_11
    move-exception p1

    if-eqz p0, :cond_1c

    :try_start_14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw p1
.end method

.method public static greylist-max-o findRowIdColumnIndex([Ljava/lang/String;)I
    .registers 5

    .line 1760
    array-length v0, p0

    .line 1761
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    .line 1762
    aget-object v2, p0, v1

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1763
    return v1

    .line 1761
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1766
    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 626
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 628
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v1

    const-string v2, "ISO8859_1"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 629
    :catch_11
    move-exception p0

    .line 630
    const-string p0, ""

    return-object p0
.end method

.method private static greylist-max-o getCollationKeyInBytes(Ljava/lang/String;)[B
    .registers 3

    .line 677
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_10

    .line 678
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 679
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 681
    :cond_10
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    invoke-virtual {p0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 640
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 641
    invoke-static {p0}, Landroid/database/DatabaseUtils;->encodeHex([B)[C

    move-result-object v0

    .line 642
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private static greylist-max-o getKeyLen([B)I
    .registers 2

    .line 668
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_9

    .line 669
    array-length p0, p0

    return p0

    .line 672
    :cond_9
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static blacklist getSqlStatementPrefixExtendedNoRegex(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1642
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementPrefixOffset(Ljava/lang/String;)I

    move-result v0

    .line 1643
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 1645
    return-object v1

    .line 1647
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1648
    if-le v0, v2, :cond_f

    .line 1650
    return-object v1

    .line 1652
    :cond_f
    add-int/lit8 v1, v0, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1653
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSqlStatementPrefixOffset(Ljava/lang/String;)I
    .registers 8

    .line 1606
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 1607
    const/4 v1, -0x1

    if-gez v0, :cond_a

    return v1

    .line 1608
    :cond_a
    const/4 v2, 0x0

    .line 1609
    :goto_b
    if-ge v2, v0, :cond_59

    .line 1610
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1611
    const/16 v4, 0x20

    if-gt v3, v4, :cond_18

    .line 1616
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1617
    :cond_18
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_33

    .line 1618
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_25

    return v2

    .line 1619
    :cond_25
    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1620
    if-gez v2, :cond_30

    return v1

    .line 1621
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1622
    :cond_33
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_58

    .line 1623
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_42

    return v2

    .line 1624
    :cond_42
    nop

    .line 1626
    :cond_43
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1627
    if-gez v2, :cond_4c

    return v1

    .line 1628
    :cond_4c
    add-int/lit8 v3, v2, 0x1

    .line 1629
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_43

    .line 1630
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 1634
    :goto_57
    goto :goto_b

    .line 1632
    :cond_58
    return v2

    .line 1635
    :cond_59
    return v1
.end method

.method public static blacklist getSqlStatementType(I)I
    .registers 2

    .line 1711
    const/16 v0, 0x63

    packed-switch p0, :pswitch_data_c

    .line 1716
    return p0

    .line 1714
    :pswitch_6
    return v0

    .line 1712
    :pswitch_7
    const/16 p0, 0x8

    return p0

    .line 1713
    :pswitch_a
    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_a
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getSqlStatementType(Ljava/lang/String;)I
    .registers 1

    .line 1738
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementTypeExtended(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementType(I)I

    move-result p0

    return p0
.end method

.method public static blacklist getSqlStatementTypeExtended(Ljava/lang/String;)I
    .registers 2

    .line 1702
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementPrefixExtendedNoRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->categorizeStatement(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static greylist-max-p getTypeOfObject(Ljava/lang/Object;)I
    .registers 2

    .line 445
    if-nez p0, :cond_4

    .line 446
    const/4 p0, 0x0

    return p0

    .line 447
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 448
    const/4 p0, 0x4

    return p0

    .line 449
    :cond_a
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_28

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_13

    goto :goto_28

    .line 451
    :cond_13
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_26

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_24

    goto :goto_26

    .line 455
    :cond_24
    const/4 p0, 0x3

    return p0

    .line 453
    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0

    .line 450
    :cond_28
    :goto_28
    const/4 p0, 0x2

    return p0
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 3

    .line 1052
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 1054
    :try_start_4
    invoke-static {p0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1056
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1054
    return-wide p1

    .line 1056
    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1057
    throw p1
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .registers 2

    .line 1065
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist-max-o queryIsEmpty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 4

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select exists(select 1 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    .line 1044
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 3

    .line 999
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    .line 1012
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 1030
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1c

    :cond_1a
    const-string p2, ""

    .line 1031
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select count(*) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final whitelist readExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 174
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 175
    if-nez v0, :cond_7

    return-void

    .line 176
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method private static final greylist-max-o readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .registers 3

    .line 205
    packed-switch p2, :pswitch_data_3e

    .line 225
    :pswitch_3
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 227
    return-void

    .line 223
    :pswitch_7
    new-instance p0, Landroid/os/OperationCanceledException;

    invoke-direct {p0, p1}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :pswitch_d
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :pswitch_13
    new-instance p0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :pswitch_19
    new-instance p0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :pswitch_1f
    new-instance p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :pswitch_25
    new-instance p0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :pswitch_2b
    new-instance p0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :pswitch_31
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :pswitch_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public static whitelist readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 183
    if-nez v0, :cond_7

    return-void

    .line 184
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 185
    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    .line 188
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 190
    return-void

    .line 186
    :cond_12
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 195
    if-nez v0, :cond_7

    return-void

    .line 196
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    const/16 v2, 0xa

    if-eq v0, v2, :cond_13

    .line 200
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 202
    return-void

    .line 198
    :cond_13
    new-instance p0, Landroid/content/OperationApplicationException;

    invoke-direct {p0, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1074
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 1076
    :try_start_4
    invoke-static {p0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1078
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1076
    return-object p1

    .line 1078
    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1079
    throw p1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1087
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .registers 7

    .line 125
    nop

    .line 126
    nop

    .line 127
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    const-string v1, "Writing exception to parcel"

    const-string v2, "DatabaseUtils"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_f

    .line 128
    nop

    .line 129
    goto/16 :goto_62

    .line 130
    :cond_f
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_18

    .line 131
    const/4 v0, 0x2

    move v3, v4

    move v4, v0

    goto/16 :goto_62

    .line 132
    :cond_18
    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_20

    .line 133
    const/4 v0, 0x3

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 134
    :cond_20
    instance-of v0, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v0, :cond_28

    .line 135
    const/4 v0, 0x4

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 136
    :cond_28
    instance-of v0, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v0, :cond_30

    .line 137
    const/4 v0, 0x5

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 138
    :cond_30
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_38

    .line 139
    const/4 v0, 0x6

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 140
    :cond_38
    instance-of v0, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_40

    .line 141
    const/4 v0, 0x7

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 142
    :cond_40
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v0, :cond_49

    .line 143
    const/16 v0, 0x8

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 144
    :cond_49
    instance-of v0, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v0, :cond_52

    .line 145
    const/16 v0, 0x9

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 146
    :cond_52
    instance-of v0, p1, Landroid/content/OperationApplicationException;

    if-eqz v0, :cond_5b

    .line 147
    const/16 v0, 0xa

    move v3, v4

    move v4, v0

    goto :goto_62

    .line 148
    :cond_5b
    instance-of v0, p1, Landroid/os/OperationCanceledException;

    if-eqz v0, :cond_72

    .line 149
    nop

    .line 150
    const/16 v4, 0xb

    .line 156
    :goto_62
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    if-eqz v3, :cond_71

    .line 160
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :cond_71
    return-void

    .line 152
    :cond_72
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 153
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-void
.end method
