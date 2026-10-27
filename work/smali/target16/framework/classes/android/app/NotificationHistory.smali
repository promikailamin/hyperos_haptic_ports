.class public final Landroid/app/NotificationHistory;
.super Ljava/lang/Object;
.source "NotificationHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationHistory$HistoricalNotification;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoryCount:I

.field private blacklist mIndex:I

.field private blacklist mNotificationsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mStringPool:[Ljava/lang/String;

.field private blacklist mStringsToWrite:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 622
    new-instance v0, Landroid/app/NotificationHistory$1;

    invoke-direct {v0}, Landroid/app/NotificationHistory$1;-><init>()V

    sput-object v0, Landroid/app/NotificationHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 271
    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 272
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p1

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 250
    iget p1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-lez p1, :cond_90

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 256
    iget-object v3, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 257
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {v0, v1, v3, p1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 258
    iget-object p1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataSize(I)V

    .line 259
    iget-object p1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    if-gt v2, p1, :cond_71

    .line 263
    iget-object p1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_90

    .line 260
    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Obtained an invalid position value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from Parcel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_90
    :goto_90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/NotificationHistory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/NotificationHistory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist findStringIndex(Ljava/lang/String;)I
    .registers 5

    .line 456
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 457
    if-ltz v0, :cond_9

    .line 460
    return v0

    .line 458
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' is not in the string pool"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$addNotificationsToWrite$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .registers 4

    .line 355
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private blacklist readNotificationFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 6

    .line 518
    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    const/4 v2, 0x0

    if-ltz v1, :cond_14

    .line 521
    iget-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    goto :goto_17

    .line 523
    :cond_14
    invoke-static {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    .line 526
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    if-ltz v1, :cond_25

    .line 528
    iget-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_28

    .line 530
    :cond_25
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 533
    :goto_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 534
    if-ltz v1, :cond_36

    .line 535
    iget-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_39

    .line 537
    :cond_36
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 540
    :goto_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    if-ltz v1, :cond_47

    .line 542
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_4a

    .line 544
    :cond_47
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 547
    :goto_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 553
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 556
    :cond_7e
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object p1

    return-object p1
.end method

.method private blacklist writeNotificationToParcel(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/os/Parcel;I)V
    .registers 8

    .line 470
    invoke-static {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    if-eqz p3, :cond_10

    .line 471
    invoke-static {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result p3

    goto :goto_11

    .line 473
    :cond_10
    move p3, v0

    .line 477
    :goto_11
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 478
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_21

    .line 480
    :cond_20
    move v1, v0

    .line 484
    :goto_21
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 485
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_31

    .line 487
    :cond_30
    move v2, v0

    .line 491
    :goto_31
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 492
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_45

    .line 494
    :cond_44
    nop

    .line 497
    :goto_45
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 504
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 511
    return-void
.end method


# virtual methods
.method public blacklist addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 4

    .line 343
    if-nez p1, :cond_3

    .line 344
    return-void

    .line 346
    :cond_3
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    iget p1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 348
    return-void
.end method

.method public blacklist addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 3

    .line 332
    if-nez p1, :cond_3

    .line 333
    return-void

    .line 335
    :cond_3
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget p1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 337
    return-void
.end method

.method public blacklist addNotificationsToWrite(Landroid/app/NotificationHistory;)V
    .registers 3

    .line 351
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 352
    invoke-virtual {p0, v0}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 353
    goto :goto_8

    .line 354
    :cond_18
    iget-object p1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v0, Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 356
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 357
    return-void
.end method

.method public blacklist addPooledStrings(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 307
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHistoryCount()I
    .registers 2

    .line 452
    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    return v0
.end method

.method public blacklist getNextNotification()Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 4

    .line 290
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 291
    return-object v1

    .line 293
    :cond_8
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v0}, Landroid/app/NotificationHistory;->readNotificationFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v0

    .line 294
    iget v2, p0, Landroid/app/NotificationHistory;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 295
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v2

    if-nez v2, :cond_21

    .line 296
    iget-object v2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    iput-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 299
    :cond_21
    return-object v0
.end method

.method public blacklist getNotificationsToWrite()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPooledStringsToWrite()[Ljava/lang/String;
    .registers 3

    .line 436
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 437
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 438
    return-object v0
.end method

.method public blacklist hasNextNotification()Z
    .registers 3

    .line 280
    iget v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist poolStringsFromNotifications()V
    .registers 5

    .line 314
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 315
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 316
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 317
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 319
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_32
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 323
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 326
    :cond_51
    return-void
.end method

.method public blacklist removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 416
    nop

    .line 417
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_32

    .line 418
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 419
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 420
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 421
    nop

    .line 422
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v1

    .line 417
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 425
    :cond_32
    if-eqz v2, :cond_37

    .line 426
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 429
    :cond_37
    return v2
.end method

.method public blacklist removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 395
    nop

    .line 396
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_38

    .line 397
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 398
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 399
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 400
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 401
    nop

    .line 402
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v1

    .line 396
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 405
    :cond_38
    if-eqz v2, :cond_3d

    .line 406
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 409
    :cond_3d
    return v2
.end method

.method public blacklist removeNotificationFromWrite(Ljava/lang/String;J)Z
    .registers 9

    .line 375
    nop

    .line 376
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_30

    .line 377
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 378
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 379
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_2d

    .line 380
    nop

    .line 381
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v1

    .line 376
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 384
    :cond_30
    if-eqz v2, :cond_35

    .line 385
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 388
    :cond_35
    return v2
.end method

.method public blacklist removeNotificationsFromWrite(Ljava/lang/String;)V
    .registers 4

    .line 363
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 364
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 365
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 368
    :cond_24
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 369
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v1, p0, Landroid/app/NotificationHistory;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-lez v1, :cond_81

    .line 570
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    .line 571
    iget-object v1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_57

    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    :try_start_2a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 580
    move v3, v2

    :goto_2e
    iget v4, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-ge v3, v4, :cond_40

    .line 581
    iget-object v4, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 582
    invoke-direct {p0, v4, v1, p2}, Landroid/app/NotificationHistory;->writeNotificationToParcel(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/os/Parcel;I)V

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 585
    :cond_40
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 588
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    invoke-virtual {v0, v1, v2, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_4d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_52

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    nop

    .line 599
    goto :goto_81

    .line 596
    :catchall_52
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw p1

    .line 599
    :cond_57
    iget-object p2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    if-eqz p2, :cond_79

    .line 604
    iget-object p2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object p2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget-object p2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, p2, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_81

    .line 612
    :cond_79
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Either mParcel or mNotificationsToWrite must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :cond_81
    :goto_81
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    return-void
.end method
