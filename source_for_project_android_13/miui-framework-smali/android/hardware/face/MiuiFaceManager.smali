.class public Landroid/hardware/face/MiuiFaceManager;
.super Landroid/hardware/face/BaseMiuiFaceManager;
.source "MiuiFaceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/MiuiFaceManager$ClientHandler;,
        Landroid/hardware/face/MiuiFaceManager$FaceObserver;,
        Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;,
        Landroid/hardware/face/MiuiFaceManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field private static final blacklist FACEUNLOCK_SUPPORT_SUPERPOWER:Ljava/lang/String; = "faceunlock_support_superpower"

.field private static final blacklist FACE_UNLOCK_HAS_FEATURE:Ljava/lang/String; = "face_unlock_has_feature"

.field private static final blacklist FACE_UNLOCK_HAS_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_has_feature"

.field private static final blacklist FACE_UNLOCK_VALID_FEATURE:Ljava/lang/String; = "face_unlock_valid_feature"

.field private static final blacklist FACE_UNLOCK_VALID_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_valid_feature"

.field private static final blacklist POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field private static final blacklist POWERMODE_SUPERSAVE_OPEN_URI:Ljava/lang/String; = "content://settings/secure/power_supersave_mode_open"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miui.face.FaceService"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field private blacklist mBinderLock:Ljava/lang/Object;

.field private blacklist mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private blacklist mFaceCount:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasInit:Z

.field private blacklist mIsSuperPower:Z

.field private blacklist mIsValid:Z

.field private blacklist mLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field blacklist mMiuiFaceBinderProxy:Landroid/os/MiuiBinderProxy;

.field private blacklist mMiuiFaceService:Landroid/os/IBinder;

.field private blacklist mMiuiFaceServiceReceiver:Landroid/os/IBinder;

.field private blacklist mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private blacklist mRemovalMiuiface:Landroid/hardware/face/Face;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/face/MiuiFaceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFaceCount(Landroid/hardware/face/MiuiFaceManager;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasInit(Landroid/hardware/face/MiuiFaceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/face/MiuiFaceManager;->mHasInit:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSuperPower(Landroid/hardware/face/MiuiFaceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/face/MiuiFaceManager;->mIsSuperPower:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsValid(Landroid/hardware/face/MiuiFaceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/face/MiuiFaceManager;->mIsValid:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/face/MiuiFaceManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->cancelAuthentication()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/face/MiuiFaceManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->cancelEnrollment()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Landroid/hardware/face/MiuiFaceManager;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/MiuiFaceManager;->sendAcquiredResult(JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/MiuiFaceManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/MiuiFaceManager;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnrollResult(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/MiuiFaceManager;->sendEnrollResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Landroid/hardware/face/MiuiFaceManager;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/MiuiFaceManager;->sendErrorResult(JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendLockoutReset(Landroid/hardware/face/MiuiFaceManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/MiuiFaceManager;->sendLockoutReset(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendRemovedResult(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/MiuiFaceManager;->sendRemovedResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .registers 7
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/face/IFaceService;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/face/BaseMiuiFaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mBinderLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    .line 92
    new-instance v0, Landroid/hardware/face/MiuiFaceManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/face/MiuiFaceManager$1;-><init>(Landroid/hardware/face/MiuiFaceManager;)V

    iput-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    .line 70
    new-instance v0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/face/MiuiFaceManager$ClientHandler;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/content/Context;Landroid/hardware/face/MiuiFaceManager$ClientHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    .line 71
    iget-boolean v0, p0, Landroid/hardware/face/BaseMiuiFaceManager;->isSupportTee:Z

    if-nez v0, :cond_87

    .line 72
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string v3, "faceunlock_support_superpower"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 74
    new-instance v0, Landroid/hardware/face/MiuiFaceManager$FaceObserver;

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/hardware/face/MiuiFaceManager$FaceObserver;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Handler;)V

    .line 75
    .local v0, "faceObserver":Landroid/hardware/face/MiuiFaceManager$FaceObserver;
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    const-string v2, "face_unlock_has_feature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    const-string v1, "content://settings/secure/face_unlock_has_feature"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    .line 80
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 81
    const-string v2, "face_unlock_valid_feature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    const-string v1, "content://settings/secure/face_unlock_valid_feature"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    .line 85
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const-string v2, "power_supersave_mode_open"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    const-string v1, "content://settings/secure/power_supersave_mode_open"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    .line 90
    .end local v0    # "faceObserver":Landroid/hardware/face/MiuiFaceManager$FaceObserver;
    :cond_87
    return-void
.end method

.method private blacklist binderCallAddLoackoutResetCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 643
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    return-void
.end method

.method private blacklist binderCallAuthenticate(Landroid/os/IBinder;Landroid/os/IBinder;JILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 13
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "receiver"    # Landroid/os/IBinder;
    .param p7, "flags"    # I
    .param p8, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 525
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 526
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 528
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 529
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    if-nez p6, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v2, p6

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 531
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Landroid/hardware/face/MiuiFaceManager;->getAuthTimeoutLimit()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 537
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    return v2
.end method

.method private blacklist binderCallCancelAuthention(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 545
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 546
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 547
    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 548
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    return-void
.end method

.method private blacklist binderCallEnroll(Landroid/os/IBinder;Landroid/os/IBinder;[BILandroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .registers 16
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cryptoToken"    # [B
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/os/IBinder;
    .param p6, "flags"    # I
    .param p7, "packName"    # Ljava/lang/String;
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "detectArea"    # Landroid/graphics/RectF;
    .param p10, "enrollArea"    # Landroid/graphics/RectF;
    .param p11, "enrollStep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 559
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 562
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 563
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    if-nez p5, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v2, p5

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 565
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p8, :cond_34

    .line 568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    invoke-virtual {p8, v0, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    .line 571
    :cond_34
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    :goto_37
    if-eqz p9, :cond_40

    .line 574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-virtual {p9, v0, v3}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_43

    .line 577
    :cond_40
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    :goto_43
    if-eqz p10, :cond_4c

    .line 580
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {p10, v0, v3}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 583
    :cond_4c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    :goto_4f
    invoke-virtual {v0, p11}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-virtual {p0}, Landroid/hardware/face/MiuiFaceManager;->getEnrollTimeoutLimits()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    return-void
.end method

.method private blacklist binderCallExtCmd(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 11
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/os/IBinder;
    .param p4, "cmd"    # I
    .param p5, "param"    # I
    .param p6, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 652
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 653
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 655
    if-nez p3, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, p3

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 656
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 659
    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 662
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    return v2
.end method

.method private blacklist binderCallGetEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 626
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 627
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 632
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 633
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    return-object v2
.end method

.method private blacklist binderCallPpreInitAuthen(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "packName"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 511
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 512
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 514
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 516
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    return-void
.end method

.method private blacklist binderCallRemove(Landroid/os/IBinder;Landroid/os/IBinder;IIILandroid/os/IBinder;)V
    .registers 11
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I
    .param p5, "userId"    # I
    .param p6, "receiver"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 596
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 597
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 599
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    if-nez p6, :cond_22

    goto :goto_23

    :cond_22
    move-object v2, p6

    :goto_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 603
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 607
    return-void
.end method

.method private blacklist binderCallRename(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 9
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "groupId"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 612
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 613
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui.face.FaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    return-void
.end method

.method private blacklist cancelAuthentication()V
    .registers 4

    .line 220
    const-string v0, "MiuiFaceManager"

    const-string v1, "cancelAuthentication "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 223
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceBinderProxy:Landroid/os/MiuiBinderProxy;

    if-eqz v0, :cond_1b

    .line 226
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/face/MiuiFaceManager;->binderCallCancelAuthention(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 230
    :cond_1b
    goto :goto_20

    .line 228
    :catch_1c
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private blacklist cancelEnrollment()V
    .registers 6

    .line 234
    const-string v0, "MiuiFaceManager"

    const-string v1, "cancelEnrollment "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 237
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceBinderProxy:Landroid/os/MiuiBinderProxy;

    if-eqz v0, :cond_1d

    .line 238
    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 239
    iget-object v4, p0, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    if-nez v4, :cond_18

    const/4 v4, 0x0

    :cond_18
    aput-object v4, v2, v3

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/os/MiuiBinderProxy;->callOneWayTransact(I[Ljava/lang/Object;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_1e

    .line 243
    :cond_1d
    goto :goto_22

    .line 241
    :catch_1e
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 843
    packed-switch p1, :pswitch_data_b6

    :pswitch_3
    goto/16 :goto_91

    .line 868
    :pswitch_5
    const v0, 0x10403dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 866
    :pswitch_d
    const v0, 0x10403d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 864
    :pswitch_15
    const v0, 0x10403db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 862
    :pswitch_1d
    const v0, 0x10403df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 859
    :pswitch_25
    const v0, 0x10403d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 871
    :pswitch_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v1, v0

    if-ge p2, v1, :cond_3e

    .line 874
    aget-object v1, v0, p2

    return-object v1

    .line 876
    :cond_3e
    const/16 v1, 0x7d3

    if-ne p2, v1, :cond_45

    .line 877
    const-string v1, "ERROR_TIME_OUT"

    return-object v1

    .line 879
    :cond_45
    const/16 v1, 0x834

    if-ne p2, v1, :cond_4c

    .line 880
    const-string v1, "ERROR_BINDER_CALL"

    return-object v1

    .line 882
    :cond_4c
    const/16 v1, 0x7d1

    if-ne p2, v1, :cond_53

    .line 883
    const-string v1, "ERROR_SERVICE_IS_BUSY"

    return-object v1

    .line 885
    :cond_53
    const/16 v1, 0x7d2

    if-ne p2, v1, :cond_5a

    .line 886
    const-string v1, "ERROR_SERVICE_IS_IDLE"

    return-object v1

    .line 888
    :cond_5a
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_91

    .line 889
    const-string v1, "ERROR_CANCELED"

    return-object v1

    .line 857
    .end local v0    # "msgArray":[Ljava/lang/String;
    :pswitch_61
    const v0, 0x10403d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 855
    :pswitch_69
    const v0, 0x10403d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :pswitch_71
    const v0, 0x10403da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 851
    :pswitch_79
    const v0, 0x10403dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :pswitch_81
    const v0, 0x10403de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 845
    :pswitch_89
    const v0, 0x10403d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 894
    :cond_91
    :goto_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v0, ""

    return-object v0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_89
        :pswitch_81
        :pswitch_79
        :pswitch_71
        :pswitch_69
        :pswitch_3
        :pswitch_61
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_15
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist initService()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-nez v1, :cond_24

    .line 185
    const-string v1, "miui.face.FaceService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    .line 186
    if-eqz v1, :cond_15

    .line 187
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 189
    :cond_15
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceBinderProxy:Landroid/os/MiuiBinderProxy;

    if-nez v1, :cond_24

    .line 190
    new-instance v1, Landroid/os/MiuiBinderProxy;

    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    const-string v3, "miui.face.FaceService"

    invoke-direct {v1, v2, v3}, Landroid/os/MiuiBinderProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceBinderProxy:Landroid/os/MiuiBinderProxy;

    .line 194
    :cond_24
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist sendAcquiredResult(JII)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "clientInfo"    # I
    .param p4, "vendorCode"    # I

    .line 777
    invoke-virtual {p0, p3}, Landroid/hardware/face/MiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v1, :cond_c

    .line 779
    invoke-virtual {v1, p3, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_13

    .line 780
    :cond_c
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_13

    .line 781
    invoke-virtual {v1, p3, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 783
    :cond_13
    :goto_13
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .registers 2

    .line 765
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 766
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 768
    :cond_7
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;I)V
    .registers 6
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I

    .line 757
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_10

    .line 758
    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    .line 760
    .local v0, "result":Landroid/hardware/face/FaceManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    .line 762
    .end local v0    # "result":Landroid/hardware/face/FaceManager$AuthenticationResult;
    :cond_10
    return-void
.end method

.method private blacklist sendEnrollResult(Landroid/hardware/face/Face;I)V
    .registers 4
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 751
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_7

    .line 752
    invoke-virtual {v0, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 754
    :cond_7
    return-void
.end method

.method private blacklist sendErrorResult(JII)V
    .registers 9
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I
    .param p4, "vendorCode"    # I

    .line 740
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Landroid/hardware/face/MiuiFaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    const/16 v2, 0x8

    if-eqz v1, :cond_15

    .line 742
    if-ne p3, v2, :cond_10

    move v2, p4

    goto :goto_11

    :cond_10
    move v2, p3

    :goto_11
    invoke-virtual {v1, v2, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_30

    .line 743
    :cond_15
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_22

    .line 744
    if-ne p3, v2, :cond_1d

    move v2, p4

    goto :goto_1e

    :cond_1d
    move v2, p3

    :goto_1e
    invoke-virtual {v1, v2, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_30

    .line 745
    :cond_22
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-eqz v1, :cond_30

    .line 746
    iget-object v3, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalMiuiface:Landroid/hardware/face/Face;

    if-ne p3, v2, :cond_2c

    move v2, p4

    goto :goto_2d

    :cond_2c
    move v2, p3

    :goto_2d
    invoke-virtual {v1, v3, v2, v0}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    .line 748
    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist sendLockoutReset(I)V
    .registers 3
    .param p1, "sensorId"    # I

    .line 771
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    if-eqz v0, :cond_7

    .line 772
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager$LockoutResetCallback;->onLockoutReset(I)V

    .line 774
    :cond_7
    return-void
.end method

.method private blacklist sendRemovedResult(Landroid/hardware/face/Face;I)V
    .registers 8
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 722
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-nez v0, :cond_5

    .line 723
    return-void

    .line 725
    :cond_5
    const-string v0, "MiuiFaceManager"

    if-eqz p1, :cond_69

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalMiuiface:Landroid/hardware/face/Face;

    if-nez v1, :cond_e

    goto :goto_69

    .line 729
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRemovedResult faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  remaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    .line 731
    .local v1, "faceId":I
    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalMiuiface:Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    .line 732
    .local v2, "reqFaceId":I
    if-eqz v2, :cond_63

    if-eqz v1, :cond_63

    if-eq v1, v2, :cond_63

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 736
    :cond_63
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    .line 737
    return-void

    .line 726
    .end local v1    # "faceId":I
    .end local v2    # "reqFaceId":I
    :cond_69
    :goto_69
    const-string v1, "Received MSG_REMOVED, but face or mRemovalMiuiface is null, "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 668
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 669
    new-instance v1, Landroid/hardware/face/MiuiFaceManager$ClientHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/MiuiFaceManager$ClientHandler;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Looper;Landroid/hardware/face/MiuiFaceManager$ClientHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_2a

    .line 670
    :cond_f
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2a

    .line 671
    new-instance v1, Landroid/hardware/face/MiuiFaceManager$ClientHandler;

    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/MiuiFaceManager$ClientHandler;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Looper;Landroid/hardware/face/MiuiFaceManager$ClientHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    .line 673
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 403
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_d

    .line 404
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    .line 406
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLockoutResetCallback  callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :try_start_25
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 409
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_33

    .line 410
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager;->mLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 411
    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    invoke-direct {p0, v0, v2}, Landroid/hardware/face/MiuiFaceManager;->binderCallAddLoackoutResetCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_34

    .line 415
    :cond_33
    goto :goto_4b

    .line 413
    :catch_34
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4b
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;)V
    .registers 14
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 249
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/face/MiuiFaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 250
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 24
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .line 255
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    iget-boolean v0, v10, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_1f

    iget-object v0, v10, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1f

    .line 256
    iget-object v1, v10, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V

    .line 257
    return-void

    .line 259
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticate mServiceReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MiuiFaceManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v12, :cond_9e

    .line 263
    const/4 v0, 0x0

    if-eqz v11, :cond_52

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 265
    const-string v0, "authentication already canceled"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 268
    :cond_4a
    new-instance v1, Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;

    invoke-direct {v1, v10, v0}, Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener-IA;)V

    invoke-virtual {v11, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 271
    :cond_52
    move-object/from16 v14, p5

    invoke-direct {v10, v14}, Landroid/hardware/face/MiuiFaceManager;->useHandler(Landroid/os/Handler;)V

    .line 272
    iput-object v12, v10, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 273
    iput-object v0, v10, Landroid/hardware/face/MiuiFaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 275
    :try_start_5b
    invoke-direct/range {p0 .. p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 276
    iget-object v0, v10, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceBinderProxy:Landroid/os/MiuiBinderProxy;

    if-eqz v0, :cond_7c

    .line 281
    const-wide/16 v15, -0x1

    .line 282
    .local v15, "sessionId":J
    iget-object v2, v10, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, v10, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v7, v10, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    iget-object v0, v10, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 282
    move-object/from16 v1, p0

    move-wide v4, v15

    move/from16 v6, p6

    move/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Landroid/hardware/face/MiuiFaceManager;->binderCallAuthenticate(Landroid/os/IBinder;Landroid/os/IBinder;JILandroid/os/IBinder;ILjava/lang/String;)I

    .line 285
    nop

    .end local v15    # "sessionId":J
    goto :goto_8a

    .line 286
    :cond_7c
    const-string v0, "mMiuiFaceService is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v0, 0x834

    invoke-virtual {v10, v0}, Landroid/hardware/face/MiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8a} :catch_8b

    .line 296
    :goto_8a
    goto :goto_9d

    .line 289
    :catch_8b
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Remote exception while authenticating: "

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    if-eqz v12, :cond_9d

    .line 294
    iget-object v1, v10, Landroid/hardware/face/MiuiFaceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v10, v12}, Landroid/hardware/face/MiuiFaceManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/FaceManager$AuthenticationCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9d
    :goto_9d
    return-void

    .line 261
    :cond_9e
    move-object/from16 v14, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist binderDied()V
    .registers 4

    .line 199
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    const-string v1, "MiuiFaceManager"

    const-string v2, "mMiuiFaceService Service Died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V
    .registers 5
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$FaceDetectionCallback;
    .param p3, "userId"    # I

    .line 929
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_d

    .line 930
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V

    .line 932
    :cond_d
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "enrollCallback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 303
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .registers 26
    .param p1, "cryptoToken"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "enrollCallback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "detectArea"    # Landroid/graphics/RectF;
    .param p7, "enrollArea"    # Landroid/graphics/RectF;
    .param p8, "enrollStep"    # I

    .line 307
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    const/16 v16, 0x0

    .line 308
    .local v16, "userId":I
    iget-boolean v0, v13, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_26

    iget-object v0, v13, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_26

    .line 309
    iget-object v1, v13, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/hardware/face/FaceManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    .line 311
    return-void

    .line 313
    :cond_26
    if-eqz v15, :cond_91

    .line 316
    const-string v12, "MiuiFaceManager"

    if-eqz v14, :cond_41

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 318
    const-string v0, "enrollment already canceled"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 321
    :cond_38
    new-instance v0, Landroid/hardware/face/MiuiFaceManager$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, v13, v1}, Landroid/hardware/face/MiuiFaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/MiuiFaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {v14, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 325
    :cond_41
    const/16 v11, 0x834

    :try_start_43
    invoke-direct/range {p0 .. p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 326
    iget-object v2, v13, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v2, :cond_6c

    .line 327
    iput-object v15, v13, Landroid/hardware/face/MiuiFaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 328
    iget-object v3, v13, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, v13, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    iget-object v0, v13, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_56} :catch_7e

    .line 328
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move v14, v11

    move-object/from16 v11, p7

    move-object v14, v12

    move/from16 v12, p8

    :try_start_68
    invoke-direct/range {v1 .. v12}, Landroid/hardware/face/MiuiFaceManager;->binderCallEnroll(Landroid/os/IBinder;Landroid/os/IBinder;[BILandroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    goto :goto_7b

    .line 331
    :cond_6c
    move-object v14, v12

    const-string v0, "mMiuiFaceService is null"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v1, 0x834

    invoke-virtual {v13, v1}, Landroid/hardware/face/MiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_7b} :catch_7c

    .line 341
    :goto_7b
    goto :goto_90

    .line 334
    :catch_7c
    move-exception v0

    goto :goto_80

    :catch_7e
    move-exception v0

    move-object v14, v12

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    :goto_80
    const-string v1, "exception in enroll: "

    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    if-eqz v15, :cond_90

    .line 339
    const/16 v1, 0x834

    invoke-virtual {v13, v1}, Landroid/hardware/face/MiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_90
    :goto_90
    return-void

    .line 314
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist extCmd(II)I
    .registers 12
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 370
    const-string v0, "MiuiFaceManager"

    iget-boolean v1, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_11

    .line 371
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager;->extCmd(II)I

    move-result v0

    return v0

    .line 373
    :cond_11
    const/4 v1, -0x1

    .line 375
    .local v1, "res":I
    :try_start_12
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 376
    iget-object v3, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v3, :cond_2b

    .line 377
    iget-object v4, p0, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/face/MiuiFaceManager;->binderCallExtCmd(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2a} :catch_2c

    move v1, v2

    .line 381
    :cond_2b
    goto :goto_43

    .line 379
    :catch_2c
    move-exception v2

    .line 380
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extCmd  cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v1
.end method

.method public blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 901
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_d

    .line 902
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 904
    :cond_d
    return-void
.end method

.method public blacklist getAuthTimeoutLimit()I
    .registers 2

    .line 834
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->getAuthTimeoutLimit()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public blacklist getEnrollTimeoutLimits()I
    .registers 2

    .line 828
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->getEnrollTimeoutLimits()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 420
    const-string v0, "MiuiFaceManager"

    iget-boolean v1, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_11

    .line 421
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 423
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    const/4 v2, 0x0

    .line 426
    .local v2, "groupId":I
    :try_start_17
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 427
    iget-object v3, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v3, :cond_29

    .line 428
    iget-object v4, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Landroid/hardware/face/MiuiFaceManager;->binderCallGetEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_28} :catch_2a

    move-object v1, v3

    .line 432
    :cond_29
    goto :goto_41

    .line 430
    :catch_2a
    move-exception v3

    .line 431
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnrolledFaces   res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_6d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_55

    goto :goto_6d

    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    :cond_6d
    :goto_6d
    const-string v4, " is null"

    :goto_6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-object v1
.end method

.method public blacklist getFailedAttempts()I
    .registers 2

    .line 817
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->getFailedAttempts()I

    move-result v0

    return v0
.end method

.method public blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 915
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_d

    .line 916
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V

    .line 918
    :cond_d
    return-void
.end method

.method public blacklist getLiveAttackAttempts()I
    .registers 2

    .line 822
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->getLiveAttackAttempts()I

    move-result v0

    return v0
.end method

.method public blacklist getLockoutModeForUser(II)I
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 952
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_f

    .line 953
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager;->getLockoutModeForUser(II)I

    move-result v0

    return v0

    .line 955
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMessageInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "msgId"    # I

    .line 839
    invoke-super {p0, p1}, Landroid/hardware/face/BaseMiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation

    .line 936
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_f

    .line 937
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 939
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 944
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_f

    .line 945
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 947
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .registers 5

    .line 444
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_f

    .line 445
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    .line 447
    :cond_f
    const/4 v0, -0x2

    .line 449
    .local v0, "res":I
    :try_start_10
    iget v1, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceCount:I

    if-lez v1, :cond_1a

    iget-boolean v2, p0, Landroid/hardware/face/MiuiFaceManager;->mIsValid:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_20

    if-eqz v2, :cond_1a

    .line 450
    move v0, v1

    goto :goto_1f

    .line 451
    :cond_1a
    if-lez v1, :cond_1e

    .line 452
    const/4 v0, -0x1

    goto :goto_1f

    .line 454
    :cond_1e
    const/4 v0, 0x0

    .line 458
    :goto_1f
    goto :goto_39

    .line 456
    :catch_20
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiFaceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    if-lez v0, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    return v1
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 439
    invoke-virtual {p0}, Landroid/hardware/face/MiuiFaceManager;->hasEnrolledTemplates()Z

    move-result v0

    return v0
.end method

.method public blacklist isFaceFeatureEnabled()Z
    .registers 2

    .line 794
    invoke-virtual {p0}, Landroid/hardware/face/MiuiFaceManager;->isFaceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 795
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->mIsSuperPower:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 797
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFaceFeatureSupport()Z
    .registers 2

    .line 802
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->isFaceFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public blacklist isFaceUnlockInited()Z
    .registers 2

    .line 786
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_7

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->mHasInit:Z

    .line 790
    :cond_7
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->mHasInit:Z

    return v0
.end method

.method public blacklist isHardwareDetected()Z
    .registers 2

    .line 505
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->isFaceFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportMultiFaceInput()Z
    .registers 2

    .line 807
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->isSupportMultiFaceInput()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportScreenOnDelayed()Z
    .registers 2

    .line 812
    invoke-super {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->isSupportScreenOnDelayed()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$authenticate$0$android-hardware-face-MiuiFaceManager(Landroid/hardware/face/FaceManager$AuthenticationCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 294
    const/16 v0, 0x834

    invoke-virtual {p0, v0}, Landroid/hardware/face/MiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist preInitAuthen()V
    .registers 5

    .line 489
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_5

    .line 490
    return-void

    .line 493
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 494
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_1c

    .line 495
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/face/MiuiFaceManager;->mHasInit:Z

    .line 496
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/face/MiuiFaceManager;->binderCallPpreInitAuthen(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 500
    :cond_1c
    goto :goto_36

    .line 498
    :catch_1d
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transact fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method public blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 13
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 346
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_e

    .line 347
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 348
    return-void

    .line 350
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove  faceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_34
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 353
    iget-object v3, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v3, :cond_53

    .line 354
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalMiuiface:Landroid/hardware/face/Face;

    .line 355
    iput-object p3, p0, Landroid/hardware/face/MiuiFaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 357
    iput-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 358
    iget-object v4, p0, Landroid/hardware/face/MiuiFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    const/4 v6, 0x0

    iget-object v8, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceServiceReceiver:Landroid/os/IBinder;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/face/MiuiFaceManager;->binderCallRemove(Landroid/os/IBinder;Landroid/os/IBinder;IIILandroid/os/IBinder;)V

    goto :goto_61

    .line 360
    :cond_53
    const-string v0, "mMiuiFaceService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v0, 0x834

    invoke-virtual {p0, v0}, Landroid/hardware/face/MiuiFaceManager;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v0, v2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_61} :catch_62

    .line 365
    :goto_61
    goto :goto_79

    .line 363
    :catch_62
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_79
    return-void
.end method

.method public blacklist rename(ILjava/lang/String;)V
    .registers 8
    .param p1, "faceId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 387
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_5

    .line 388
    return-void

    .line 390
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename  faceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, "groupId":I
    :try_start_28
    invoke-direct {p0}, Landroid/hardware/face/MiuiFaceManager;->initService()V

    .line 394
    iget-object v2, p0, Landroid/hardware/face/MiuiFaceManager;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v2, :cond_32

    .line 395
    invoke-direct {p0, v2, p1, v0, p2}, Landroid/hardware/face/MiuiFaceManager;->binderCallRename(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_33

    .line 399
    :cond_32
    goto :goto_4a

    .line 397
    :catch_33
    move-exception v2

    .line 398
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    return-void
.end method

.method public blacklist revokeChallenge(IIJ)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 908
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_d

    .line 909
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    .line 911
    :cond_d
    return-void
.end method

.method public blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "enabled"    # Z
    .param p4, "token"    # [B
    .param p5, "callback"    # Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 922
    iget-boolean v0, p0, Landroid/hardware/face/MiuiFaceManager;->isSupportTee:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_12

    .line 923
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/face/FaceManager;->setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V

    .line 925
    :cond_12
    return-void
.end method
