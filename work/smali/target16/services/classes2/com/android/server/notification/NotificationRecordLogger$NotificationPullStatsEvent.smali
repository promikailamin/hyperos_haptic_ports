.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

.field public static final enum NOTIFICATION_BUNDLE_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

.field public static final enum NOTIFICATION_SUMMARIZATION_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
    .registers 2

    .line 414
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->NOTIFICATION_BUNDLE_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->NOTIFICATION_SUMMARIZATION_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    filled-new-array {v0, v1}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 415
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    const/4 v1, 0x0

    const/16 v2, 0x818

    const-string v3, "NOTIFICATION_BUNDLE_PREFERENCES_PULLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->NOTIFICATION_BUNDLE_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    .line 417
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    const/4 v1, 0x1

    const/16 v2, 0x8c5

    const-string v3, "NOTIFICATION_SUMMARIZATION_PREFERENCES_PULLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->NOTIFICATION_SUMMARIZATION_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    .line 414
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->$values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 422
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->mId:I

    return-void
.end method

.method public static adjustmentKeyEnum(Ljava/lang/String;)I
    .registers 2

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const-string v0, "key_summarization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "key_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x2

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
    .registers 2

    .line 414
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
    .registers 1

    .line 414
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 425
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->mId:I

    return p0
.end method
