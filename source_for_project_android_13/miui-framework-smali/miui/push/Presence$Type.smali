.class public final enum Lmiui/push/Presence$Type;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/push/Presence$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/push/Presence$Type;

.field public static final enum blacklist available:Lmiui/push/Presence$Type;

.field public static final enum blacklist error:Lmiui/push/Presence$Type;

.field public static final enum blacklist probe:Lmiui/push/Presence$Type;

.field public static final enum blacklist subscribe:Lmiui/push/Presence$Type;

.field public static final enum blacklist subscribed:Lmiui/push/Presence$Type;

.field public static final enum blacklist unavailable:Lmiui/push/Presence$Type;

.field public static final enum blacklist unsubscribe:Lmiui/push/Presence$Type;

.field public static final enum blacklist unsubscribed:Lmiui/push/Presence$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 305
    new-instance v0, Lmiui/push/Presence$Type;

    const-string v1, "available"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    .line 310
    new-instance v1, Lmiui/push/Presence$Type;

    const-string v3, "unavailable"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/push/Presence$Type;->unavailable:Lmiui/push/Presence$Type;

    .line 315
    new-instance v3, Lmiui/push/Presence$Type;

    const-string v5, "subscribe"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiui/push/Presence$Type;->subscribe:Lmiui/push/Presence$Type;

    .line 320
    new-instance v5, Lmiui/push/Presence$Type;

    const-string v7, "subscribed"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiui/push/Presence$Type;->subscribed:Lmiui/push/Presence$Type;

    .line 325
    new-instance v7, Lmiui/push/Presence$Type;

    const-string v9, "unsubscribe"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmiui/push/Presence$Type;->unsubscribe:Lmiui/push/Presence$Type;

    .line 330
    new-instance v9, Lmiui/push/Presence$Type;

    const-string v11, "unsubscribed"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmiui/push/Presence$Type;->unsubscribed:Lmiui/push/Presence$Type;

    .line 335
    new-instance v11, Lmiui/push/Presence$Type;

    const-string v13, "error"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lmiui/push/Presence$Type;->error:Lmiui/push/Presence$Type;

    .line 340
    new-instance v13, Lmiui/push/Presence$Type;

    const-string v15, "probe"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lmiui/push/Presence$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lmiui/push/Presence$Type;->probe:Lmiui/push/Presence$Type;

    .line 300
    const/16 v15, 0x8

    new-array v15, v15, [Lmiui/push/Presence$Type;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lmiui/push/Presence$Type;->$VALUES:[Lmiui/push/Presence$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lmiui/push/Presence$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 300
    const-class v0, Lmiui/push/Presence$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/push/Presence$Type;

    return-object v0
.end method

.method public static blacklist values()[Lmiui/push/Presence$Type;
    .registers 1

    .line 300
    sget-object v0, Lmiui/push/Presence$Type;->$VALUES:[Lmiui/push/Presence$Type;

    invoke-virtual {v0}, [Lmiui/push/Presence$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/Presence$Type;

    return-object v0
.end method
