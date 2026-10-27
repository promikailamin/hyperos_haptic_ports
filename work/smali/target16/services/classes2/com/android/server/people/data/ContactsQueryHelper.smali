.class public Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "ContactsQueryHelper.java"


# instance fields
.field public mContactUri:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mIsStarred:Z

.field public mLastUpdatedTimestamp:J

.field public mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContactUri()Landroid/net/Uri;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public isStarred()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    return p0
.end method

.method public query(Ljava/lang/String;)Z
    .registers 6

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 55
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    const-string/jumbo v2, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 58
    :cond_22
    const-string v2, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithEmail(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 60
    :cond_37
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_48
    return v1
.end method

.method public final queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 15

    .line 116
    const-string v1, "ContactsQueryHelper"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 119
    :try_start_4
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_13} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_13} :catch_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_20

    if-nez p1, :cond_35

    .line 122
    :try_start_15
    const-string p2, "Cursor is null when querying contact."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_30

    if-eqz p1, :cond_2f

    .line 153
    :try_start_1c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1f} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    return v3

    :catch_20
    move-exception v0

    move-object p1, v0

    move p3, v3

    goto/16 :goto_b5

    :catch_25
    move-exception v0

    move-object p1, v0

    move p3, v3

    goto/16 :goto_bc

    :catch_2a
    move-exception v0

    move-object p1, v0

    move p3, v3

    goto/16 :goto_c2

    :cond_2f
    return v3

    :catchall_30
    move-exception v0

    move-object p2, v0

    move p3, v3

    goto/16 :goto_9f

    :cond_35
    move p2, v3

    move p3, p2

    .line 125
    :goto_37
    :try_start_37
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_8f

    .line 127
    const-string p4, "_id"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 128
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 131
    const-string p4, "lookup"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 132
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v4, v5, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 137
    const-string/jumbo p4, "starred"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 138
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_67

    move p4, v0

    goto :goto_68

    :cond_67
    move p4, v3

    :goto_68
    iput-boolean p4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 141
    const-string p4, "has_phone_number"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 142
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_78

    move p2, v0

    goto :goto_79

    :cond_78
    move p2, v3

    .line 145
    :goto_79
    const-string p4, "contact_last_updated_timestamp"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_8d

    .line 148
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_87
    .catchall {:try_start_37 .. :try_end_87} :catchall_88

    goto :goto_8d

    :catchall_88
    move-exception v0

    move-object p4, v0

    move v3, p2

    move-object p2, p4

    goto :goto_9f

    :cond_8d
    :goto_8d
    move p3, v0

    goto :goto_37

    .line 153
    :cond_8f
    :try_start_8f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_92} :catch_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_92} :catch_97
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_c8

    :catch_93
    move-exception v0

    move-object p1, v0

    move v3, p2

    goto :goto_b5

    :catch_97
    move-exception v0

    move-object p1, v0

    move v3, p2

    goto :goto_bc

    :catch_9b
    move-exception v0

    move-object p1, v0

    move v3, p2

    goto :goto_c2

    :goto_9f
    if-eqz p1, :cond_b4

    .line 119
    :try_start_a1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_b4

    :catchall_a5
    move-exception v0

    move-object p1, v0

    :try_start_a7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b4

    :catch_ab
    move-exception v0

    move-object p1, v0

    goto :goto_b5

    :catch_ae
    move-exception v0

    move-object p1, v0

    goto :goto_bc

    :catch_b1
    move-exception v0

    move-object p1, v0

    goto :goto_c2

    :cond_b4
    :goto_b4
    throw p2
    :try_end_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a7 .. :try_end_b5} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a7 .. :try_end_b5} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b5} :catch_ab

    .line 158
    :goto_b5
    const-string p2, "Exception when querying contacts."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ba
    move p2, v3

    goto :goto_c8

    .line 156
    :goto_bc
    const-string p2, "Illegal Argument exception when querying contacts."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba

    .line 154
    :goto_c2
    const-string p2, "SQLite exception when querying contacts."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba

    :goto_c8
    if-eqz p3, :cond_d3

    if-eqz v2, :cond_d3

    if-eqz p2, :cond_d3

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_d3
    return p3
.end method

.method public final queryPhoneNumber(Ljava/lang/String;)Z
    .registers 10

    .line 167
    const-string v1, "ContactsQueryHelper"

    const-string v0, "data4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v5, "lookup = ?"

    .line 170
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 171
    :try_start_e
    iget-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_29

    if-nez p1, :cond_30

    .line 175
    :try_start_1d
    const-string p0, "Cursor is null when querying contact phone number."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2d

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    .line 186
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    return p0

    :catch_29
    move-exception v0

    move-object p0, v0

    goto :goto_53

    :cond_2c
    return p0

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto :goto_47

    .line 178
    :cond_30
    :goto_30
    :try_start_30
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_30

    .line 183
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_2d

    goto :goto_30

    .line 186
    :cond_43
    :try_start_43
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_29

    goto :goto_58

    :goto_47
    if-eqz p1, :cond_52

    .line 171
    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_52

    :catchall_4d
    move-exception v0

    move-object p1, v0

    :try_start_4f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_29

    .line 187
    :goto_53
    const-string p1, "Exception when querying contact phone number."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    const/4 p0, 0x1

    return p0
.end method

.method public querySince(J)Z
    .registers 8

    .line 69
    const-string v0, "has_phone_number"

    const-string v1, "contact_last_updated_timestamp"

    const-string v2, "_id"

    const-string v3, "lookup"

    const-string/jumbo v4, "starred"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "contact_last_updated_timestamp > ?"

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final queryWithEmail(Ljava/lang/String;)Z
    .registers 3

    .line 102
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 103
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final queryWithPhoneNumber(Ljava/lang/String;)Z
    .registers 3

    .line 96
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final queryWithUri(Landroid/net/Uri;)Z
    .registers 6

    .line 108
    const-string/jumbo v0, "starred"

    const-string v1, "has_phone_number"

    const-string v2, "_id"

    const-string v3, "lookup"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
