.class public Landroid/provider/SettingsHistory;
.super Ljava/lang/Object;
.source "SettingsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SettingsHistory$Setting;,
        Landroid/provider/SettingsHistory$Inner;
    }
.end annotation


# static fields
.field private static final blacklist SETTINGS_HISTORY_COUNT_FOR_HIGH_RAM_DEVICE:I = 0x1e

.field private static final blacklist SETTINGS_HISTORY_COUNT_FOR_LOW_RAM_DEVICE:I = 0xa

.field public static final whitelist TAG:Ljava/lang/String; = "SettingsHistory"


# instance fields
.field private final blacklist mDateFormat:Ljava/text/SimpleDateFormat;

.field private blacklist mHistoryIndex:I

.field private blacklist mSettings:[Landroid/provider/SettingsHistory$Setting;

.field private final blacklist mSettingsHistoryCount:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15
    const/16 v0, 0xa

    goto :goto_e

    :cond_c
    const/16 v0, 0x1e

    :goto_e
    iput v0, p0, Landroid/provider/SettingsHistory;->mSettingsHistoryCount:I

    .line 17
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/provider/SettingsHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    .line 22
    new-array v0, v0, [Landroid/provider/SettingsHistory$Setting;

    iput-object v0, p0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    .line 23
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/provider/SettingsHistory-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/provider/SettingsHistory;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/provider/SettingsHistory;
    .registers 1

    .line 26
    invoke-static {}, Landroid/provider/SettingsHistory$Inner;->-$$Nest$sfgetsettingsHistory()Landroid/provider/SettingsHistory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "History of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget v1, p0, Landroid/provider/SettingsHistory;->mSettingsHistoryCount:I

    if-ge v0, v1, :cond_8e

    .line 76
    iget v2, p0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    add-int/2addr v2, v0

    rem-int/2addr v2, v1

    .line 77
    .local v2, "index":I
    iget-object v1, p0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    aget-object v1, v1, v2

    .line 78
    .local v1, "setting":Landroid/provider/SettingsHistory$Setting;
    if-nez v1, :cond_26

    .line 79
    goto :goto_8b

    .line 82
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/provider/SettingsHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/sql/Date;

    invoke-static {v1}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fgettimesTamp(Landroid/provider/SettingsHistory$Setting;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fgetuserId(Landroid/provider/SettingsHistory$Setting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fgetname(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fgetvalue(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fgetdefaultValue(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fgetpackageName(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .end local v1    # "setting":Landroid/provider/SettingsHistory$Setting;
    .end local v2    # "index":I
    :goto_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 89
    .end local v0    # "i":I
    :cond_8e
    return-void
.end method

.method public whitelist recordSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/provider/SettingsHistory$Setting;
    .registers 23
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_49

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v3, v1, v2}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fputtimesTamp(Landroid/provider/SettingsHistory$Setting;J)V

    .line 57
    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v1, v1, v2

    move/from16 v11, p1

    invoke-static {v1, v11}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fputuserId(Landroid/provider/SettingsHistory$Setting;I)V

    .line 58
    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v1, v1, v2

    move-object/from16 v12, p2

    invoke-static {v1, v12}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fputname(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V

    .line 59
    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v1, v1, v2

    move-object/from16 v13, p3

    invoke-static {v1, v13}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fputvalue(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V

    .line 60
    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v1, v1, v2

    move-object/from16 v14, p4

    invoke-static {v1, v14}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fputdefaultValue(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V

    .line 61
    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v1, v1, v2

    move-object/from16 v15, p5

    invoke-static {v1, v15}, Landroid/provider/SettingsHistory$Setting;->-$$Nest$fputpackageName(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V

    goto :goto_6a

    .line 63
    :cond_49
    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    new-instance v16, Landroid/provider/SettingsHistory$Setting;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v9, ""

    move-object/from16 v3, v16

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Landroid/provider/SettingsHistory$Setting;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v16, v1, v2

    .line 66
    :goto_6a
    iget-object v1, v0, Landroid/provider/SettingsHistory;->mSettings:[Landroid/provider/SettingsHistory$Setting;

    iget v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    aget-object v1, v1, v2

    .line 67
    .local v1, "setting":Landroid/provider/SettingsHistory$Setting;
    add-int/lit8 v2, v2, 0x1

    iget v3, v0, Landroid/provider/SettingsHistory;->mSettingsHistoryCount:I

    rem-int/2addr v2, v3

    iput v2, v0, Landroid/provider/SettingsHistory;->mHistoryIndex:I

    .line 68
    return-object v1
.end method
