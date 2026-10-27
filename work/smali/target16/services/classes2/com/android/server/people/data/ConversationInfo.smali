.class public Lcom/android/server/people/data/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConversationInfo"


# instance fields
.field public mContactPhoneNumber:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field public mConversationFlags:I

.field public mCreationTimestamp:J

.field public mCurrStatuses:Ljava/util/Map;

.field public mLastEventTimestamp:J

.field public mLocusId:Landroid/content/LocusId;

.field public mNotificationChannelId:Ljava/lang/String;

.field public mParentNotificationChannelId:Ljava/lang/String;

.field public mShortcutFlags:I

.field public mShortcutId:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContactPhoneNumber(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContactUri(Lcom/android/server/people/data/ConversationInfo;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConversationFlags(Lcom/android/server/people/data/ConversationInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCreationTimestamp(Lcom/android/server/people/data/ConversationInfo;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastEventTimestamp(Lcom/android/server/people/data/ConversationInfo;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocusId(Lcom/android/server/people/data/ConversationInfo;)Landroid/content/LocusId;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationChannelId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmParentNotificationChannelId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutFlags(Lcom/android/server/people/data/ConversationInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutId(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/ConversationInfo$Builder;)V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmShortcutId(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmLocusId(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 123
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmContactUri(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 124
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmContactPhoneNumber(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmNotificationChannelId(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmParentNotificationChannelId(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmLastEventTimestamp(Lcom/android/server/people/data/ConversationInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 128
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmCreationTimestamp(Lcom/android/server/people/data/ConversationInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 129
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmShortcutFlags(Lcom/android/server/people/data/ConversationInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 130
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmConversationFlags(Lcom/android/server/people/data/ConversationInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 131
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->-$$Nest$fgetmCurrStatuses(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/ConversationInfo$Builder;Lcom/android/server/people/data/ConversationInfo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationInfo;-><init>(Lcom/android/server/people/data/ConversationInfo$Builder;)V

    return-void
.end method

.method public static maybeReadVersion(Ljava/io/DataInputStream;)I
    .registers 1

    .line 490
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;
    .registers 5

    .line 450
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    .line 451
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 453
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 454
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 455
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 456
    new-instance v2, Landroid/content/LocusId;

    invoke-direct {v2, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 458
    :cond_28
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 460
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 462
    :cond_39
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 464
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 466
    :cond_46
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 467
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 468
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 469
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 470
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 472
    :cond_61
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 473
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 474
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 476
    :cond_6e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 477
    invoke-static {v1}, Lcom/android/server/people/data/ConversationInfo;->maybeReadVersion(Ljava/io/DataInputStream;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_83

    .line 479
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setCreationTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_83} :catch_88

    .line 485
    :cond_83
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    return-object p0

    :catch_88
    move-exception p0

    .line 482
    sget-object v0, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    const-string v1, "Failed to read conversation info fields from backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;
    .registers 9

    .line 389
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    .line 390
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d2

    .line 391
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const-wide v3, 0x10900000001L

    packed-switch v1, :pswitch_data_d8

    .line 441
    sget-object v1, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read undefined field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_33
    const-wide v1, 0x1030000000aL

    .line 425
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setCreationTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_5

    :pswitch_40
    const-wide v1, 0x10300000009L

    .line 421
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_5

    :pswitch_4d
    const-wide v1, 0x10900000008L

    .line 417
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_5

    :pswitch_5a
    const-wide v1, 0x10900000007L

    .line 437
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_5

    :pswitch_67
    const-wide v1, 0x10500000006L

    .line 433
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_5

    :pswitch_74
    const-wide v1, 0x10500000005L

    .line 429
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_5

    :pswitch_81
    const-wide v1, 0x10900000004L

    .line 413
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto/16 :goto_5

    :pswitch_8f
    const-wide v1, 0x10900000003L

    .line 409
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto/16 :goto_5

    :pswitch_a1
    const-wide v5, 0x10b00000002L

    .line 397
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 399
    :cond_aa
    :goto_aa
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    if-eq v1, v2, :cond_c4

    .line 401
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_aa

    .line 402
    new-instance v1, Landroid/content/LocusId;

    .line 403
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_aa

    .line 406
    :cond_c4
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_5

    .line 394
    :pswitch_c9
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto/16 :goto_5

    .line 445
    :cond_d2
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_a1
        :pswitch_8f
        :pswitch_81
        :pswitch_74
        :pswitch_67
        :pswitch_5a
        :pswitch_4d
        :pswitch_40
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 250
    :cond_4
    instance-of v1, p1, Lcom/android/server/people/data/ConversationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 253
    :cond_a
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 254
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 255
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 256
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 257
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 258
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 259
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 260
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget-wide v5, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_79

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v3, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    if-ne v1, v3, :cond_79

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iget v3, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    if-ne v1, v3, :cond_79

    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 264
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    return v0

    :cond_79
    return v2
.end method

.method public getBackupPayload()[B
    .registers 5

    .line 363
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 366
    :try_start_a
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_62

    const-string v3, ""

    if-eqz v2, :cond_1a

    :try_start_15
    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v3

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, v3

    :goto_28
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v2, :cond_30

    goto :goto_31

    :cond_30
    move-object v2, v3

    :goto_31
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 370
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 371
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 372
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_43

    goto :goto_44

    :cond_43
    move-object v2, v3

    :goto_44
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    if-eqz v2, :cond_4c

    move-object v3, v2

    :cond_4c
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 374
    iget-wide v2, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x1

    .line 375
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 376
    iget-wide v2, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_5d} :catch_62

    .line 382
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_62
    move-exception p0

    .line 379
    sget-object v0, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write fields to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContactPhoneNumber()Ljava/lang/String;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getContactUri()Landroid/net/Uri;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getCreationTimestamp()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    return-wide v0
.end method

.method public getLastEventTimestamp()J
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public getParentNotificationChannelId()Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public getShortcutId()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public getStatuses()Ljava/util/Collection;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final hasConversationFlags(I)Z
    .registers 2

    .line 328
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final hasShortcutFlags(I)Z
    .registers 2

    .line 324
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 12

    .line 269
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 270
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 271
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    .line 269
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isBubbled()Z
    .registers 2

    const/4 v0, 0x4

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isContactStarred()Z
    .registers 2

    const/16 v0, 0x20

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isDemoted()Z
    .registers 2

    const/16 v0, 0x40

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isImportant()Z
    .registers 2

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isNotificationSilenced()Z
    .registers 2

    const/4 v0, 0x2

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isPersonBot()Z
    .registers 2

    const/16 v0, 0x10

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isPersonImportant()Z
    .registers 2

    const/16 v0, 0x8

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result p0

    return p0
.end method

.method public isShortcutCachedForNotification()Z
    .registers 2

    const/16 v0, 0x4000

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    move-result p0

    return p0
.end method

.method public isShortcutLongLived()Z
    .registers 2

    const/16 v0, 0x2000

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v1, "ConversationInfo {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, "shortcutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ", locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ", contactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, ", notificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ", parentNotificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, ", lastEventTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, ", creationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, ", statuses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ", shortcutFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isShortcutLongLived()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 290
    const-string v2, "Liv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 293
    const-string v2, "Cac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_8e
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v2, ", conversationFlags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isImportant()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 299
    const-string v1, "Imp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_af
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isNotificationSilenced()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 302
    const-string v1, "Sil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isBubbled()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 305
    const-string v1, "Bub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_c5
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isDemoted()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 308
    const-string v1, "Dem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_d0
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isPersonImportant()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 311
    const-string v1, "PIm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_db
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isPersonBot()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 314
    const-string v1, "Bot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_e6
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isContactStarred()Z

    move-result p0

    if-eqz p0, :cond_f1

    .line 317
    const-string p0, "Sta"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_f1
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 333
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v0, :cond_23

    const-wide v3, 0x10b00000002L

    .line 335
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 336
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 337
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 339
    :cond_23
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_33

    const-wide v1, 0x10900000003L

    .line 340
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 342
    :cond_33
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const-wide v1, 0x10900000004L

    .line 343
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 346
    :cond_3f
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_4b

    const-wide v1, 0x10900000008L

    .line 347
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_4b
    const-wide v0, 0x10300000009L

    .line 350
    iget-wide v2, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000aL

    .line 351
    iget-wide v2, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000005L

    .line 352
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    .line 353
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 354
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    if-eqz p0, :cond_7f

    const-wide v0, 0x10900000007L

    .line 355
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_7f
    return-void
.end method
