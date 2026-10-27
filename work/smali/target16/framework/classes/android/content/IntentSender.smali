.class public Landroid/content/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentSender$OnFinished;,
        Landroid/content/IntentSender$FinishedDispatcher;,
        Landroid/content/IntentSender$SendIntentException;
    }
.end annotation


# static fields
.field private static final blacklist COVER_INTENT_SENDER:J = 0x1832ff1cL

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REMOVE_HIDDEN_SEND_INTENT_METHOD:J = 0x153acb04L

.field private static final blacklist SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

.field private static final blacklist TAG:Ljava/lang/String; = "IntentSender"


# instance fields
.field private blacklist mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

.field private final greylist mTarget:Landroid/content/IIntentSender;

.field greylist-max-o mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/content/IntentSender;->SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

    .line 427
    new-instance v0, Landroid/content/IntentSender$1;

    invoke-direct {v0}, Landroid/content/IntentSender$1;-><init>()V

    sput-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/IIntentSender;)V
    .registers 2

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 483
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 3

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 488
    iput-object p2, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    .line 489
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object p1

    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 494
    return-void
.end method

.method private blacklist getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 3

    .line 497
    iget-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    if-nez v0, :cond_17

    .line 499
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 502
    goto :goto_17

    .line 500
    :catch_11
    move-exception v0

    .line 501
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 505
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    return-object v0
.end method

.method private blacklist getSendIntentDefaultOptions()Landroid/os/Bundle;
    .registers 3

    .line 233
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->balCoverIntentSender()Z

    move-result v0

    if-nez v0, :cond_9

    .line 234
    sget-object v0, Landroid/content/IntentSender;->SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

    return-object v0

    .line 236
    :cond_9
    const-wide/32 v0, 0x1832ff1c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_15

    .line 237
    sget-object v0, Landroid/content/IntentSender;->SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

    return-object v0

    .line 239
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist readIntentSenderOrNullFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .registers 2

    .line 464
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 465
    if-eqz p0, :cond_c

    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static whitelist writeIntentSenderOrNullToParcel(Landroid/content/IntentSender;Landroid/os/Parcel;)V
    .registers 2

    .line 449
    if-eqz p0, :cond_9

    iget-object p0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {p0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_a

    .line 450
    :cond_9
    const/4 p0, 0x0

    .line 449
    :goto_a
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 451
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 396
    instance-of v0, p1, Landroid/content/IntentSender;

    if-eqz v0, :cond_17

    .line 397
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/content/IntentSender;

    iget-object p1, p1, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 398
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 397
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 400
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getCreatorPackage()Ljava/lang/String;
    .registers 2

    .line 357
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCreatorUid()I
    .registers 2

    .line 370
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    return v0
.end method

.method public whitelist getCreatorUserHandle()Landroid/os/UserHandle;
    .registers 3

    .line 385
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    .line 386
    if-lez v0, :cond_14

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public greylist getTarget()Landroid/content/IIntentSender;
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public whitelist getTargetPackage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-virtual {p0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWhitelistToken()Landroid/os/IBinder;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isImmutable()Z
    .registers 2

    .line 513
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->isImmutable()Z

    move-result v0

    return v0
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Landroid/content/IntentSender;->getSendIntentDefaultOptions()Landroid/os/Bundle;

    move-result-object v5

    .line 196
    if-nez p5, :cond_9

    const/4 p5, 0x0

    move-object v6, p5

    goto :goto_12

    :cond_9
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    move-object v6, v0

    .line 195
    :goto_12
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V

    .line 197
    return-void
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroid/content/IntentSender;->getSendIntentDefaultOptions()Landroid/os/Bundle;

    move-result-object v5

    .line 229
    if-nez p5, :cond_9

    const/4 p5, 0x0

    move-object v6, p5

    goto :goto_12

    :cond_9
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    move-object v6, v0

    .line 228
    :goto_12
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v4, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V

    .line 230
    return-void
.end method

.method public blacklist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    const-wide/32 v0, 0x153acb04

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_24

    .line 277
    nop

    .line 278
    if-nez p5, :cond_f

    const/4 p5, 0x0

    move-object v7, p5

    goto :goto_18

    :cond_f
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 277
    :goto_18
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V

    .line 279
    return-void

    .line 275
    :cond_24
    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string p2, "This overload of sendIntent was removed."

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 314
    move-object/from16 v0, p7

    if-eqz p3, :cond_7

    .line 315
    :try_start_4
    invoke-virtual {p3}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 317
    :cond_7
    const/4 v1, 0x0

    if-eqz p3, :cond_14

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_15

    .line 319
    :cond_14
    move-object v6, v1

    .line 320
    :goto_15
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object p1

    .line 322
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    move-object v3, v2

    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    move-object v4, v3

    iget-object v3, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    .line 324
    if-eqz v0, :cond_32

    .line 325
    new-instance v1, Landroid/content/IntentSender$FinishedDispatcher;

    move-object/from16 v5, p6

    invoke-direct {v1, p0, v0, v5}, Landroid/content/IntentSender$FinishedDispatcher;-><init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Ljava/util/concurrent/Executor;)V

    move-object v7, v1

    goto :goto_33

    .line 326
    :cond_32
    move-object v7, v1

    .line 322
    :goto_33
    move-object v1, p1

    move-object v5, p3

    move-object v8, p4

    move-object v9, p5

    move-object v0, v4

    move v4, p2

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 328
    const/16 p2, 0x66

    if-ne p1, p2, :cond_53

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 329
    const-string p2, "IntentSender"

    new-instance p3, Landroid/app/StackTrace;

    const-string p4, "Activity start aborted"

    invoke-direct {p3, p4}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :cond_53
    if-ltz p1, :cond_57

    .line 336
    nop

    .line 337
    return-void

    .line 332
    :cond_57
    new-instance p1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw p1
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_5d} :catch_5d

    .line 334
    :catch_5d
    move-exception v0

    .line 335
    new-instance p1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    const-string v1, "IntentSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 424
    iget-object p2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {p2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 425
    return-void
.end method
