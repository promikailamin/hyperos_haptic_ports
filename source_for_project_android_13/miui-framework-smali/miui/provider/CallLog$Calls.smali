.class Lmiui/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Calls"
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final blacklist FORWARDED_CALL:Ljava/lang/String; = "forwarded_call"

.field public static final blacklist MISSED_COUNT:Ljava/lang/String; = "missed_count"

.field public static final blacklist PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final blacklist PHONE_CALL_TYPE:Ljava/lang/String; = "phone_call_type"

.field public static final blacklist SHADOW_AUTHORITY:Ljava/lang/String; = "call_log_shadow"

.field public static final blacklist SHADOW_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;
    .registers 44
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
    .param p18, "accountComponentString"    # Ljava/lang/String;
    .param p19, "accountId"    # Ljava/lang/String;
    .param p20, "accountAddress"    # Ljava/lang/String;
    .param p21, "callBlockReason"    # I
    .param p22, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p23, "callScreeningComponentName"    # Ljava/lang/String;

    .line 60
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 61
    .local v4, "s":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 62
    .local v12, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x1

    .line 64
    .local v0, "numberPresentation":I
    const/4 v13, 0x3

    const/4 v6, 0x2

    if-ne v2, v6, :cond_16

    .line 65
    const/4 v0, 0x2

    move v14, v0

    goto :goto_29

    .line 66
    :cond_16
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1c

    .line 67
    const/4 v0, 0x4

    move v14, v0

    goto :goto_29

    .line 68
    :cond_1c
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27

    if-ne v2, v13, :cond_25

    goto :goto_27

    :cond_25
    move v14, v0

    goto :goto_29

    .line 70
    :cond_27
    :goto_27
    const/4 v0, 0x3

    move v14, v0

    .line 72
    .end local v0    # "numberPresentation":I
    .local v14, "numberPresentation":I
    :goto_29
    const/4 v0, 0x1

    if-eq v14, v0, :cond_37

    .line 73
    const-string v6, ""

    .line 74
    .end local p2    # "number":Ljava/lang/String;
    .local v6, "number":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 75
    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/telecom/CallerInfo;->setName(Ljava/lang/String;)V

    .line 79
    :cond_35
    move-object v15, v6

    goto :goto_39

    .line 72
    .end local v6    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_37
    move-object/from16 v15, p2

    .line 79
    .end local p2    # "number":Ljava/lang/String;
    .local v15, "number":Ljava/lang/String;
    :goto_39
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v11, v6

    .line 81
    .local v11, "values":Landroid/content/ContentValues;
    const-string v6, "number"

    invoke-virtual {v11, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "presentation"

    invoke-virtual {v11, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v11, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "date"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    move/from16 v10, p7

    int-to-long v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "duration"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "new"

    invoke-virtual {v11, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const/4 v0, 0x0

    if-eq v3, v13, :cond_7c

    move/from16 v9, p8

    if-lt v9, v13, :cond_87

    goto :goto_7e

    :cond_7c
    move/from16 v9, p8

    .line 89
    :goto_7e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "is_read"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    :cond_87
    if-eqz v1, :cond_a4

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "name"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v6, v1, Landroid/telecom/CallerInfo;->numberType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "numbertype"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    iget-object v6, v1, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    const-string v8, "numberlabel"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_a4
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "firewalltype"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "forwarded_call"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "simid"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "phone_call_type"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "features"

    invoke-virtual {v11, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v6, "subscription_component_name"

    move-object/from16 v8, p18

    invoke-virtual {v11, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v6, "subscription_id"

    move-object/from16 v10, p19

    invoke-virtual {v11, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "phone_account_address"

    move-object/from16 v10, p20

    invoke-virtual {v11, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v6, v0, :cond_106

    .line 108
    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "block_reason"

    invoke-virtual {v11, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-static/range {p22 .. p22}, Lmiui/provider/CallLog;->-$$Nest$smcharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "call_screening_app_name"

    invoke-virtual {v11, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "call_screening_component_name"

    move-object/from16 v6, p23

    invoke-virtual {v11, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    .line 107
    :cond_106
    move-object/from16 v6, p23

    .line 113
    :goto_108
    if-ne v3, v13, :cond_169

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ",0)"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "selection":Ljava/lang/String;
    sget-object v0, Lmiui/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "date DESC"

    move-object v6, v12

    move-object v7, v0

    move-object/from16 v8, v17

    move-object v9, v13

    move-object/from16 v10, v18

    move-object v1, v11

    .end local v11    # "values":Landroid/content/ContentValues;
    .local v1, "values":Landroid/content/ContentValues;
    move-object/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v7, 0x1

    .line 121
    .local v7, "missedCount":J
    if-eqz v6, :cond_15f

    .line 123
    :goto_143
    :try_start_143
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 124
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_14e
    .catchall {:try_start_143 .. :try_end_14e} :catchall_15a

    .line 125
    .local v9, "type":I
    const/4 v10, 0x3

    if-ne v9, v10, :cond_156

    .line 126
    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    .line 130
    .end local v9    # "type":I
    goto :goto_143

    .line 132
    :cond_156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    goto :goto_15f

    .line 132
    :catchall_15a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    throw v0

    .line 135
    :cond_15f
    :goto_15f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "missed_count"

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_16a

    .line 113
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "missedCount":J
    .end local v13    # "selection":Ljava/lang/String;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_169
    move-object v1, v11

    .line 138
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :goto_16a
    sget-object v0, Lmiui/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p1

    move/from16 v7, p16

    move-object/from16 v8, p17

    invoke-static {v6, v0, v1, v7, v8}, Lmiui/provider/CallLog;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 140
    .local v9, "e":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add call "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v13, v1

    .end local v1    # "values":Landroid/content/ContentValues;
    .local v13, "values":Landroid/content/ContentValues;
    sub-long v1, v9, v4

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T9"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v0
.end method
