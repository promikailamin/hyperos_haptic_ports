.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Ljava/lang/String;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fputmDefaultPhoneApp(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/android/server/notification/NotificationComparator$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 48
    return-void
.end method

.method private isCallCategory(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 206
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 207
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationComparator;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 206
    :goto_19
    return v0
.end method

.method private isCallStyle(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 211
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 216
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 217
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 218
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 220
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_19
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 149
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 156
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    .line 157
    return v1

    .line 159
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCallStyle(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 160
    return v2

    .line 162
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 163
    return v1

    .line 165
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCallCategory(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    move v1, v2

    :cond_25
    return v1
.end method

.method private isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 202
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    return v0
.end method

.method private isOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 197
    const/16 v0, 0x40

    .line 198
    .local v0, "ongoingFlags":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .registers 28
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    .line 53
    .local v2, "leftImportance":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v3

    .line 54
    .local v3, "rightImportance":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-lt v2, v6, :cond_13

    move v7, v4

    goto :goto_14

    :cond_13
    move v7, v5

    .line 55
    .local v7, "isLeftHighImportance":Z
    :goto_14
    if-lt v3, v6, :cond_17

    goto :goto_18

    :cond_17
    move v4, v5

    .line 57
    .local v4, "isRightHighImportance":Z
    :goto_18
    if-eq v7, v4, :cond_21

    .line 59
    invoke-static {v7, v4}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    return v5

    .line 64
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3c

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    return v5

    .line 69
    :cond_3c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    .line 70
    .local v5, "leftImportantColorized":Z
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    .line 72
    .local v6, "rightImportantColorized":Z
    if-eq v5, v6, :cond_4d

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    .line 77
    :cond_4d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 78
    .local v8, "leftImportantOngoing":Z
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 80
    .local v9, "rightImportantOngoing":Z
    if-eq v8, v9, :cond_5e

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v10

    mul-int/lit8 v10, v10, -0x1

    return v10

    .line 85
    :cond_5e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    .line 86
    .local v10, "leftMessaging":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v11

    .line 87
    .local v11, "rightMessaging":Z
    if-eq v10, v11, :cond_6f

    .line 88
    invoke-static {v10, v11}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v12

    mul-int/lit8 v12, v12, -0x1

    return v12

    .line 92
    :cond_6f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v12

    .line 93
    .local v12, "leftPeople":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v13

    .line 94
    .local v13, "rightPeople":Z
    nop

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    .line 97
    .local v14, "contactAffinityComparison":I
    if-eqz v12, :cond_8d

    if-eqz v13, :cond_8d

    .line 99
    if-eqz v14, :cond_96

    .line 100
    mul-int/lit8 v15, v14, -0x1

    return v15

    .line 102
    :cond_8d
    if-eq v12, v13, :cond_96

    .line 104
    invoke-static {v12, v13}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v15

    mul-int/lit8 v15, v15, -0x1

    return v15

    .line 107
    :cond_96
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v15

    .line 108
    .local v15, "leftSystemMax":Z
    move/from16 v16, v4

    .end local v4    # "isRightHighImportance":Z
    .local v16, "isRightHighImportance":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    .line 109
    .local v4, "rightSystemMax":Z
    if-eq v15, v4, :cond_a9

    .line 110
    invoke-static {v15, v4}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v17

    mul-int/lit8 v17, v17, -0x1

    return v17

    .line 113
    :cond_a9
    if-eq v2, v3, :cond_b2

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v17

    mul-int/lit8 v17, v17, -0x1

    return v17

    .line 119
    :cond_b2
    if-eqz v14, :cond_b7

    .line 120
    mul-int/lit8 v17, v14, -0x1

    return v17

    .line 124
    :cond_b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    .line 125
    .local v0, "leftPackagePriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    .line 126
    .local v1, "rightPackagePriority":I
    if-eq v0, v1, :cond_c8

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v17

    mul-int/lit8 v17, v17, -0x1

    return v17

    .line 131
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    move/from16 v18, v0

    .end local v0    # "leftPackagePriority":I
    .local v18, "leftPackagePriority":I
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 132
    .local v0, "leftPriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    move/from16 v19, v1

    .end local v1    # "rightPackagePriority":I
    .local v19, "rightPackagePriority":I
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    .line 133
    .local v1, "rightPriority":I
    if-eq v0, v1, :cond_e9

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v17

    mul-int/lit8 v17, v17, -0x1

    return v17

    .line 138
    :cond_e9
    move/from16 v17, v0

    .end local v0    # "leftPriority":I
    .local v17, "leftPriority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    .line 139
    .local v0, "leftInterruptive":Z
    move/from16 v20, v1

    .end local v1    # "rightPriority":I
    .local v20, "rightPriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v1

    .line 140
    .local v1, "rightInterruptive":Z
    if-eq v0, v1, :cond_fe

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    return v21

    .line 145
    :cond_fe
    move/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "leftInterruptive":Z
    .end local v1    # "rightInterruptive":Z
    .local v21, "leftInterruptive":Z
    .local v22, "rightInterruptive":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "leftImportance":I
    .end local v3    # "rightImportance":I
    .local v23, "leftImportance":I
    .local v24, "rightImportance":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 36
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method

.method protected isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v0

    return v0
.end method

.method protected isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 169
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    .line 170
    return v1

    .line 172
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_14
    return v1
.end method

.method protected isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 183
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_9

    .line 184
    return v1

    .line 186
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    .line 188
    return v3

    .line 190
    :cond_1b
    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 191
    return v3

    .line 193
    :cond_24
    return v1
.end method
