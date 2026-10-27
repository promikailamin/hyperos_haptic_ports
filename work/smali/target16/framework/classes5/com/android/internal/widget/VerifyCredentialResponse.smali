.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$Builder;,
        Lcom/android/internal/widget/VerifyCredentialResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_TIMEOUT:Ljava/time/Duration;

.field public static final greylist-max-o OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final blacklist OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field private static final blacklist RESPONSE_CRED_ALREADY_TRIED:I = 0x3

.field private static final blacklist RESPONSE_CRED_INCORRECT:I = 0x4

.field private static final blacklist RESPONSE_CRED_TOO_SHORT:I = 0x2

.field private static final greylist-max-o RESPONSE_OK:I = 0x0

.field private static final blacklist RESPONSE_OTHER_ERROR:I = -0x1

.field private static final greylist-max-o RESPONSE_RETRY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private final blacklist mGatekeeperHAT:[B

.field private final blacklist mGatekeeperPasswordHandle:J

.field private final greylist-max-o mResponseCode:I

.field private final greylist-max-o mTimeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->MAX_TIMEOUT:Ljava/time/Duration;

    .line 86
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 88
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 96
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II[BJ)V
    .registers 6

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 233
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 234
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    .line 235
    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    .line 236
    return-void
.end method

.method synthetic constructor blacklist <init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-void
.end method

.method public static blacklist credAlreadyTried()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 1

    .line 205
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist credIncorrect()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 1

    .line 210
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist credIncorrect(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 172
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 174
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->timeoutToClampedMillis(Ljava/time/Duration;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    .line 172
    return-object v0
.end method

.method public static blacklist credTooShort()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 1

    .line 200
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromError()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 1

    .line 195
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fromError(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    .line 218
    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 223
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v1
.end method

.method public static greylist-max-o fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3

    .line 335
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    .line 336
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 337
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 338
    :cond_10
    if-nez v0, :cond_33

    .line 339
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p0

    .line 340
    if-nez p0, :cond_25

    .line 342
    const-string p0, "VerifyCredentialResponse"

    const-string/jumbo v0, "verifyChallenge response had no associated payload"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 345
    :cond_25
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 348
    :cond_33
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 150
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method

.method public static blacklist fromTimeout(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 1

    .line 162
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->timeoutToClampedMillis(Ljava/time/Duration;)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist timeoutToClampedMillis(Ljava/time/Duration;)I
    .registers 3

    .line 187
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->MAX_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {p0, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_15

    .line 190
    :cond_f
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    .line 188
    :cond_15
    :goto_15
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public blacklist containsGatekeeperPasswordHandle()Z
    .registers 5

    .line 261
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGatekeeperHAT()[B
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    return-object v0
.end method

.method public blacklist getGatekeeperPasswordHandle()J
    .registers 3

    .line 257
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-wide v0
.end method

.method public greylist-max-o getTimeout()I
    .registers 2

    .line 265
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public blacklist getTimeoutAsDuration()Ljava/time/Duration;
    .registers 3

    .line 269
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasTimeout()Z
    .registers 4

    .line 282
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->softwareRatelimiter()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 285
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 287
    :cond_e
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method public blacklist isCredAlreadyTried()Z
    .registers 3

    .line 303
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isCredCertainlyIncorrect()Z
    .registers 3

    .line 313
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public blacklist isCredTooShort()Z
    .registers 3

    .line 295
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isMatched()Z
    .registers 2

    .line 274
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isOtherError()Z
    .registers 3

    .line 323
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK HAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK PW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 240
    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 243
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    return-void
.end method
