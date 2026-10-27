.class public Landroid/telephony/ims/stub/ImsUtImplBase;
.super Ljava/lang/Object;
.source "ImsUtImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsUtImplBase$CallBarringMode;
    }
.end annotation


# static fields
.field public static final blacklist CALL_BARRING_ALL:I = 0x7

.field public static final blacklist CALL_BARRING_ALL_INCOMING:I = 0x1

.field public static final blacklist CALL_BARRING_ALL_OUTGOING:I = 0x2

.field public static final blacklist CALL_BARRING_ANONYMOUS_INCOMING:I = 0x6

.field public static final blacklist CALL_BARRING_INCOMING_ALL_SERVICES:I = 0x9

.field public static final blacklist CALL_BARRING_OUTGOING_ALL_SERVICES:I = 0x8

.field public static final blacklist CALL_BARRING_OUTGOING_INTL:I = 0x3

.field public static final blacklist CALL_BARRING_OUTGOING_INTL_EXCL_HOME:I = 0x4

.field public static final blacklist CALL_BARRING_SPECIFIC_INCOMING_CALLS:I = 0xa

.field public static final blacklist CALL_BLOCKING_INCOMING_WHEN_ROAMING:I = 0x5

.field public static final blacklist INVALID_RESULT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImsUtImplBase"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 132
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-void
.end method


# virtual methods
.method public whitelist close()V
    .registers 1

    .line 320
    return-void
.end method

.method public greylist-max-o getInterface()Lcom/android/ims/internal/IImsUt;
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-object v0
.end method

.method public whitelist queryCFForServiceClass(ILjava/lang/String;I)I
    .registers 5
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 350
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o queryCLIP()I
    .registers 2

    .line 373
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClip()I

    move-result v0

    return v0
.end method

.method public greylist-max-o queryCLIR()I
    .registers 2

    .line 365
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClir()I

    move-result v0

    return v0
.end method

.method public greylist-max-o queryCOLP()I
    .registers 2

    .line 389
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColp()I

    move-result v0

    return v0
.end method

.method public greylist-max-o queryCOLR()I
    .registers 2

    .line 381
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColr()I

    move-result v0

    return v0
.end method

.method public whitelist queryCallBarring(I)I
    .registers 3
    .param p1, "cbType"    # I

    .line 327
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryCallBarringForServiceClass(II)I
    .registers 4
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 334
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryCallForward(ILjava/lang/String;)I
    .registers 4
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 341
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryCallWaiting()I
    .registers 2

    .line 357
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryClip()I
    .registers 2

    .line 403
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryClir()I
    .registers 2

    .line 396
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryColp()I
    .registers 2

    .line 417
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist queryColr()I
    .registers 2

    .line 410
    const/4 v0, -0x1

    return v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 546
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 547
    return-void
.end method

.method public whitelist setListener(Landroid/telephony/ims/ImsUtListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 530
    return-void
.end method

.method public whitelist transact(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 424
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o updateCLIP(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 479
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClip(Z)I

    move-result v0

    return v0
.end method

.method public greylist-max-o updateCLIR(I)I
    .registers 3
    .param p1, "clirMode"    # I

    .line 471
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClir(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o updateCOLP(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 495
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColp(Z)I

    move-result v0

    return v0
.end method

.method public greylist-max-o updateCOLR(I)I
    .registers 3
    .param p1, "presentation"    # I

    .line 487
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColr(I)I

    move-result v0

    return v0
.end method

.method public whitelist updateCallBarring(II[Ljava/lang/String;)I
    .registers 5
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 431
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .registers 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 439
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 448
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateCallForward(IILjava/lang/String;II)I
    .registers 7
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateCallWaiting(ZI)I
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 463
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateClip(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 509
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateClir(I)I
    .registers 3
    .param p1, "clirMode"    # I

    .line 502
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateColp(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 523
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateColr(I)I
    .registers 3
    .param p1, "presentation"    # I

    .line 516
    const/4 v0, -0x1

    return v0
.end method
