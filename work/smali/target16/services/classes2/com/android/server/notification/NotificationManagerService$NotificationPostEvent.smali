.class final enum Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;
.super Ljava/lang/Enum;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

.field public static final enum NOTIFICATION_POSTED_CACHED:Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;
    .registers 1

    .line 2772
    sget-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->NOTIFICATION_POSTED_CACHED:Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    filled-new-array {v0}, [Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 2773
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    const/4 v1, 0x0

    const/16 v2, 0x8bd

    const-string v3, "NOTIFICATION_POSTED_CACHED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->NOTIFICATION_POSTED_CACHED:Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    .line 2772
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->$values()[Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->$VALUES:[Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 2778
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2779
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;
    .registers 2

    .line 2772
    const-class v0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;
    .registers 1

    .line 2772
    sget-object v0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->$VALUES:[Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 2784
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->mId:I

    return p0
.end method
