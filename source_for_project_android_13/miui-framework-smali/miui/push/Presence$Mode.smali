.class public final enum Lmiui/push/Presence$Mode;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/push/Presence$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/push/Presence$Mode;

.field public static final enum blacklist available:Lmiui/push/Presence$Mode;

.field public static final enum blacklist away:Lmiui/push/Presence$Mode;

.field public static final enum blacklist chat:Lmiui/push/Presence$Mode;

.field public static final enum blacklist dnd:Lmiui/push/Presence$Mode;

.field public static final enum blacklist xa:Lmiui/push/Presence$Mode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 351
    new-instance v0, Lmiui/push/Presence$Mode;

    const-string v1, "chat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Mode;->chat:Lmiui/push/Presence$Mode;

    .line 356
    new-instance v1, Lmiui/push/Presence$Mode;

    const-string v3, "available"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    .line 361
    new-instance v3, Lmiui/push/Presence$Mode;

    const-string v5, "away"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiui/push/Presence$Mode;->away:Lmiui/push/Presence$Mode;

    .line 366
    new-instance v5, Lmiui/push/Presence$Mode;

    const-string v7, "xa"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiui/push/Presence$Mode;->xa:Lmiui/push/Presence$Mode;

    .line 371
    new-instance v7, Lmiui/push/Presence$Mode;

    const-string v9, "dnd"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmiui/push/Presence$Mode;->dnd:Lmiui/push/Presence$Mode;

    .line 346
    const/4 v9, 0x5

    new-array v9, v9, [Lmiui/push/Presence$Mode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lmiui/push/Presence$Mode;->$VALUES:[Lmiui/push/Presence$Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lmiui/push/Presence$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 346
    const-class v0, Lmiui/push/Presence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/push/Presence$Mode;

    return-object v0
.end method

.method public static blacklist values()[Lmiui/push/Presence$Mode;
    .registers 1

    .line 346
    sget-object v0, Lmiui/push/Presence$Mode;->$VALUES:[Lmiui/push/Presence$Mode;

    invoke-virtual {v0}, [Lmiui/push/Presence$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/Presence$Mode;

    return-object v0
.end method
