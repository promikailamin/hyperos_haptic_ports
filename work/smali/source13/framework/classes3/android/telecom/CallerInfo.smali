.class public Landroid/telecom/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist AI_CALL_PUSH_CONTENT:Ljava/lang/String; = "aiCallPushContent"

.field public static final blacklist AI_CALL_PUSH_CONTENT_INTENT:Ljava/lang/String; = "aiCallPushContentIntent"

.field public static final blacklist AI_CALL_PUSH_NUMBER:Ljava/lang/String; = "aiCallPushNumber"

.field public static final blacklist AI_CALL_PUSH_TITLE:Ljava/lang/String; = "aiCallPushTitle"

.field private static final blacklist TAG:Ljava/lang/String; = "CallerInfo"

.field public static final blacklist USER_TYPE_CURRENT:J = 0x0L

.field public static final blacklist USER_TYPE_WORK:J = 0x1L

.field private static final blacklist VDBG:Z


# instance fields
.field public blacklist cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public blacklist cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public blacklist cnapName:Ljava/lang/String;

.field private blacklist contactDisplayPhotoUri:Landroid/net/Uri;

.field public blacklist contactExists:Z

.field private blacklist contactIdOrZero:J

.field public blacklist contactRefUri:Landroid/net/Uri;

.field public blacklist contactRingtoneUri:Landroid/net/Uri;

.field public blacklist geoDescription:Ljava/lang/String;

.field public blacklist isCachedPhotoCurrent:Z

.field public blacklist lookupKey:Ljava/lang/String;

.field private blacklist mAiAutoAnswerCallContent:Ljava/lang/String;

.field private blacklist mAiAutoAnswerCallPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mAiAutoAnswerCallTitle:Ljava/lang/String;

.field private blacklist mIsAiAutoAnswerCall:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsVoiceMail:Z

.field private blacklist name:Ljava/lang/String;

.field public blacklist namePresentation:I

.field public blacklist needUpdate:Z

.field public blacklist normalizedNumber:Ljava/lang/String;

.field public greylist numberLabel:Ljava/lang/String;

.field public blacklist numberPresentation:I

.field public greylist numberType:I

.field public blacklist phoneLabel:Ljava/lang/String;

.field private blacklist phoneNumber:Ljava/lang/String;

.field public blacklist photoResource:I

.field public blacklist preferredPhoneAccountComponent:Landroid/content/ComponentName;

.field public blacklist preferredPhoneAccountId:Ljava/lang/String;

.field public blacklist shouldSendToVoicemail:Z

.field public blacklist userType:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    sput-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    .line 210
    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/CallerInfo;->userType:J

    .line 212
    return-void
.end method

.method static blacklist doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Landroid/telecom/CallerInfo;

    .line 514
    iget-boolean v0, p2, Landroid/telecom/CallerInfo;->contactExists:Z

    if-nez v0, :cond_22

    .line 515
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 516
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 518
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 520
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 518
    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object p2

    .line 523
    .end local v0    # "username":Ljava/lang/String;
    :cond_22
    return-object p2
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "info":Landroid/telecom/CallerInfo;
    invoke-static {p0}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v7

    .line 372
    .local v7, "cr":Landroid/content/ContentResolver;
    if-eqz v7, :cond_22

    .line 374
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 375
    move-object v1, v7

    move-object v2, p1

    :try_start_d
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 374
    invoke-static {p0, p1, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_15} :catch_17

    move-object v0, v1

    .line 378
    goto :goto_22

    .line 376
    :catch_17
    move-exception v1

    .line 377
    .local v1, "re":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CallerInfo"

    const-string v4, "Error getting caller info."

    invoke-static {v3, v1, v4, v2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_22
    :goto_22
    return-object v0
.end method

.method public static blacklist getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 225
    const/16 v0, 0xc

    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_uri(ILandroid/net/Uri;)I

    .line 226
    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    .line 227
    .local v0, "info":Landroid/telecom/CallerInfo;
    const/4 v1, 0x0

    iput v1, v0, Landroid/telecom/CallerInfo;->photoResource:I

    .line 228
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 229
    iput v1, v0, Landroid/telecom/CallerInfo;->numberType:I

    .line 230
    iput-object v2, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 231
    iput-object v2, v0, Landroid/telecom/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->isCachedPhotoCurrent:Z

    .line 233
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 234
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    .line 236
    sget-boolean v5, Landroid/telecom/CallerInfo;->VDBG:Z

    const-string v6, "CallerInfo"

    if-eqz v5, :cond_2b

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "getCallerInfo() based on cursor..."

    invoke-static {v6, v8, v7}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_2b
    if-eqz p2, :cond_17e

    .line 239
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_17a

    .line 247
    const-string v7, "display_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 248
    .local v7, "columnIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_42

    .line 249
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 253
    :cond_42
    const-string/jumbo v9, "number"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 254
    if-eq v7, v8, :cond_51

    .line 255
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 259
    :cond_51
    const-string/jumbo v9, "normalized_number"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 260
    if-eq v7, v8, :cond_60

    .line 261
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 265
    :cond_60
    const-string/jumbo v9, "label"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 266
    if-eq v7, v8, :cond_8a

    .line 267
    const-string/jumbo v9, "type"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 268
    .local v9, "typeColumnIndex":I
    if-eq v9, v8, :cond_8a

    .line 269
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Landroid/telecom/CallerInfo;->numberType:I

    .line 270
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 271
    iget v11, v0, Landroid/telecom/CallerInfo;->numberType:I

    invoke-static {p0, v11, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 273
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 278
    .end local v9    # "typeColumnIndex":I
    :cond_8a
    invoke-static {p1, p2}, Landroid/telecom/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v7

    .line 279
    if-eq v7, v8, :cond_c7

    .line 280
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 281
    .local v9, "contactId":J
    cmp-long v3, v9, v3

    if-eqz v3, :cond_bc

    invoke-static {v9, v10}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-nez v3, :cond_bc

    .line 282
    iput-wide v9, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    .line 283
    if-eqz v5, :cond_bc

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.contactIdOrZero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_bc
    invoke-static {v9, v10}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 288
    const-wide/16 v3, 0x1

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    .line 290
    .end local v9    # "contactId":J
    :cond_c6
    goto :goto_df

    .line 292
    :cond_c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find contact_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :goto_df
    const-string/jumbo v3, "lookup"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 300
    .end local v7    # "columnIndex":I
    .local v3, "columnIndex":I
    if-eq v3, v8, :cond_ee

    .line 301
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->lookupKey:Ljava/lang/String;

    .line 305
    :cond_ee
    const-string/jumbo v4, "photo_uri"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 306
    if-eq v3, v8, :cond_108

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_108

    .line 307
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_10a

    .line 309
    :cond_108
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 312
    :goto_10a
    const-string/jumbo v4, "preferred_phone_account_component_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 313
    if-eq v3, v8, :cond_124

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_124

    .line 314
    nop

    .line 315
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountComponent:Landroid/content/ComponentName;

    .line 318
    :cond_124
    const-string/jumbo v4, "preferred_phone_account_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 319
    if-eq v3, v8, :cond_139

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_139

    .line 320
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountId:Ljava/lang/String;

    .line 329
    :cond_139
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 330
    if-eq v3, v8, :cond_161

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_161

    .line 331
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 332
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_163

    .line 334
    :cond_156
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_163

    .line 337
    :cond_161
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 342
    :goto_163
    const-string/jumbo v2, "send_to_voicemail"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 343
    .end local v3    # "columnIndex":I
    .local v2, "columnIndex":I
    const/4 v3, 0x1

    if-eq v2, v8, :cond_175

    .line 344
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_175

    move v4, v3

    goto :goto_176

    :cond_175
    move v4, v1

    :goto_176
    iput-boolean v4, v0, Landroid/telecom/CallerInfo;->shouldSendToVoicemail:Z

    .line 345
    iput-boolean v3, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 347
    .end local v2    # "columnIndex":I
    :cond_17a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 348
    const/4 p2, 0x0

    .line 351
    :cond_17e
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->needUpdate:Z

    .line 352
    iget-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 353
    iput-object p1, v0, Landroid/telecom/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 355
    return-object v0
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/CallerInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 397
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallerInfo"

    const-string v2, "getCallerInfo() based on number..."

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 400
    .local v0, "subId":I
    invoke-static {p0, p1, v0}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 421
    return-object v1

    .line 427
    :cond_2b
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 428
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 429
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    .line 430
    :cond_43
    invoke-static {v1, p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 431
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    .line 434
    :cond_53
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 435
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 437
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object v2

    .line 438
    .local v2, "info":Landroid/telecom/CallerInfo;
    invoke-static {p0, p1, v2}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v2

    .line 442
    iget-object v3, v2, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 443
    iput-object p1, v2, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 446
    :cond_6f
    return-object v2
.end method

.method private static blacklist getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .registers 9
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 677
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v1, 0x0

    const-string v2, "CallerInfo"

    if-eqz v0, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    :cond_25
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 685
    .local v4, "columnName":Ljava/lang/String;
    const-string v5, "content://com.android.contacts/data/phones"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 688
    if-eqz v0, :cond_3b

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v2, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    :cond_3b
    const-string v4, "contact_id"

    goto :goto_84

    .line 690
    :cond_3e
    const-string v5, "content://com.android.contacts/data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 693
    if-eqz v0, :cond_4f

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v2, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :cond_4f
    const-string v4, "contact_id"

    goto :goto_84

    .line 696
    :cond_52
    const-string v5, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 700
    if-eqz v0, :cond_63

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v2, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    :cond_63
    const-string v4, "_id"

    goto :goto_84

    .line 703
    :cond_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected prefix for contactRef \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    :goto_84
    if-eqz v4, :cond_8b

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_8c

    :cond_8b
    const/4 v5, -0x1

    .line 706
    .local v5, "columnIndex":I
    :goto_8c
    if-eqz v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> Using column \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' (columnIndex = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") for person_id lookup..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    :cond_b6
    return v5
.end method

.method protected static blacklist getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 793
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 775
    .local v1, "detector":Landroid/location/CountryDetector;
    const/4 v2, 0x0

    const-string v3, "CallerInfo"

    if-eqz v1, :cond_25

    .line 776
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v4

    .line 777
    .local v4, "country":Landroid/location/Country;
    if-eqz v4, :cond_19

    .line 778
    invoke-virtual {v4}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 780
    :cond_19
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v5, v7, v6}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    .end local v4    # "country":Landroid/location/Country;
    :cond_25
    :goto_25
    if-nez v0, :cond_43

    .line 784
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_43
    return-object v0
.end method

.method public static blacklist getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 736
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v1, 0x0

    const-string v2, "CallerInfo"

    if-eqz v0, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGeoDescription(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    :cond_25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 739
    return-object v4

    .line 742
    :cond_2d
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 743
    .local v3, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v5

    .line 745
    .local v5, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 746
    .local v6, "locale":Ljava/util/Locale;
    invoke-static {p0, v6}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 747
    .local v7, "countryIso":Ljava/lang/String;
    const/4 v8, 0x0

    .line 749
    .local v8, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string v9, "\'"

    if-eqz v0, :cond_71

    :try_start_48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for countryIso \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :cond_71
    invoke-virtual {v3, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    move-object v8, v10

    .line 752
    if-eqz v0, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- parsed number: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v10}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_90
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_48 .. :try_end_90} :catch_91

    .line 756
    :cond_90
    goto :goto_b2

    .line 753
    :catch_91
    move-exception v0

    .line 754
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 755
    invoke-static {p1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    .line 754
    invoke-static {v2, v10, v11}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_b2
    if-eqz v8, :cond_d9

    .line 759
    invoke-virtual {v5, v8, v6}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "description":Ljava/lang/String;
    sget-boolean v4, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_d8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got description: \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :cond_d8
    return-object v0

    .line 763
    .end local v0    # "description":Ljava/lang/String;
    :cond_d9
    return-object v4
.end method

.method private static blacklist normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 627
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_b

    .line 630
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 628
    :cond_b
    :goto_b
    return-object p0
.end method


# virtual methods
.method public blacklist SetContactDisplayPhotoUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "photoUri"    # Landroid/net/Uri;

    .line 499
    iput-object p1, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 500
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 799
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAiAutoAnswerCallContent()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/telecom/CallerInfo;->mAiAutoAnswerCallContent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAiAutoAnswerCallPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 562
    iget-object v0, p0, Landroid/telecom/CallerInfo;->mAiAutoAnswerCallPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getAiAutoAnswerCallTitle()Ljava/lang/String;
    .registers 2

    .line 554
    iget-object v0, p0, Landroid/telecom/CallerInfo;->mAiAutoAnswerCallTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContactDisplayPhotoUri()Landroid/net/Uri;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getContactId()J
    .registers 3

    .line 484
    iget-wide v0, p0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAiAutoAnswerCall()Z
    .registers 2

    .line 550
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsAiAutoAnswerCall:Z

    return v0
.end method

.method public blacklist isEmergencyNumber()Z
    .registers 2

    .line 533
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public blacklist isVoiceMailNumber()Z
    .registers 2

    .line 541
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method blacklist markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 579
    const v0, 0x104037f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 581
    const v0, 0x10806b8

    iput v0, p0, Landroid/telecom/CallerInfo;->photoResource:I

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    .line 583
    return-object p0
.end method

.method blacklist markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    .line 591
    :try_start_3
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 592
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_15} :catch_16

    .line 601
    goto :goto_21

    .line 594
    :catch_16
    move-exception v0

    .line 600
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v0, v3, v1}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_21
    return-object p0
.end method

.method public blacklist setAiAutoAnswerCall(Z)V
    .registers 2
    .param p1, "aiAutoAnswerCall"    # Z

    .line 610
    iput-boolean p1, p0, Landroid/telecom/CallerInfo;->mIsAiAutoAnswerCall:Z

    .line 611
    return-void
.end method

.method public blacklist setAiAutoAnswerCallContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "aiAutoAnswerCallContent"    # Ljava/lang/String;

    .line 618
    iput-object p1, p0, Landroid/telecom/CallerInfo;->mAiAutoAnswerCallContent:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public blacklist setAiAutoAnswerCallPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "mAiAutoAnswerCallPendingIntent"    # Landroid/app/PendingIntent;

    .line 622
    iput-object p1, p0, Landroid/telecom/CallerInfo;->mAiAutoAnswerCallPendingIntent:Landroid/app/PendingIntent;

    .line 623
    return-void
.end method

.method public blacklist setAiAutoAnswerCallTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "aiAutoAnswerCallTitle"    # Ljava/lang/String;

    .line 614
    iput-object p1, p0, Landroid/telecom/CallerInfo;->mAiAutoAnswerCallTitle:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 464
    iput-object p1, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public blacklist setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 477
    iput-object p1, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 810
    const/4 v0, 0x0

    .line 841
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 843
    iget-object v3, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "null"

    const-string/jumbo v5, "non-null"

    if-nez v3, :cond_3b

    move-object v3, v4

    goto :goto_3c

    :cond_3b
    move-object v3, v5

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 844
    iget-object v3, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_58

    goto :goto_59

    :cond_58
    move-object v4, v5

    :goto_59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mIsAiAutoAnswerCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telecom/CallerInfo;->mIsAiAutoAnswerCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    return-object v1
.end method

.method public blacklist updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .line 725
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 726
    .local v0, "number":Ljava/lang/String;
    :goto_c
    invoke-static {p1, v0}, Landroid/telecom/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 727
    return-void
.end method
