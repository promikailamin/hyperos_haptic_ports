.class public Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "MmsQueryHelper.java"


# static fields
.field public static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentCountryIso:Ljava/lang/String;

.field public final mEventConsumer:Ljava/util/function/BiConsumer;

.field public mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 61
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addEvent(Ljava/lang/String;JI)Z
    .registers 6

    .line 148
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/MmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_8
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    .line 152
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v0, Lcom/android/server/people/data/Event;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getLastMessageTimestamp()J
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method public final getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    .line 117
    const-string v1, "MmsQueryHelper"

    invoke-static {p1}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    const-string p1, "address"

    const-string/jumbo v0, "type"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 120
    :try_start_10
    iget-object v2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_2a

    if-nez v2, :cond_33

    .line 123
    :try_start_1f
    const-string p1, "Cursor is null when querying MMS address table."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2f

    if-eqz v2, :cond_2e

    .line 138
    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    return-object v8

    :catch_2a
    move-exception v0

    move-object p1, v0

    move-object v3, v8

    goto :goto_6f

    :cond_2e
    return-object v8

    :catchall_2f
    move-exception v0

    move-object p1, v0

    move-object v3, v8

    goto :goto_63

    :cond_33
    move-object v3, v8

    .line 126
    :cond_34
    :goto_34
    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 128
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 129
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne p2, v5, :cond_49

    const/16 v5, 0x89

    if-eq v4, v5, :cond_50

    :cond_49
    const/4 v5, 0x2

    if-ne p2, v5, :cond_34

    const/16 v5, 0x97

    if-ne v4, v5, :cond_34

    .line 134
    :cond_50
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 135
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_58
    .catchall {:try_start_34 .. :try_end_58} :catchall_59

    goto :goto_34

    :catchall_59
    move-exception v0

    move-object p1, v0

    goto :goto_63

    .line 138
    :cond_5c
    :try_start_5c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_74

    :catch_60
    move-exception v0

    move-object p1, v0

    goto :goto_6f

    :goto_63
    if-eqz v2, :cond_6e

    .line 120
    :try_start_65
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6e

    :catchall_69
    move-exception v0

    move-object p2, v0

    :try_start_6b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_60

    .line 139
    :goto_6f
    const-string p2, "Exception when querying MMS address table."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :goto_74
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7b

    return-object v8

    .line 144
    :cond_7b
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public querySince(J)Z
    .registers 15

    .line 70
    const-string v1, "MmsQueryHelper"

    const-string v0, "_id"

    const-string v2, "date"

    const-string/jumbo v3, "msg_box"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 71
    const-string v7, "date > ?"

    const-wide/16 v10, 0x3e8

    .line 73
    div-long/2addr p1, v10

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    const/4 p1, 0x0

    .line 77
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_38
    .catchall {:try_start_1e .. :try_end_2b} :catchall_93

    if-nez p2, :cond_42

    .line 80
    :try_start_2d
    const-string p0, "Cursor is null when querying MMS table."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_3f

    if-eqz p2, :cond_3b

    .line 102
    :try_start_34
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_93

    goto :goto_3b

    :catch_38
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    .line 106
    :cond_3b
    :goto_3b
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p1

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_7e

    .line 83
    :cond_42
    :goto_42
    :try_start_42
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 85
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 86
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 90
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    mul-long/2addr v5, v10

    .line 93
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 94
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 96
    iget-wide v8, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 97
    invoke-virtual {p0, v4, v7}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 98
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/people/data/MmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v4
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_3f

    if-eqz v4, :cond_42

    const/4 p1, 0x1

    goto :goto_42

    .line 102
    :cond_77
    :try_start_77
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_38
    .catchall {:try_start_77 .. :try_end_7a} :catchall_93

    .line 106
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p1

    :goto_7e
    if-eqz p2, :cond_89

    .line 77
    :try_start_80
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_89

    :catchall_84
    move-exception v0

    move-object p2, v0

    :try_start_86
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    throw p0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_38
    .catchall {:try_start_86 .. :try_end_8a} :catchall_93

    .line 104
    :goto_8a
    :try_start_8a
    const-string p2, "Exception when querying MMS table."

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_93

    .line 106
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p1

    :catchall_93
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 107
    throw p0
.end method

.method public final validateEvent(Ljava/lang/String;JI)Z
    .registers 5

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_16

    sget-object p0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 159
    invoke-virtual {p0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
