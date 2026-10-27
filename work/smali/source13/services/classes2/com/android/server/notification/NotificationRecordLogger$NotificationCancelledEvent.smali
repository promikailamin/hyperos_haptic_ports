.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationCancelledEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CHANNEL_REMOVED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CLEAR_DATA:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 30

    .line 139
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 140
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v3, "NOTIFICATION_CANCEL_CLICK"

    const/4 v4, 0x1

    const/16 v5, 0xa4

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 142
    new-instance v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v5, "NOTIFICATION_CANCEL_USER_OTHER"

    const/4 v6, 0x2

    const/16 v7, 0xa5

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 144
    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v7, "NOTIFICATION_CANCEL_USER_CANCEL_ALL"

    const/4 v8, 0x3

    const/16 v9, 0xa6

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 147
    new-instance v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v9, "NOTIFICATION_CANCEL_ERROR"

    const/4 v10, 0x4

    const/16 v11, 0xa7

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 149
    new-instance v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v11, "NOTIFICATION_CANCEL_PACKAGE_CHANGED"

    const/4 v12, 0x5

    const/16 v13, 0xa8

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 151
    new-instance v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v13, "NOTIFICATION_CANCEL_USER_STOPPED"

    const/4 v14, 0x6

    const/16 v15, 0xa9

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 153
    new-instance v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_PACKAGE_BANNED"

    const/4 v14, 0x7

    const/16 v12, 0xaa

    invoke-direct {v13, v15, v14, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 155
    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_APP_CANCEL"

    const/16 v14, 0x8

    const/16 v10, 0xab

    invoke-direct {v12, v15, v14, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 157
    new-instance v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_APP_CANCEL_ALL"

    const/16 v14, 0x9

    const/16 v8, 0xac

    invoke-direct {v10, v15, v14, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 159
    new-instance v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_LISTENER_CANCEL"

    const/16 v14, 0xa

    const/16 v6, 0xad

    invoke-direct {v8, v15, v14, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 161
    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL"

    const/16 v14, 0xb

    const/16 v4, 0xae

    invoke-direct {v6, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 163
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED"

    const/16 v14, 0xc

    const/16 v2, 0xaf

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 165
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_GROUP_OPTIMIZATION"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0xb0

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 167
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_PACKAGE_SUSPENDED"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0xb1

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 170
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_PROFILE_TURNED_OFF"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0xb2

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 172
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_UNAUTOBUNDLED"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0xb3

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 175
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_CHANNEL_BANNED"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0xb4

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 177
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_SNOOZED"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0xb5

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 179
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_TIMEOUT"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0xb6

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 182
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_USER_PEEK"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0xbe

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 184
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_USER_AOD"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0xbf

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 186
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_USER_SHADE"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0xc0

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 189
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v14, "NOTIFICATION_CANCEL_USER_LOCKSCREEN"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0xc1

    invoke-direct {v2, v14, v15, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 191
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v14, "NOTIFICATION_CANCEL_ASSISTANT"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x38a

    invoke-direct {v4, v14, v15, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 194
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v14, "NOTIFICATION_CANCEL_CHANNEL_REMOVED"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x38b

    invoke-direct {v2, v14, v15, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CHANNEL_REMOVED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 196
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v14, "NOTIFICATION_CANCEL_CLEAR_DATA"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x38c

    invoke-direct {v4, v14, v15, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CLEAR_DATA:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 138
    const/16 v2, 0x1b

    new-array v2, v2, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v4, v2, v0

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    .line 203
    return-void
.end method

.method public static fromCancelReason(II)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 5
    .param p0, "reason"    # I
    .param p1, "surface"    # I

    .line 212
    const/4 v0, -0x1

    if-ne p1, v0, :cond_23

    .line 213
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_a

    .line 216
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 214
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_23
    if-nez p1, :cond_68

    .line 221
    const/4 v0, 0x1

    if-gt v0, p0, :cond_33

    const/16 v0, 0x13

    if-gt p0, v0, :cond_33

    .line 222
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 225
    :cond_33
    const/16 v0, 0x14

    if-ne p0, v0, :cond_3a

    .line 226
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CHANNEL_REMOVED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 228
    :cond_3a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_41

    .line 229
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CLEAR_DATA:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 232
    :cond_41
    const/16 v0, 0x16

    if-ne p0, v0, :cond_48

    .line 233
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 235
    :cond_48
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_4f

    .line 238
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 236
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected cancel reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_68
    const/4 v0, 0x2

    if-eq p0, v0, :cond_8f

    const/16 v0, 0xc

    if-eq p0, v0, :cond_8f

    .line 245
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_76

    .line 248
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 246
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected cancel with surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_8f
    packed-switch p1, :pswitch_data_bc

    .line 258
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_a2

    .line 262
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 256
    :pswitch_99
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 254
    :pswitch_9c
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 252
    :pswitch_9f
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 259
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected surface for user-dismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 138
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 1

    .line 138
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 205
    iget v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    return v0
.end method
