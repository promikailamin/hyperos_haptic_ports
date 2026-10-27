.class public Lcom/android/server/people/data/SmsQueryHelper;
.super Ljava/lang/Object;
.source "SmsQueryHelper.java"


# static fields
.field public static final SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentCountryIso:Ljava/lang/String;

.field public final mEventConsumer:Ljava/util/function/BiConsumer;

.field public mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 56
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addEvent(Ljava/lang/String;JI)Z
    .registers 6

    .line 114
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/SmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_8
    sget-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    .line 118
    iget-object p0, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v0, Lcom/android/server/people/data/Event;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getLastMessageTimestamp()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method public querySince(J)Z
    .registers 14

    .line 65
    const-string v1, "SmsQueryHelper"

    const-string v0, "_id"

    const-string v2, "date"

    const-string/jumbo v3, "type"

    const-string v4, "address"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 66
    const-string v8, "date > ?"

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    const/4 p1, 0x0

    .line 71
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_37
    .catchall {:try_start_1d .. :try_end_2a} :catchall_9a

    if-nez p2, :cond_41

    .line 74
    :try_start_2c
    const-string p0, "Cursor is null when querying SMS table."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3e

    if-eqz p2, :cond_3a

    .line 100
    :try_start_33
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_9a

    goto :goto_3a

    :catch_37
    move-exception v0

    move-object p0, v0

    goto :goto_91

    .line 104
    :cond_3a
    :goto_3a
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p1

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto :goto_85

    .line 77
    :cond_41
    :goto_41
    :try_start_41
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 79
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 80
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 84
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 87
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 88
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 91
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 93
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 92
    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    iget-wide v9, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    if-eqz v8, :cond_41

    .line 96
    invoke-virtual {p0, v8, v5, v6, v7}, Lcom/android/server/people/data/SmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v5
    :try_end_7a
    .catchall {:try_start_41 .. :try_end_7a} :catchall_3e

    if-eqz v5, :cond_41

    const/4 p1, 0x1

    goto :goto_41

    .line 100
    :cond_7e
    :try_start_7e
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_37
    .catchall {:try_start_7e .. :try_end_81} :catchall_9a

    .line 104
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p1

    :goto_85
    if-eqz p2, :cond_90

    .line 71
    :try_start_87
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_90

    :catchall_8b
    move-exception v0

    move-object p2, v0

    :try_start_8d
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    throw p0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_91} :catch_37
    .catchall {:try_start_8d .. :try_end_91} :catchall_9a

    .line 102
    :goto_91
    :try_start_91
    const-string p2, "Exception when querying SMS table."

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_9a

    .line 104
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p1

    :catchall_9a
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 105
    throw p0
.end method

.method public final validateEvent(Ljava/lang/String;JI)Z
    .registers 5

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_16

    sget-object p0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 125
    invoke-virtual {p0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
