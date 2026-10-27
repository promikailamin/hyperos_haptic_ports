.class public Lmiui/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CallLog$Calls;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lmiui/provider/CallLog;->charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/CallLog;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z
    .param p4, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "addCall(): addForAllUsers=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallLog"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    .line 154
    .local v3, "result":Landroid/net/Uri;
    const-string v6, "user"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 155
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {v6}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v7

    if-nez v7, :cond_31

    .line 156
    sget-object v7, Lmiui/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .end local p1    # "insertUri":Landroid/net/Uri;
    .local v7, "insertUri":Landroid/net/Uri;
    goto :goto_33

    .line 161
    .end local v7    # "insertUri":Landroid/net/Uri;
    .restart local p1    # "insertUri":Landroid/net/Uri;
    :cond_31
    move-object/from16 v7, p1

    .end local p1    # "insertUri":Landroid/net/Uri;
    .restart local v7    # "insertUri":Landroid/net/Uri;
    :goto_33
    invoke-virtual {v6}, Landroid/os/UserManager;->getUserHandle()I

    move-result v8

    .line 162
    .local v8, "currentUserId":I
    if-eqz p3, :cond_86

    .line 164
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v0, v9, v7, v1}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 165
    .local v9, "uriForSystem":Landroid/net/Uri;
    if-eqz v9, :cond_84

    .line 166
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    const-string v11, "call_log_shadow"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    goto :goto_84

    .line 172
    :cond_4e
    if-nez v8, :cond_51

    .line 173
    move-object v3, v9

    .line 177
    :cond_51
    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 178
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 179
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5a
    if-ge v12, v11, :cond_83

    .line 180
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 181
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    .line 182
    .local v14, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 183
    .local v15, "userId":I
    invoke-virtual {v14}, Landroid/os/UserHandle;->isSystem()Z

    move-result v16

    if-eqz v16, :cond_71

    .line 185
    goto :goto_80

    .line 188
    :cond_71
    invoke-static {v6, v13}, Lmiui/provider/CallLog;->canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z

    move-result v16

    if-nez v16, :cond_78

    .line 190
    goto :goto_80

    .line 193
    :cond_78
    invoke-static {v0, v14, v7, v1}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 194
    .local v16, "uri":Landroid/net/Uri;
    if-ne v15, v8, :cond_80

    .line 195
    move-object/from16 v3, v16

    .line 179
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "userHandle":Landroid/os/UserHandle;
    .end local v15    # "userId":I
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_80
    :goto_80
    add-int/lit8 v12, v12, 0x1

    goto :goto_5a

    .line 198
    .end local v9    # "uriForSystem":Landroid/net/Uri;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "count":I
    .end local v12    # "i":I
    :cond_83
    goto :goto_94

    .line 170
    .restart local v9    # "uriForSystem":Landroid/net/Uri;
    :cond_84
    :goto_84
    const/4 v2, 0x0

    return-object v2

    .line 199
    .end local v9    # "uriForSystem":Landroid/net/Uri;
    :cond_86
    if-eqz p4, :cond_8b

    .line 200
    move-object/from16 v9, p4

    goto :goto_8f

    .line 201
    :cond_8b
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    :goto_8f
    nop

    .line 202
    .local v9, "targetUserHandle":Landroid/os/UserHandle;
    invoke-static {v0, v9, v7, v1}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 205
    .end local v9    # "targetUserHandle":Landroid/os/UserHandle;
    :goto_94
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    const-string v5, "addCall(): result=%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v3
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 41
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p18, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    .line 241
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v0 .. v21}, Lmiui/provider/CallLog;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;
    .registers 51
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p18, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p19, "callBlockReason"    # I
    .param p20, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p21, "callScreeningComponentName"    # Ljava/lang/String;

    .line 254
    move-object/from16 v1, p18

    const/4 v2, 0x0

    .line 256
    .local v2, "tm":Landroid/telecom/TelecomManager;
    :try_start_3
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v2, v0

    .line 258
    goto :goto_a

    .line 257
    :catch_9
    move-exception v0

    .line 260
    :goto_a
    const/4 v0, 0x0

    .line 261
    .local v0, "accountAddress":Ljava/lang/String;
    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 262
    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 263
    .local v3, "account":Landroid/telecom/PhoneAccount;
    if-eqz v3, :cond_1f

    .line 264
    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v4

    .line 265
    .local v4, "address":Landroid/net/Uri;
    if-eqz v4, :cond_1f

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 272
    .end local v3    # "account":Landroid/telecom/PhoneAccount;
    .end local v4    # "address":Landroid/net/Uri;
    :cond_1f
    const/4 v3, 0x0

    .line 273
    .local v3, "accountComponentString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 274
    .local v4, "accountId":Ljava/lang/String;
    if-eqz v1, :cond_2f

    .line 275
    invoke-virtual/range {p18 .. p18}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual/range {p18 .. p18}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    .line 278
    :cond_2f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move/from16 v21, p16

    move-object/from16 v22, p17

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v0

    move/from16 v26, p19

    move-object/from16 v27, p20

    move-object/from16 v28, p21

    invoke-static/range {v5 .. v28}, Lmiui/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 40
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v18, p17

    .line 229
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v0 .. v21}, Lmiui/provider/CallLog;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z
    .registers 8
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "canInsert":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    .line 286
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 287
    .local v3, "userHandle":Landroid/os/UserHandle;
    const/16 v4, 0x3e7

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_27

    .line 288
    invoke-virtual {p0, v3}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 289
    const-string v4, "no_outgoing_calls"

    invoke-virtual {p0, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 290
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_27

    move v4, v1

    goto :goto_28

    :cond_27
    move v4, v2

    :goto_28
    move v0, v4

    .line 292
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_29
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "canInsertCallLog(): user=%s, canInsert=%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v0
.end method

.method private static blacklist charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 35
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private static blacklist insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "insertUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 210
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 212
    .local v0, "uri":Landroid/net/Uri;
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v1

    .line 213
    :catch_11
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CallLog"

    const-string v3, "Failed to insert calllog"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v2, 0x0

    return-object v2
.end method
