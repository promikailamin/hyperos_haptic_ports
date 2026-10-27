.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidBlockedState"
.end annotation


# static fields
.field private static final ALLOWED_REASONS:[I

.field private static final BLOCKED_REASONS:[I


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6400
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    .line 6411
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x20
        0x10000
        0x20000
        0x40000
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x2
        0x20
        0x4
        0x8
        0x10
        0x40
        0x10000
        0x20000
        0x40000
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .line 6311
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>(III)V

    .line 6312
    return-void
.end method

.method private constructor <init>(III)V
    .registers 4
    .param p1, "blockedReasons"    # I
    .param p2, "allowedReasons"    # I
    .param p3, "effectiveBlockedReasons"    # I

    .line 6304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6305
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6306
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 6307
    iput p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6308
    return-void
.end method

.method private static allowedReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "allowedReason"    # I

    .line 6451
    sparse-switch p0, :sswitch_data_42

    .line 6475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown allowedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6473
    :sswitch_20
    const-string v0, "METERED_FOREGROUND"

    return-object v0

    .line 6471
    :sswitch_23
    const-string v0, "METERED_SYSTEM"

    return-object v0

    .line 6469
    :sswitch_26
    const-string v0, "METERED_USER_EXEMPTED"

    return-object v0

    .line 6467
    :sswitch_29
    const-string v0, "LOW_POWER_STANDBY_ALLOWLIST"

    return-object v0

    .line 6459
    :sswitch_2c
    const-string v0, "TOP"

    return-object v0

    .line 6465
    :sswitch_2f
    const-string v0, "RESTRICTED_MODE_PERMISSIONS"

    return-object v0

    .line 6463
    :sswitch_32
    const-string v0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    return-object v0

    .line 6461
    :sswitch_35
    const-string v0, "POWER_SAVE_ALLOWLIST"

    return-object v0

    .line 6457
    :sswitch_38
    const-string v0, "FOREGROUND"

    return-object v0

    .line 6455
    :sswitch_3b
    const-string v0, "SYSTEM"

    return-object v0

    .line 6453
    :sswitch_3e
    const-string v0, "NONE"

    return-object v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_3e
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_38
        0x4 -> :sswitch_35
        0x8 -> :sswitch_32
        0x10 -> :sswitch_2f
        0x20 -> :sswitch_2c
        0x40 -> :sswitch_29
        0x10000 -> :sswitch_26
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_20
    .end sparse-switch
.end method

.method public static allowedReasonsToString(I)Ljava/lang/String;
    .registers 9
    .param p0, "allowedReasons"    # I

    .line 6501
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 6502
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6504
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6505
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    array-length v3, v2

    :goto_10
    const-string v4, ""

    const-string/jumbo v5, "|"

    if-ge v0, v3, :cond_34

    aget v6, v2, v0

    .line 6506
    .local v6, "reason":I
    and-int v7, p0, v6

    if-eqz v7, :cond_31

    .line 6507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_24

    goto :goto_25

    :cond_24
    move-object v4, v5

    :goto_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6508
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6509
    not-int v4, v6

    and-int/2addr p0, v4

    .line 6505
    .end local v6    # "reason":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 6512
    :cond_34
    if-eqz p0, :cond_60

    .line 6513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v4, v5

    :goto_3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6514
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown allowedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6517
    :cond_60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blockedReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "blockedReason"    # I

    .line 6425
    sparse-switch p0, :sswitch_data_3c

    .line 6445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown blockedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6446
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6443
    :sswitch_20
    const-string v0, "METERED_ADMIN_DISABLED"

    return-object v0

    .line 6441
    :sswitch_23
    const-string v0, "METERED_USER_RESTRICTED"

    return-object v0

    .line 6439
    :sswitch_26
    const-string v0, "DATA_SAVER"

    return-object v0

    .line 6437
    :sswitch_29
    const-string v0, "LOW_POWER_STANDBY"

    return-object v0

    .line 6435
    :sswitch_2c
    const-string v0, "RESTRICTED_MODE"

    return-object v0

    .line 6433
    :sswitch_2f
    const-string v0, "APP_STANDBY"

    return-object v0

    .line 6431
    :sswitch_32
    const-string v0, "DOZE"

    return-object v0

    .line 6429
    :sswitch_35
    const-string v0, "BATTERY_SAVER"

    return-object v0

    .line 6427
    :sswitch_38
    const-string v0, "NONE"

    return-object v0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_38
        0x1 -> :sswitch_35
        0x2 -> :sswitch_32
        0x4 -> :sswitch_2f
        0x8 -> :sswitch_2c
        0x20 -> :sswitch_29
        0x10000 -> :sswitch_26
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_20
    .end sparse-switch
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .registers 9
    .param p0, "blockedReasons"    # I

    .line 6481
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 6482
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6484
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6485
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    array-length v3, v2

    :goto_10
    const-string v4, ""

    const-string/jumbo v5, "|"

    if-ge v0, v3, :cond_34

    aget v6, v2, v0

    .line 6486
    .local v6, "reason":I
    and-int v7, p0, v6

    if-eqz v7, :cond_31

    .line 6487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_24

    goto :goto_25

    :cond_24
    move-object v4, v5

    :goto_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6488
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6489
    not-int v4, v6

    and-int/2addr p0, v4

    .line 6485
    .end local v6    # "reason":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 6492
    :cond_34
    if-eqz p0, :cond_60

    .line 6493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v4, v5

    :goto_3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6494
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown blockedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6497
    :cond_60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAllowedReasonsForProcState(I)I
    .registers 2
    .param p0, "procState"    # I

    .line 6374
    const/4 v0, 0x5

    if-le p0, v0, :cond_5

    .line 6375
    const/4 v0, 0x0

    return v0

    .line 6376
    :cond_5
    const/4 v0, 0x3

    if-gt p0, v0, :cond_c

    .line 6377
    const v0, 0x40022

    return v0

    .line 6380
    :cond_c
    const v0, 0x40002

    return v0
.end method

.method static getEffectiveBlockedReasons(II)I
    .registers 5
    .param p0, "blockedReasons"    # I
    .param p1, "allowedReasons"    # I

    .line 6328
    move v0, p0

    .line 6330
    .local v0, "effectiveBlockedReasons":I
    if-nez p0, :cond_4

    .line 6331
    return v0

    .line 6333
    :cond_4
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_b

    .line 6334
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 6336
    :cond_b
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_14

    .line 6337
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 6339
    :cond_14
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1e

    .line 6340
    and-int/lit8 v0, v0, -0x2

    .line 6341
    and-int/lit8 v0, v0, -0x3

    .line 6342
    and-int/lit8 v0, v0, -0x5

    .line 6344
    :cond_1e
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    const v2, -0x10001

    if-eqz v1, :cond_2b

    .line 6345
    and-int/2addr v0, v2

    .line 6346
    const v1, -0x20001

    and-int/2addr v0, v1

    .line 6348
    :cond_2b
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_31

    .line 6349
    and-int/lit8 v0, v0, -0x21

    .line 6351
    :cond_31
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3b

    .line 6352
    and-int/lit8 v0, v0, -0x2

    .line 6353
    and-int/lit8 v0, v0, -0x3

    .line 6354
    and-int/lit8 v0, v0, -0x5

    .line 6356
    :cond_3b
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_43

    .line 6357
    and-int/lit8 v0, v0, -0x2

    .line 6358
    and-int/lit8 v0, v0, -0x5

    .line 6360
    :cond_43
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_49

    .line 6361
    and-int/lit8 v0, v0, -0x9

    .line 6363
    :cond_49
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4f

    .line 6364
    and-int/2addr v0, v2

    .line 6366
    :cond_4f
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_55

    .line 6367
    and-int/lit8 v0, v0, -0x21

    .line 6370
    :cond_55
    return v0
.end method

.method public static toString(III)Ljava/lang/String;
    .registers 7
    .param p0, "blockedReasons"    # I
    .param p1, "allowedReasons"    # I
    .param p2, "effectiveBlockedReasons"    # I

    .line 6391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6392
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6393
    const-string v1, "blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6394
    const-string v1, "allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6395
    const-string v1, "effective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6396
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V
    .registers 3
    .param p1, "uidBlockedState"    # Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 6521
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6522
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 6523
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6524
    return-void
.end method

.method public deriveUidRules()I
    .registers 7

    .line 6527
    const/4 v0, 0x0

    .line 6528
    .local v0, "uidRule":I
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_9

    .line 6529
    or-int/lit16 v0, v0, 0x400

    .line 6532
    :cond_9
    const/16 v2, 0x27

    .line 6536
    .local v2, "powerBlockedReasons":I
    and-int v3, v1, v2

    if-eqz v3, :cond_12

    .line 6537
    or-int/lit8 v0, v0, 0x40

    goto :goto_19

    .line 6538
    :cond_12
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_19

    .line 6539
    or-int/lit8 v0, v0, 0x20

    .line 6544
    :cond_19
    :goto_19
    const/high16 v3, 0x60000

    .line 6546
    .local v3, "meteredBlockedReasons":I
    and-int/2addr v1, v3

    if-eqz v1, :cond_21

    .line 6547
    or-int/lit8 v0, v0, 0x4

    goto :goto_44

    .line 6548
    :cond_21
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    const/high16 v5, 0x40000

    if-eqz v4, :cond_32

    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_32

    .line 6550
    or-int/lit8 v0, v0, 0x2

    goto :goto_44

    .line 6551
    :cond_32
    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-eqz v1, :cond_44

    .line 6552
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_3f

    .line 6553
    or-int/lit8 v0, v0, 0x20

    goto :goto_44

    .line 6554
    :cond_3f
    and-int/2addr v1, v5

    if-eqz v1, :cond_44

    .line 6555
    or-int/lit8 v0, v0, 0x2

    .line 6558
    :cond_44
    :goto_44
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 6559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uidBlockedState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> uidRule="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6560
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6559
    const-string v4, "NetworkPolicy"

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6562
    :cond_71
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 6386
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateEffectiveBlockedReasons()V
    .registers 4

    .line 6315
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    if-nez v0, :cond_12

    .line 6316
    const-string/jumbo v0, "updateEffectiveBlockedReasons(): no blocked reasons"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6318
    :cond_12
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6319
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectiveBlockedReasons(): blockedReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6321
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", effectiveReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6322
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6320
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    :cond_4f
    return-void
.end method
