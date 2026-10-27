.class Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "ContactsQueryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsQueryHelper"


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mIsStarred:Z

.field private mLastUpdatedTimestamp:J

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 116
    move-object v1, p0

    const/4 v2, 0x0

    .line 117
    .local v2, "lookupKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 118
    .local v3, "hasPhoneNumber":Z
    const/4 v4, 0x0

    .line 119
    .local v4, "found":Z
    :try_start_4
    iget-object v0, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_17} :catch_90

    move-object v5, v0

    .line 121
    .local v5, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    if-nez v5, :cond_29

    .line 122
    :try_start_1b
    const-string v6, "ContactsQueryHelper"

    const-string v7, "Cursor is null when querying contact."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_82

    .line 123
    nop

    .line 153
    if-eqz v5, :cond_28

    :try_start_25
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_28} :catch_90

    .line 123
    :cond_28
    return v0

    .line 125
    :cond_29
    :goto_29
    :try_start_29
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 127
    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, "idIndex":I
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 131
    .local v7, "contactId":J
    const-string v9, "lookup"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 132
    .local v9, "lookupKeyIndex":I
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 134
    invoke-static {v7, v8, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 137
    const-string/jumbo v10, "starred"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 138
    .local v10, "starredIndex":I
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_5a

    move v11, v12

    goto :goto_5b

    :cond_5a
    move v11, v0

    :goto_5b
    iput-boolean v11, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 141
    const-string v11, "has_phone_number"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 142
    .local v11, "hasPhoneNumIndex":I
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_6a

    goto :goto_6b

    :cond_6a
    move v12, v0

    :goto_6b
    move v3, v12

    .line 145
    const-string v12, "contact_last_updated_timestamp"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 147
    .local v12, "lastUpdatedTimestampIndex":I
    if-ltz v12, :cond_7a

    .line 148
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_7a
    .catchall {:try_start_29 .. :try_end_7a} :catchall_82

    .line 151
    :cond_7a
    const/4 v4, 0x1

    .line 152
    .end local v6    # "idIndex":I
    .end local v9    # "lookupKeyIndex":I
    .end local v10    # "starredIndex":I
    .end local v11    # "hasPhoneNumIndex":I
    .end local v12    # "lastUpdatedTimestampIndex":I
    goto :goto_29

    .line 153
    .end local v7    # "contactId":J
    :cond_7c
    if-eqz v5, :cond_81

    :try_start_7e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7e .. :try_end_81} :catch_90

    .line 155
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_81
    goto :goto_96

    .line 119
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :catchall_82
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_8f

    :try_start_86
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8f

    :catchall_8a
    move-exception v0

    move-object v7, v0

    :try_start_8c
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "lookupKey":Ljava/lang/String;
    .end local v3    # "hasPhoneNumber":Z
    .end local v4    # "found":Z
    .end local p0    # "this":Lcom/android/server/people/data/ContactsQueryHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    :cond_8f
    :goto_8f
    throw v6
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8c .. :try_end_90} :catch_90

    .line 153
    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "lookupKey":Ljava/lang/String;
    .restart local v3    # "hasPhoneNumber":Z
    .restart local v4    # "found":Z
    .restart local p0    # "this":Lcom/android/server/people/data/ContactsQueryHelper;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :catch_90
    move-exception v0

    .line 154
    .local v0, "exception":Landroid/database/sqlite/SQLiteException;
    const-string v5, "SQLite exception when querying contacts."

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "exception":Landroid/database/sqlite/SQLiteException;
    :goto_96
    if-eqz v4, :cond_a1

    if-eqz v2, :cond_a1

    if-eqz v3, :cond_a1

    .line 157
    invoke-direct {p0, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 159
    :cond_a1
    return v4
.end method

.method private queryPhoneNumber(Ljava/lang/String;)Z
    .registers 12
    .param p1, "lookupKey"    # Ljava/lang/String;

    .line 163
    const-string v0, "data4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "projection":[Ljava/lang/String;
    const-string v7, "lookup = ?"

    .line 166
    .local v7, "selection":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    .line 167
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 170
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_2c

    .line 171
    :try_start_1e
    const-string v0, "ContactsQueryHelper"

    const-string v2, "Cursor is null when querying contact phone number."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_45

    .line 172
    nop

    .line 182
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2b
    return v9

    .line 174
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 176
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, "phoneNumIdx":I
    if-ltz v2, :cond_3e

    .line 179
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_45

    .line 181
    .end local v2    # "phoneNumIdx":I
    :cond_3e
    goto :goto_2c

    .line 182
    :cond_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 183
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_44
    return v8

    .line 167
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_45
    move-exception v0

    if-eqz v1, :cond_50

    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw v0
.end method

.method private queryWithEmail(Ljava/lang/String;)Z
    .registers 4
    .param p1, "email"    # Ljava/lang/String;

    .line 102
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 103
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, "emailUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private queryWithPhoneNumber(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 96
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private queryWithUri(Landroid/net/Uri;)Z
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 108
    const-string v0, "_id"

    const-string v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string v3, "has_phone_number"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method getContactUri()Landroid/net/Uri;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method getLastUpdatedTimestamp()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method isStarred()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    return v0
.end method

.method query(Ljava/lang/String;)Z
    .registers 6
    .param p1, "contactUri"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 53
    return v1

    .line 55
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 58
    :cond_22
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mailto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithEmail(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 60
    :cond_38
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 61
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 63
    :cond_49
    return v1
.end method

.method querySince(J)Z
    .registers 8
    .param p1, "sinceTime"    # J

    .line 69
    const-string v0, "_id"

    const-string v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string v3, "has_phone_number"

    const-string v4, "contact_last_updated_timestamp"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "contact_last_updated_timestamp > ?"

    .line 73
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 74
    .local v2, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method
