.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# static fields
.field public static final ALLOWED_REASONS:[I

.field public static final BLOCKED_REASONS:[I


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    .line 6894
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    const/16 v0, 0xb

    .line 6906
    new-array v0, v0, [I

    fill-array-data v0, :array_2a

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
        0x40
        0x10000
        0x20000
        0x40000
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x2
        0x20
        0x4
        0x8
        0x10
        0x40
        0x80
        0x10000
        0x20000
        0x40000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 6798
    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 6791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6792
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6793
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 6794
    iput p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    return-void
.end method

.method public static allowedReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_67

    const/4 v0, 0x1

    if-eq p0, v0, :cond_64

    const/4 v0, 0x2

    if-eq p0, v0, :cond_61

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5b

    const/16 v0, 0x10

    if-eq p0, v0, :cond_58

    const/16 v0, 0x20

    if-eq p0, v0, :cond_55

    const/16 v0, 0x40

    if-eq p0, v0, :cond_52

    const/16 v0, 0x80

    if-eq p0, v0, :cond_4f

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_4c

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_49

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_46

    .line 6975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown allowedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6976
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6973
    :cond_46
    const-string p0, "METERED_FOREGROUND"

    return-object p0

    .line 6971
    :cond_49
    const-string p0, "METERED_SYSTEM"

    return-object p0

    .line 6969
    :cond_4c
    const-string p0, "METERED_USER_EXEMPTED"

    return-object p0

    .line 6967
    :cond_4f
    const-string p0, "NOT_IN_BACKGROUND"

    return-object p0

    .line 6965
    :cond_52
    const-string p0, "LOW_POWER_STANDBY_ALLOWLIST"

    return-object p0

    .line 6957
    :cond_55
    const-string p0, "TOP"

    return-object p0

    .line 6963
    :cond_58
    const-string p0, "RESTRICTED_MODE_PERMISSIONS"

    return-object p0

    .line 6961
    :cond_5b
    const-string p0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    return-object p0

    .line 6959
    :cond_5e
    const-string p0, "POWER_SAVE_ALLOWLIST"

    return-object p0

    .line 6955
    :cond_61
    const-string p0, "FOREGROUND"

    return-object p0

    .line 6953
    :cond_64
    const-string p0, "SYSTEM"

    return-object p0

    .line 6951
    :cond_67
    const-string p0, "NONE"

    return-object p0
.end method

.method public static allowedReasonsToString(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 7002
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7004
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7005
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    array-length v3, v2

    :goto_10
    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge v0, v3, :cond_33

    aget v6, v2, v0

    and-int v7, p0, v6

    if-eqz v7, :cond_30

    .line 7007
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_24

    move-object v4, v5

    :cond_24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7008
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v4, v6

    and-int/2addr p0, v4

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_33
    if-eqz p0, :cond_5c

    .line 7013
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3c

    move-object v4, v5

    :cond_3c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7014
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown allowedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7017
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockedReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_59

    const/4 v0, 0x1

    if-eq p0, v0, :cond_56

    const/4 v0, 0x2

    if-eq p0, v0, :cond_53

    const/4 v0, 0x4

    if-eq p0, v0, :cond_50

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x40

    if-eq p0, v0, :cond_47

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_44

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_41

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_3e

    .line 6943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown blockedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6944
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6941
    :cond_3e
    const-string p0, "METERED_ADMIN_DISABLED"

    return-object p0

    .line 6939
    :cond_41
    const-string p0, "METERED_USER_RESTRICTED"

    return-object p0

    .line 6937
    :cond_44
    const-string p0, "DATA_SAVER"

    return-object p0

    .line 6935
    :cond_47
    const-string p0, "APP_BACKGROUND"

    return-object p0

    .line 6933
    :cond_4a
    const-string p0, "LOW_POWER_STANDBY"

    return-object p0

    .line 6931
    :cond_4d
    const-string p0, "RESTRICTED_MODE"

    return-object p0

    .line 6929
    :cond_50
    const-string p0, "APP_STANDBY"

    return-object p0

    .line 6927
    :cond_53
    const-string p0, "DOZE"

    return-object p0

    .line 6925
    :cond_56
    const-string p0, "BATTERY_SAVER"

    return-object p0

    .line 6923
    :cond_59
    const-string p0, "NONE"

    return-object p0
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 6982
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6984
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6985
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    array-length v3, v2

    :goto_10
    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge v0, v3, :cond_33

    aget v6, v2, v0

    and-int v7, p0, v6

    if-eqz v7, :cond_30

    .line 6987
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_24

    move-object v4, v5

    :cond_24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6988
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v4, v6

    and-int/2addr p0, v4

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_33
    if-eqz p0, :cond_5c

    .line 6993
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3c

    move-object v4, v5

    :cond_3c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6994
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown blockedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllowedReasonsForProcState(I)I
    .registers 2

    .line 0
    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    const p0, 0x400a2

    return p0

    :cond_7
    const/4 v0, 0x5

    if-gt p0, v0, :cond_e

    const p0, 0x40082

    return p0

    :cond_e
    const/16 v0, 0xc

    if-ge p0, v0, :cond_15

    const/16 p0, 0x80

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static getEffectiveBlockedReasons(II)I
    .registers 3

    .line 0
    if-nez p0, :cond_3

    return p0

    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    :cond_a
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const v0, 0xffff

    and-int/2addr p0, v0

    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_19

    and-int/lit8 p0, p0, -0x8

    :cond_19
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_22

    const v0, -0x30001

    and-int/2addr p0, v0

    :cond_22
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_28

    and-int/lit8 p0, p0, -0x21

    :cond_28
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2e

    and-int/lit8 p0, p0, -0x48

    :cond_2e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_34

    and-int/lit8 p0, p0, -0x46

    :cond_34
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3a

    and-int/lit8 p0, p0, -0x9

    :cond_3a
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_43

    const v0, -0x10001

    and-int/2addr p0, v0

    :cond_43
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_49

    and-int/lit8 p0, p0, -0x21

    :cond_49
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4f

    and-int/lit8 p0, p0, -0x41

    :cond_4f
    return p0
.end method

.method public static toString(III)Ljava/lang/String;
    .registers 5

    .line 6885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6886
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6887
    const-string v1, "blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6888
    const-string v1, "allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6889
    const-string p0, "effective="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6890
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6891
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V
    .registers 3

    .line 7021
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 7022
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 7023
    iget p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    return-void
.end method

.method public deriveUidRules()I
    .registers 5

    .line 7028
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    and-int/lit8 v2, v0, 0x67

    if-eqz v2, :cond_11

    or-int/lit8 v1, v1, 0x40

    goto :goto_19

    .line 7039
    :cond_11
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v2, v2, 0x67

    if-eqz v2, :cond_19

    or-int/lit8 v1, v1, 0x20

    :cond_19
    :goto_19
    const/high16 v2, 0x60000

    and-int/2addr v0, v2

    if-eqz v0, :cond_21

    or-int/lit8 v1, v1, 0x4

    goto :goto_43

    .line 7049
    :cond_21
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    const/high16 v3, 0x40000

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_32

    :goto_2f
    or-int/lit8 v1, v1, 0x2

    goto :goto_43

    :cond_32
    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_43

    .line 7053
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_3f

    or-int/lit8 v1, v1, 0x20

    goto :goto_43

    :cond_3f
    and-int/2addr v0, v3

    if-eqz v0, :cond_43

    goto :goto_2f

    .line 7059
    :cond_43
    :goto_43
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 7060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidBlockedState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> uidRule="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7061
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7060
    const-string v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6880
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateEffectiveBlockedReasons()V
    .registers 4

    .line 6802
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    if-nez v0, :cond_12

    .line 6803
    const-string/jumbo v0, "updateEffectiveBlockedReasons(): no blocked reasons"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6805
    :cond_12
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6806
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectiveBlockedReasons(): blockedReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6808
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectiveReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6809
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6807
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method
